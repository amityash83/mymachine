# My Machine
[![Build Status](https://travis-ci.org/amityash83/mymachine.svg?branch=master)](https://travis-ci.org/amityash83/mymachine)


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

*See also*:
  - [osxc](https://github.com/spencergibb/ansible-osx)
  - [using-ansible-to-automate-my-macbook-setup](https://daemonza.github.io/2017/03/06/using-ansible-to-automate-my-macbook-setup/
  )
  - [setupmac](https://github.com/daemonza/setupmac)
  
