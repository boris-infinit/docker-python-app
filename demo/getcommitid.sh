touch /work/$1/commitid.txt
git -C /work/$1 rev-parse HEAD > /work/$1/commitid.txt
ls /work
ls /work/$1
cat /work/$1/commitid.txt