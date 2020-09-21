setup_files=$(cd "$(dirname $0)"; pwd)

for f in $setup_files/setup/*
do
    bash install $f
done