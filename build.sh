mkdir tmp

sed -re "s/_/______/g" ./questions.txt > ./tmp/_questions.txt
sed -re "s/.*/\t\t\t<section>&<\/section>/g" ./tmp/_questions.txt > ./tmp/questions.txt
sed -re "s/.*/\t\t\t<section>&<\/section>/g" ./answers.txt > ./tmp/answers.txt



cp ./partials/header.html ./tmp/cards.html
cat ./tmp/questions.txt >> ./tmp/cards.html
cat ./partials/middle.html >> ./tmp/cards.html
cat ./tmp/answers.txt >> ./tmp/cards.html
cat ./partials/footer.html >> ./tmp/cards.html

cp ./tmp/cards.html ./output/cards.html

rm -rf tmp