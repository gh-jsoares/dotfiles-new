
# Ansible Vault
The `values.yml` file contains variables which are required and used by the ansible playbooks.
Some of these values contain sensitive information which means they need to be encrypted.
To achieve this, we rely on ansible vault.
The following commands will help you getting started.

```bash
# create the vault password file
echo MY_SECRET_PASSWORD > vault.password

# command to encrypt a single variable
ansible-vault encrypt_string --vault-password-file vault.password --name MY_SECRET_VARIABLE THIS_IS_THE_SECRET_VARIABLE_VALUE

# command to encrypt a single variable from stding
ansible-vault encrypt_string --vault-password-file vault.password --stdin-name 'MY_SECRET_VARIABLE_FROM_STDIN'
# example
cat ~/.ssh/id_rsa | ansible-vault encrypt_string --vault-password-file vault.password --stdin-name 'ssh_key'

# command to view the decrypted value of a vault variable
ansible localhost -m ansible.builtin.debug -a var="MY_SECRET_VARIABLE" -e @values.yml --vault-password-file vault.password
```

# Ansible Roles

## Rust dependencies
To install some packages, we need to first install rust.
Luckily, ansible allows us to define role dependencies so that they are executed first.
Unfortunately, ansible cannot source the changes from the `.bashrc` file, which means it has to be sourced manually and the `bin/dotfiles` script needs to be run again after sourcing the environment changes.

```bash
# install rust firts
./bin/dotfiles --tags rust

# source .bashrc manually
source ~/.bashrc

# install desired package dependant on rust
./bin/dotfiles --tags PACKAGE
```
