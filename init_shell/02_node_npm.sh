echo "apt update実行....."
apt-get update
echo "apt update終了....."

echo "nodejs npm install実行....."
apt install -y nodejs npm
echo "nodejs npm install実行....."

echo "node version 指定"
npm install n -g
n lts
echo "node version 指定"

echo "古いバージョンパージ"
apt purge -y nodejs npm
apt autoremove -y
echo "古いバージョンパージ終了"

echo "node -v"
node -v

echo "npm -v"
npm -v