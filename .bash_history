apt list --upgradable
clear
/home c
/home cd
/home# cd
echo ~
ls
sudo apt install tree
exit
mkdir lab2
cd lab2
tree
mkdir /ex1
mkdir ex1
tree
mkdir ex2
tree
cd ex1
mkdir etc
touch ex1_command_history.txt
tree
mkdir home
touch result.txt
cd ..
cd ex2
touch ex2_command_history.txt
cd ..
cd ex1
cd etc
mkdir network
mkdir systemd
mkdir udev
cd network
mkdir interfaces
cd etc
cd ..
cd systemd
touch resolve.conf
mkdir system
touch system.conf
mkdir user
touch user.conf
cd ..
cd udev
mkdir rules.d
touch udev.conf
cd ..
tree
cd ex1
cd home
mkdir lost+found
mkdir user
cd user
mkdir Documents
cd ..
tree
cd ..
history
history >lab2/ex1/ex1_command_history.txt
tree
mkdir Desktop
cd Desktop
mkdir TPOS
cd ..
mkdir Document
cd Document
mkdir TP01
cd TP01
touch file.txt
cd ..
tree
touch file 1
mkdir lab1
mv file 1 file1
tree
mv file file1
tree
cd lab1
mkdir labFiles
cd labFiles
touch doc1.txt
touch doc2.txt
cd ..
tree
rm 1
tree
cd ~
cd /root/Desktop/TPOS
cd /Desktop/TPOS
cd Desktop
cd TPOS
cd ../Doc1
cd ..
echo "HEEE YOO" > Document/TP01/file.txt
nano Document/TP01/file.txt
cd Desktop
cd ..
cd Documents
cd Document
cd TP01
cat file.txt
cd ..
history
history > lab2/ex2/ex2_command_history.txt
exit
ls
cd .
ls *.txt
cd ./Desktop
ls *.txt
cd .
cd ..
cd ./lab1
ls *.txt
ls
cd./labfiles
cd ./labfiles
cd ./labFiles
ls
cd ../
cd ../.
ls
tree
mkdir lab3
cd lab3
mkdir CopyingFolder
mkdir Desktop
mkdir Documents
mkdir MoveFolder
mkdir wildcard_lab
mkdir backup
mkdir logs
mkdir link_lab
ls
tree
cd CopyingFolder
touch {copied,one,two,three,four,five}.txt
ls
cd ..
tree
cd Desktop
mkdir FrenchFolder
cd FrenchFolder
touch {document_un.document_trios,document_quatre,document_cinq}.txt
ls
cd ../
cd ../.
tree
cd Desktop/FrenchFolder
rm document_un.document_trios.txt
ls
touch {document_un,document_trios}.txt
ls
cd ../.
cd ../..
cd lab3
cd wildcard_lab
touch file{1,2,3,4,5}.{txt}
ls
rm file1.{txt}
re file2.{txt}
rm file2.{txt}
rm file{3,4,5}.{txt}
ls
touch file{1,2,3,4,5}.txt
ls
touch {1,2,3}file.txt
ls
touch {ab,abc}.txt
ls
touch xyz.log
touch data.csv
ls
cd ../..
cd lab3
tree
cd logs
touch log2023010{1,2,3,4,5}.txt
ls
cd ../
cd link_lab
touch {original,hardlink}.txt
ls
cd ../.
tree
cd ..
rm lab3
rm -r lab3
mkdir lab 3
cd lab3
mv lab3 lab 3
mv lab 3 lab3
rm -r lab 3
ls
mkdir lab3
cd lab3
mkdir CopyingFolder
touch copied.txt
ls
mkdir Documents
cp copied.txt ~/Documents
tree
cp copied.txt ~/Documents
tree
/lab3 cp copied.txt ~/Documents 
cd ..
tree
/lab3 cp copied.txt ~/Documents
./lab3 cp copied.txt ~/Documents
cd lab3
cp copied.txt ~/Documents
ls
cp copied.txt ~/Documments/
tree
cp copied.txt ~/Documents/
rm copied.txt
tree
cd CopyingFolder
touch copied.txt
cd ..
/CopyingFolder cp copied.txt ~/Documents
CopyingFolder cp copied.txt ~/Documents
cp copied.txt ~/Documents
cd CopyingFolder
cp copied.txt ~/Documents
ls
cd ..
tree
./CopyingFolder cp copied.txt ~/Documents/
cd CopyingFolder
cd ..
cp /CopyingFolder/copied.txt ~/Documents/
cp CopyingFolder/copied.txt Documents/
tree
cd Documents
touch {one,two,three,four,five}.txt
ls
cd ..
cp Documents/{one,two,three,four,five}.txt CopyingFolder/
tree
mkdir Desktop
cp CopyingFolder/ Desktop/
tree
cp -r CopyingFolder/ Documents/
tree
cd Documents
rm -r CopyingFolder
cd ..
tree
cp -r CopyingFolder/ Desktop/
tree
cd Documents
touch {one,two,three,four,five}_document.txt
ls
cd one_document.txt
tree
echo 1 > one_document.txt
echo 2 > two_document.txt
echo 3 > three_document.txt
echo 4 > four_document.txt
echo 5 > five_document.txt
mv {one,two,three,four,five}_document.txt document_{un,deux,trios,quatre,cinque}.txt
tree
mv one_document.txt document_un.txt
tree
mv {two,three}_document.txt document_{deux,trios}.txt
mv two_document.txt document_deux.txt
mv three_document.txt documen_trios.txt
mv four_document.txt document_quatre
tree
mv document_quatre document_quatre.txt
