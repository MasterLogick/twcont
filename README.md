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
sudo ./twcont.sh 100M
```

will create a container with 100 megabytes of disk.

Container is auto-removed after exit.