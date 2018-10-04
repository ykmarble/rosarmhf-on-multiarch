# rosarmhf-on-multiarch

## Usage

```shell
$ sudo apt-get install qemu-user-static
$ git clone --depth 1 https://github.com/ykmarble/rosarmhf-on-multiarch.git
$ cd rosarmhf-on-multiarch
$ sudo docker build -t rosarmhf-on-multiarch:kinetic .
$ sudo docker run -it rosarmhf-on-multiarch:kinetic /bin/bash
```

