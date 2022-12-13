# Vagrant+Prometrheus+Grafana

Разворачивание VM Ubuntu20.04 через Vaпgrant VirtualBox.

# Клонирование репозитория.
git clone -b main https://github.com/DmitriyKlyuchnikov52/vagrant_prometrheus.git

# Запуск Vagrantfile
cd vagrant_prometrheus $ vagrant up

# Подключится на виртуальную машину.
Проверяем конфиг "vagrant ssh-config"
Подключаеся по ssh "vagrant ssh prometheus"
Пользователь "vagrant" в группе "docker" проверяем контейнеры "docker ps -a"
Путь к папке с репо "ls -a /vagrant/"


