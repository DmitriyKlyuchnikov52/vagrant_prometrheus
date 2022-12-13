def which(cmd)
    exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
    ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each { |ext|
            exe = File.join(path, "#{cmd}#{ext}")
            return exe if File.executable? exe
        }
    end
    return nil
end

Vagrant.configure("2") do |config|

    config.vm.provider :virtualbox do |v|
        v.name = "Project_Klyuchnikov"
        v.customize ["modifyvm", :id, "--memory", 4096]
    end

    config.vm.box = "generic/ubuntu2004"
    config.vm.box_download_insecure=true
    config.vm.network :private_network, ip: "192.168.10.50"
    config.vm.network :forwarded_port, host: 3000, guest: 80
    config.vm.network :forwarded_port, host: 9090, guest: 80
    config.ssh.forward_agent = true
    config.vm.define "prometheus"
    config.vm.hostname = "prometheus"


    if which('ansible-playbook')
        config.vm.provision "ansible" do |ansible|
            ansible.playbook = ".ansible/docker.yml"
            ansible.inventory_path = ".ansible/inventory"
            ansible.limit = 'all'
            ansible.extra_vars = { ansible_connection: 'ssh', ansible_ssh_args: '-o ForwardAgent=yes' }
        end
    else
        config.vm.provision :shell, path: ".ansible/ansible.sh"
    end

    config.vm.synced_folder '.', '/vagrant', :mount_options => ["dmode=777", "fmode=777"]
end
