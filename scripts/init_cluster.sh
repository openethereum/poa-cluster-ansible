export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook make_cluster.yml -vvvv -i group_vars/inventory/cluster
