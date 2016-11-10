export ANSIBLE_HOST_KEY_CHECKING=False

distro=alpine

ansible-playbook install_python_${distro}.yml -vvvv -i group_vars/inventory/cluster
