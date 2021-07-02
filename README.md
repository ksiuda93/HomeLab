# HomeLab
The homeLab repository 

# Raspberry Pi - microSDHC preparation

* Download Raspberry Pi Imager and burn microSDHC card using `Raspberry Pi OS Lite (32-bit)` image.
* Add following headless changes within microSDHC card:
    * `touch ssh` <- Enable SSH agent on Raspberry Pi with following credentials `raspberry:pi`
    * Enable cgroups in `/boot/cmdline.txt` adding `cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory` <- handled by Ansible playbook `001-init-servers.yaml`
* Setup static IP Addresses using DHCP option on your router.


## Ansible

Ansible tool is wrapped into docker container to ommit installation the tool of the local machine. To start using ansible exchange the ssh keys between host and servers using ssh-copy-id. !!TODO script.

Directory structure:
* `workdir/config/ansible.cfg` -> ansible configuration file used to disable deprecated warnings.
* `inventory` -> contains the cluster RPi hosts
* `workdir` -> directory shared with the ansible container contains the playbooks.

Playbook specifications:
* `001-init-servers.yaml` -> Playbook used to configure the OS Lite to handle the k3s cluster.
* `002-init-docker.yaml` -> Playbook for docker installation on cluster.
* `003-init-k3s-master.yaml` -> Playbook for k3s master installation.
* `004-init-k3s-workers.yaml` -> Playbook for adding the worker nodes to the master node.

## K3S

[The K3S documentation](https://rancher.com/docs/k3s/latest/en/)

Directory structure:
* `k3s-config` -> directory contains the kubectl config file fetched from remote master node by Ansible `003-init-k3s-master` playbook. 
* `MetalLB` -> directory with MetalLB service to handle the LoadBalancer service on baremetal cluster. [MetalLB](https://metallb.universe.tf/) 
* `Flux` -> GitOps tool [Flux](https://fluxcd.io/)
