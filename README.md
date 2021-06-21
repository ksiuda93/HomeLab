# HomeLab
The homeLab repository 

# Raspberry Pi - microSDHC preparation

* Download Raspberry Pi Imager and burn microSDHC card using `Raspberry Pi OS Lite (32-bit)` image.
* Add following headless changes within microSDHC card:
    * `touch ssh` <- Enable SSH agent on Raspberry Pi with following credentials `raspberry:pi`
    * Enable cgroups in `/boot/cmdline.txt` adding `cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory`
* Setup static IP Addresses using DHCP option on your router.


## Ansible

Ansible tool is wrapped into docker container to ommit installation the tool of the local machine. 

Direcotry structure:
* `inventory` -> contains the cluster hosts
* `workdir` -> directory shared with the ansible container contains the playbooks.
