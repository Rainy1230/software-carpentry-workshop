echo cleaning up
rm *.txt
rm *.tmp
rm *.csv

echo Download Data
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -L

echo Unpack Data
unzip rawdata.zip
rm rawdata.zip

rm *.tmp

for f in *txt
do
    mv $f ${f/txt/csv}
done

echo Available files
ls *.csv