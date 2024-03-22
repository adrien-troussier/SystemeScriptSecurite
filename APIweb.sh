echo "Choose a date and get a picture of the day by NASA"
read -p "Year : " year
read -p "Month : " month
read -p "Day : " day
data=$(curl "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=$year-$month-$day"
-s)
logger "(API NASA) Request
https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=$year-$month-$day"
logger "(API NASA) Reponse $data"
# Rate limit
error=$(echo $data | jq .error.message)if [ "$error" != "null" ]
then
echo -e "\033[31mErreur $error"
exit
fi
# Invalid date
error=$(echo $data | jq .msg)
if [ "$error" != "null" ]
then
echo -e "\033[31mErreur $error"
else
echo $data | jq .explanation
fi

