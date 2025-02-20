
> Fork from: [openstack-securitygroup-grapher](https://github.com/jeanlouisferey/openstack-securitygroup-grapher)

## Visualize your security groups

This is an [Ansible](https://docs.ansible.com/ansible/latest/) playbook which will generate a visual representation of your [Fuga Cloud](https://fuga.cloud) security groups + instances.

The contents in this repo are mostly from [Jean-Louis Ferey's openstack-securitygroup-grapher
](https://github.com/jeanlouisferey/openstack-securitygroup-grapher) but with adjustements specific to Fuga Cloud.

For gathering information about the instances an Ansible OpenStack module is used named [`os-user-facts`](https://docs.ansible.com/ansible/latest/modules/os_user_facts_module.html#os-user-facts-module)

For gathering information about the security groups Jean-Louis has wrote a module for Ansible which can be found in the `library/` directory.

### Getting Started
1. Run `install_dependencies.sh` to install `pip`, [`shade`](https://pypi.org/project/shade/), `ansible` and [`graphviz`](https://graphviz.org/)
2. Add your clouds.yaml
    - Found on the [Fuga Cloud Dashboard](https://my.fuga.cloud) under **Account->Access**; your clouds.yaml specifies where to look for the security groups, instances etc.
3. Take a look into `vars/main.yaml`:
    - `osggrapherShowDefault`: want to include the default security group in your drawing?
    - `osggrapherShowInstances`: want your instances to be drawn? (like one of your french girls)
    - `osggrapherDotFileToRender`: where to output the `.dot` file?
    - `osggrapherFileToRender`: where to output the `.png` file?
    - `osggrapherRankdir`: [what direction should the layout of the drawing be?](https://www.graphviz.org/doc/info/attrs.html#d:rankdir)
4. Run `ansible-playbook playbook.yaml`

### Or with docker-compose
1. Git clone
2. Place the clouds.yaml in the root of the cloned folder
3. Run `docker-compose up`
4. Your graph is in the openstack-securitygroup-visualizer folder
5. PROFIT! :tada: :cake:
