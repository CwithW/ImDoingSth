# ImDoingSth

A simple shell script to prevent certain VPS provider from recycling your "Idle" VPS instance.

### Usage

```bash
# for Ubuntu
apt install -y cpulimit
# for Centos and Oracle Linux, you need to compile and install `cpulimit` yourself.
# You may follow this article: https://www.vultr.com/docs/how-to-install-and-use-cpulimit-on-centos-7/

git clone https://github.com/CwithW/ImDoingSth.git
cd ImDoingSth
bash start.sh
```

You should register a cron job to auto start the script at machine reboots.
```cron
@reboot cd /path/ImDoingSth; bash start.sh
```