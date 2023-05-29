Vagrant.configure("2") do |config|

  # 開始メッセージ
  config.vm.provision "shell", path: "./init_shell/01_start.sh", run: "always"

  # virtualbox指定
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.box_version = "202303.13.0"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
    vb.memory = "2048"
    vb.cpus = 1
    # vb.gui = true

  end

  # config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./workspace", "/home/vagrant/workspace", create: true, mount_options: ["rw", "dmode=777", "fmode=666"]

  # vscode-settingsの反映
  config.vm.provision "file" do |file|
    file.source = "./vscode-setting/settings.json"
    file.destination = "/home/vagrant/.vscode/settings.json"
  end

  # vscode-extensionの反映
  config.vm.provision "file" do |file|
    file.source = "./vscode-setting/extensions.json"
    file.destination = "/home/vagrant/.vscode/extensions.json"
  end


  # # # 各種コマンドインストール、設定
  config.vm.provision "shell", path: "./init_shell/02_node_npm.sh", run: "always"
  config.vm.provision "shell", path: "./init_shell/03_timezone.sh", run: "always"

  # # # 終了メッセージ
  config.vm.provision "shell", path: "./init_shell/999_end.sh", run: "always"
end