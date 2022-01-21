if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/EnolaHomles/Enola-Holmes
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Enola-Holmes
fi
cd /Enola-Holmes
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
