Vagrant.configure("2") do |config|

  # 開始メッセージ
  config.vm.provision "shell", path: "./init_shell/01_start.sh", run: "always"

  config.vm.box = "ubuntu/focal64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname = "my-machine"
  config.vm.provider "virtualbox" do |vb|
      # vb.cpus = "4"
      # vb.memory = "4096"
      vb.name = "development"
      vb.gui = true
    end

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

  # フォルダマウント
  config.vm.synced_folder "./workspace", "/home/vagrant/workspace"

  # 各種コマンドインストール、設定
  config.vm.provision "shell", path: "./init_shell/02_node_npm.sh", run: "always"
  config.vm.provision "shell", path: "./init_shell/03_timezone.sh", run: "always"

  # 終了メッセージ
  config.vm.provision "shell", path: "./init_shell/999_end.sh", run: "always"
end