g++ convert.cpp -o convert
./convert $1 $2
awk -f create.awk $2 >awktest.csd
g++ -I/usr/include/csound soundcpp.cpp -o soundcpp -lcsound64 -lcsnd6
./soundcpp awktest.csd
