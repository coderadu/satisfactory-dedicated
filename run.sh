#! /bin/bash

if ! test -f steamcmd.sh; then
  echo Installing steamcmd
  curl -q "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" -o steamcmd.tar.gz
  tar -xf steamcmd.tar.gz
  rm steamcmd.tar.gz
  echo "Done"
fi

./steamcmd.sh +login anonymous +force_install_dir /server/config/gamedata +app_update 1690800 -beta experimental +quit
echo Starting server
chmod a+rwx -R /server
mkdir -p /home/server/.config/Epic/FactoryGame/Saved/SaveGames/server
chmod a+rwx -R /home/server/.config
cp -a /server/config/saves /server/config/backups
rm -rf /home/server/.config/Epic/FactoryGame/Saved/SaveGames/server
ln -s /server/config/saves /home/server/.config/Epic/FactoryGame/Saved/SaveGames/server
cd /server/config/gamedata
su server -c ./FactoryServer.sh