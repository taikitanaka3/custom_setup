download_files=$(cd "$(dirname $0)"; pwd)

for f in $install_files/install/*
do
    bash install $f
done
