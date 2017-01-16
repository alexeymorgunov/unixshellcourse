# Introduction to Unix shell - ANSWERS TO EXERCISES

* 2016/17 Part II BBS Bioinformatics
* 16 Jan 2017, 15:00-17:00
* Bioinformatics Training Room, Craik-Marshall Building, Downing Site
* Alexey Morgunov

## Contents

1. [Shakespeare](#answers-to-exercises---shakespeare)

---
### Answers to exercises - Shakespeare

1. Check you have the `shakespeare.txt` file (all works of Shakespeare as text). Process it to output a list of words with frequency counts. Be careful not to count capitalised and non-capitalised words separately, and take care of the apostrophe!
  ```bash
tr -sc "A-Za-z\'" '\n' < shakespeare.txt | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nk1
```  

2. Check how many times some country names are mentioned by Shakespeare. What are the most common words to co-occur in the same line with a country name? Filter your output for words shorter than four letters.
  ```bash
grep -i "england" shakespeare.txt | wc -l
grep -i "england" shakespeare.txt | tr -sc "A-Za-z\'" '\n' | tr '[:upper:]' '[:lower:]' | grep -v "england" | grep '.\{4\}' | sort | uniq -c | sort -nk1
```  

3. Find the most common bigrams Shakespeare uses. Trigrams?
  ```bash
#bigrams
tr -sc "A-Za-z\'" '\n' < shakespeare.txt > sh.words
tail -n +2 sh.words > sh.nextwords
paste sh.words sh.nextwords > sh.bigrams
tr 'A-Z' 'a-z' < sh.bigrams | sort | uniq -c | sort -nk1
#trigrams
tail -n +3 sh.words > sh.thirdwords
paste sh.words sh.nextwords sh.thirdwords > sh.trigrams
cat sh.trigrams | tr "[:upper:]" "[:lower:]" | sort | uniq -c | sort -nk1
```  

  Yeah, the file isn't filtered for the copyright notice. Can you do that?  

---
### License

Many of the shell scripting exercises are taken from [Linux Shell Scripting Tutorial (LSST) v2.0](https://bash.cyberciti.biz/guide/Main_Page) under a CC-BY-NC-SA license.

This material is released under a
[CC-BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/) ![license](https://licensebuttons.net/l/by-nc-sa/3.0/88x31.png).
