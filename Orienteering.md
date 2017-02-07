# Introduction to Unix shell - Orienteering

* 2016/17 Part III Systems Biology SEB module
* 8 Feb 2017, 10:00-13:00
* Bioinformatics Training Room, Craik-Marshall Building, Downing Site
* Alexey Morgunov

---
### Introduction

This extended exercise is intended as a way to familiarise yourself with (or refresh your memory of) the most basic commands in shell. Work through the commands sequentially, trying to understand exactly what's happening at each step and answering the questions. Refer to [Notes](Notes1.md) for help.

---
### Orienteering

Try the following commands (one command per line) to learn to navigate around your file system. Explore! N.B. The commands are not listed in any particular order in this section.

```bash
pwd
ls
cd [folder name]
ls -l     # what useful information is displayed here?
man ls    # hit <q> to exit, <space> to move down one page
ls -lht
cd ..
cd ~
cd -
cd .
```

Come back to some cosy home directory where you can play around without wreaking havoc on your computer. N.B. The commands in this section are listed in the order of suggested execution. Make sure you understand what is happening in each line and can answer the questions!

```bash
mkdir sandbox
cd sandbox
echo 'Hello, world!' > hello.txt
cp hello.txt ../hello.txt.copy    # where is the copied file? where is the original?
cp -r ../sandbox ../sandbox2         # you don't have to be in the same directory as the file/folder
mv hello.txt ../hello.txt.copy2   # and now?
# how would you rename a file?
cd ..
rm hello.txt.copy2
rmdir sandbox
rmdir sandbox2    # why does this not work unlike the one above?
rm -r sandbox2
find . -name '*txt*'
find . -name '*txt*' -delete
```



---
### License

Many of the shell scripting exercises are taken from [Linux Shell Scripting Tutorial (LSST) v2.0](https://bash.cyberciti.biz/guide/Main_Page) under a CC-BY-NC-SA license.

This material is released under a
[CC-BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/) ![license](https://licensebuttons.net/l/by-nc-sa/3.0/88x31.png).
