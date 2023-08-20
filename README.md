# usb-connection-checker
Ansible роль для проверки подключения USB устройства к удаленным хостам

Проект протестирован на:
+ ansible 2.9.27
+ CentOS 7 (с графической оболочкой)


Процесс настройки для хостовой машины:
```sh
sudo yum install ansible
git clone https://github.com/Dvorfin/usb-connection-checker
```

Команда для запуска:
```sh
ansible-playbook pl.yaml -i inventory.yaml
```
