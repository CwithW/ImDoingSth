# ImDoingSth

A simple shell script to prevent certain VPS provider from recycling your "Idle" VPS instance, by keep CPU utilization for the 95th percentile not less than 10%.

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

crontab -e

```cron
@reboot cd /path/ImDoingSth; bash start.sh
```



## Additional useful scripts

#### Keep Network utilization not less than 10%

needs curl

fetch 1GB.bin on 00:00 every day

crontab -e

```crontab
0 0 * * * curl -o /dev/null https://speed.hetzner.de/1GB.bin
```



#### Keep Memory utilization not less than 10% (applies to A1 shapes only)

needs python3

This takes ~9.8G of ram.

crontab -e

```bash
@reboot python3 -c 'a="a"*10240000000;__import__("signal").pause()'
```

