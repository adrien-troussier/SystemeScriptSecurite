read -p "Tapez sur 1 pour mettre a jours vos application : " maj
sudo apt-get update -y
if [ $maj = 1 ]
then
sudo apt-get upgrade -y
else
echo "Vous ne voulez pas mettre à jours vos application"
fi
