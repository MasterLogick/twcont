# twcont - Total Virtualization CONTainer

This is a simple implementation of a process isolation using linux namespaces, cgroups and
chroot. Only [Busybox](https://www.busybox.net/) is included inside, so images are lightweight and small(2MB min)!!!

## Usage

```shell
sudo ./twcont.sh [SIZE]
```

where `SIZE` is a size of container disk file. `SIZE` is the same as
for [truncate(1)](https://www.man7.org/linux/man-pages/man1/truncate.1.html) `--size=` parameter.

For example

```shell
sudo ./twcont.sh 10M
```

will create a container with 10 megabytes of disk.

All containers are stored in tmp folder and auto-removed after exit.

## Internals

This script actually consists of four parts:

1. Disk setup using temporary file, temporary dir, `losetup`, `mkfs.ext4`, and `mount`
2. Busybox setup
3. `unshare` call and container enter
4. Cleanup