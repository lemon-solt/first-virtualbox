echo "step1: nodeインストール...."
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# インストールしたバージョンの確認
node -v
npm -v

echo "step1: end..."