# Parity Cluster Ansible

A collection of Ansible scripts used in setting up a cluster of Parity nodes.

Currently allows to set up a Docker Swarm Mode cluster on a number of target hosts.

## Usage

Provision a few hosts in a cloud of your choice or locally, using VirtualBox or similar software. Take note of their ip addresses, usernames and make sure you have ssh access to these machines.

Populate `group_vars/inventory/cluster` with the IP addresses, appointing one to be the manager (multiple managers currently not supported) and the others as workers, e.g.

```
[manager]
1.2.3.4
[worker]
5.6.7.8
9.10.11.12
13.14.15.16
```

If the ssh username is not "root", then you can specify it like this, also in the inventory file:

```
1.2.3.4 user=my_username
```

To configure Docker Swarm, run

```
scripts/init_cluster.sh
```

This should initialise a new Docker Swarm and connect all listed hosts into a single cluster.

## Notes

* All target hosts have to be running Ubuntu 16.04
* A seriously awesome 4-part tutorial on Docker Swarm Mode: https://lostechies.com/gabrielschenker/2016/09/05/docker-and-swarm-mode-part-1/

