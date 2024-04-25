#!/usr/bin/env bash

if (( $# != 1 )); then
    >&2 echo "Illegal number of parameters."
    >&2 echo "Usage: $0 [DISK_SIZE]"
    exit 1
fi

disk_file=$(mktemp)

truncate "--size=$1" "$disk_file"

echo "Prepared temp file $disk_file of size $1 for filesystem"

lo_device=$(losetup -f --show "$disk_file")

echo "Mounted loop device at $lo_device"

mkfs.ext4 "$lo_device" > /dev/null 2> /dev/null

mount_point=$(mktemp -d)

mount "$lo_device" "$mount_point"

echo "Created and mounted ext4 filesystem at $mount_point"

cp busybox "$mount_point/busybox"
#wget -O "$mount_point/busybox" "https://www.busybox.net/downloads/binaries/1.35.0-x86_64-linux-musl/busybox" > /dev/null 2>/dev/null

chmod +x "$mount_point/busybox"

for path in $("$mount_point/busybox" --list-full);
do
  mkdir -p "$(dirname "$mount_point/$path")"
  ln -P "$mount_point/busybox" "$mount_point/$path"
done

echo "Installed all busybox applets"

mkdir "$mount_point/proc"

unshare --mount --net --pid --cgroup --fork --map-root-user --mount-proc --root="$mount_point" /bin/sh

# Cleanup

umount "$mount_point"
losetup -d "$lo_device"
rm "$disk_file"
rm -r "$mount_point"
