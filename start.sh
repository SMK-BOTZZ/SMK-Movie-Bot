if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SMK-BOTZZ/SMK-Movie-Bot.git /SMK-Movie-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SMK-Movie-Bot
fi
cd /SMK-Movie-Bot
pip3 install -U -r requirements.txt
echo "Starting SMK-Movie-Bot...."
python3 bot.py
