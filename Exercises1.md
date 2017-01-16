# Introduction to Unix shell - EXERCISES

* 2016/17 Part II BBS Bioinformatics
* 16 Jan 2017, 15:00-17:00
* Bioinformatics Training Room, Craik-Marshall Building, Downing Site
* Alexey Morgunov

## Contents

1. [Shakespeare](#exercises---shakespeare)
2. [Human genome](#exercises---human-genome)

Download and unpack the [`text files`]() and the [`human reference genome annotation`](exercises/Homo_sapiens.GRCh38.83.gtf.gz).

---
### Exercises - Shakespeare

1. Check you have the `shakespeare.txt` file (all works of Shakespeare as text). Process it to output a list of words with frequency counts. Be careful not to count capitalised and non-capitalised words separately, and take care of the apostrophe!
2. Check how many times some country names are mentioned by Shakespeare. What are the most common words to co-occur in the same line with a country name? Filter your output for words shorter than four letters.
3. Find the most common bigrams Shakespeare uses. Trigrams?

---
### Exercises - Human genome

1. How many genes are there in the [`reference genome`](exercises/Homo_sapiens.GRCh38.83.gtf.gz)? Don't forget to unpack the file.
2. How many transcripts does your favourite gene have, e.g. ENSG00000001461?
3. How many exons?
4. Produce a tab separated file with these columns: transcriptID, exon_number, exon_length.
5. Which exon is the longest?


---
### License

Many of the shell scripting exercises are taken from [Linux Shell Scripting Tutorial (LSST) v2.0](https://bash.cyberciti.biz/guide/Main_Page) under a CC-BY-NC-SA license.

This material is released under a
[CC-BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/) ![license](https://licensebuttons.net/l/by-nc-sa/3.0/88x31.png).
