# My Machine
My Machine setups

This is a [Ansible](https://www.ansible.com/) playbook to quickly setup my Mac

To setup run the following command :
```
curl -s https://raw.githubusercontent.com/amityash83/mymachine/master/setup.sh | /bin/bash
```

If you already have ansible installed or prefer running it directly, execure the following :
```
ansible-playbook -i ./hosts playbooks/main.yml --verbose
```

#### Uninstall
If you want to undo all the changes that `setupmac` did, run 

```
setup.sh uninstall
```

