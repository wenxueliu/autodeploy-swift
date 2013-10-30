#! /bin/sh

#follow thress sentences, you can execute the script in dir modules
#directly. such . creat_ring.sh which in dir modules
realpath=$(readlink -f "$0")
basedir=$(dirname "$realpath")
export PATH=$PATH:$basedir/modules


create_ring 18 2 1
#add_ring z1 10.1.2.111 sdb1 100
add_ring z2 10.1.2.113 sdb1 100
add_ring z3 10.1.2.114 sdb1 100
rebalance_ring
show_ring
