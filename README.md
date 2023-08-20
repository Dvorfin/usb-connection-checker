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


Скриншоты работы скрипта:

![image](https://github.com/Dvorfin/usb-connection-checker/assets/70969469/020de2cd-d4e4-48be-be47-369adfcbb6cf)


![image](https://github.com/Dvorfin/usb-connection-checker/assets/70969469/82a7b8d9-067b-4477-92d7-8d688aeadfb8)


![image](https://github.com/Dvorfin/usb-connection-checker/assets/70969469/62ce691f-477b-4a38-9707-5264623cdc44)

