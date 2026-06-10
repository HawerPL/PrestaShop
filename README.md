# PrestaShop
Repozytorium pod wdrożenie PrestaShop z użyciem docker compose, ansible i helm charta.


### Docker compose

## Budowa obrazu

```bash
docker compose build
```

## Uruchomienie

```bash
docker compose up -d
```

### Ansible

```bash
ansible-vault encrypt ansible/group_vars/all/vault.yml
ansible-playbook deploy-docker.yml -i inventory.yml --ask-vault-pass
```