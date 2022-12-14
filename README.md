# Vagrant+Prometrheus+Grafana.

login:    admin
Password: grafana321

Grafana v9.3.1     http://localhost:3000/ 
Dashboard          http://localhost:3000/d/rYdddlPWk/node-exporter-full?orgId=1 

Prometheush v2.40.6        http://localhost:9090/
Проверяем Endpoint         http://localhost:9090/targets?search=

# Разворачивание VM Ubuntu20.04 через Vaпgrant VirtualBox.

# Клонирование репозитория.
git clone -b main https://github.com/DmitriyKlyuchnikov52/vagrant_prometrheus.git

# Запуск Vagrantfile
cd vagrant_prometrheus $ vagrant up

# Подключится на виртуальную машину.
Проверяем конфиг "vagrant ssh-config"

Подключаеся по ssh "vagrant ssh prometheus"

Пользователь "vagrant" в группе "docker" проверяем контейнеры "docker ps -a"

Путь к папке с репо втунтри вм "ls -a /vagrant/"

# Перечитать конфиг прометеус после редактирование. 
docker ps | grep prometheus

docker kill -s SIGHUP [имя контейнера или id]

# Удаляем VM
vagrant destroy -f

