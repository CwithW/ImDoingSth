# ImDoingSth

A simple shell script to prevent certain VPS provider from recycling your "Idle" VPS instance.

### Usage

```bash
# for Ubuntu
apt install -y cpulimit
# for Centos and Oracle Linux, you need to install `cpulimit` yourself.

git clone https://github.com/CwithW/ImDoingSth.git
cd ImDoingSth
bash start.sh
```