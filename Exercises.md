# Introduction to Unix shell - EXERCISES

* 2015/16 Part III Systems Biology SEB module
* 10 Feb 2016, 10:00-13:00
* Bioinformatics Training Room, Craik-Marshall Building, Downing Site
* Avazeh Ghanbarian, Alexey Morgunov

## Contents

1. [Awk](#exercises---awk)
2. [Shell scripting](#exercises-shell---scripting)

---
### Exercises - Awk

1. How many genes are in the [`reference genome`](exercises/Homo_sapiens.GRCh38.83.gtf.gz)? Don't forget to unpack the file.
2. How many transcripts your favourite gene has, e.g. ENSG00000001461?
3. How many exons?
4. Which exon is the longest?
5. Using the annotation file, print odd lines.
6. Make a file of the transcriptIDs annotated by Havana.
7. Produce a tab separated file with these columns: transcriptID, exon_number, exon_length.

---
### Exercises - Shell scripting

1. Write a shell script that allows a user to enter his or her top three ice cream flavors. Your script should then print out the name of all three flavors.
2. Write a shell script that allows a user to enter any existing file name. The program should then copy file to /tmp directory. An advanced solution would check whether the file exists.
3. Write a simple shell script where the user enters a pizza parlor bill total. Your script should then display a 10 percent tip.
4. Write a simple calculator program that allows user to enter two numeric values and operand. The program should then print out the result of the operation on the two numbers. Make sure it works according to entered operand.
5. Write a shell script that, given a file name as the argument will count blank spaces, characters, number of line and symbols. The advanced version would also count the number of vowels.
6. Write a shell script that, given a file name as the argument will write the even numbered line to a file with name `evenfile` and odd numbered lines in a text file called `oddfile`.
7. Write a shell program to read a number (such as 123) and find the sum of digits (1+2+3=6).
8. Write a shell program to read two numbers and display all the odd numbers between those two numbers.
9. Right click and save the [`shakespeare.txt`](exercises/shakespeare.txt) file (all works of Shakespeare as text). Process it to output a list of words with frequency counts. Be careful with counting capitalised and non-capitalised words separately, and take care of the apostrophe!
10. Working with the file from 9, find the most common bigrams Shakespeare uses. Trigrams?

---
### License

Many of the exercises are taken from [Linux Shell Scripting Tutorial (LSST) v2.0](https://bash.cyberciti.biz/guide/Main_Page) under a CC-BY-NC-SA license.

This material is released under a
[CC-BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/) ![license](https://licensebuttons.net/l/by-nc-sa/3.0/88x31.png).
