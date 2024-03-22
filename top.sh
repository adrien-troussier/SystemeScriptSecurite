top -b -n 1 | sed -r 's/[[:blank:]]+/,/g' > top.csv
sed -i '1,6d' top.csv
sed -i 's/,//' top.csv

