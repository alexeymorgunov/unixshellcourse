# Introduction to Unix shell - ANSWERS TO EXERCISES

* 2016/17 Part II BBS Bioinformatics
* 16 Jan 2017, 15:00-17:00
* Bioinformatics Training Room, Craik-Marshall Building, Downing Site
* Alexey Morgunov

## Contents

1. [Shakespeare](#answers-to-exercises---shakespeare)
2. [Human genome](#answers-to-exercises---human-genome)

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
### Answers to exercises - Human genome

1. How many genes are there in the [`reference genome`](exercises/Homo_sapiens.GRCh38.83.gtf.gz)? Don't forget to unpack the file.
  ```bash
cut -f3  Homo_sapiens.GRCh38.82.gtf | grep -c gene
cut -f3  Homo_sapiens.GRCh38.82.gtf | sort | uniq -c #alternative
```

2. How many transcripts does your favourite gene have, e.g. ENSG00000001461?
  ```bash
grep "ENSG00000001461" Homo_sapiens.GRCh38.82.gtf | cut -f3 | grep "transcript" | wc -l
```

3. How many exons?
  ```bash
grep "ENSG00000001461" Homo_sapiens.GRCh38.82.gtf | cut -f3 | grep "exon" | wc -l
```

4. Produce a tab separated file with these columns: transcriptID, exon_number, exon_length.
  ```bash
cat Homo_sapiens.GRCh38.82.gtf | tail -n +6 | cut -f9 | cut -d";" -f3 | cut -d\" -f2 > transcriptids.txt
cat Homo_sapiens.GRCh38.82.gtf | tail -n +6 | cut -f9 | cut -d";" -f5 | cut -d\" -f2 > exon_nums.txt
paste -d- <(cut -f5 trial.txt) <(cut -f4 trial.txt) | bc > exon_lengths.txt
paste transcriptids.txt exon_nums.txt exon_lengths.txt > final_output.txt
```

5. Which exon is the longest?
  ```bash
grep "ENSG00000001461" Homo_sapiens.GRCh38.82.gtf  > gene.txt
cat gene.txt | cut -f3,4,5 > temp1.txt
cat gene.txt | cut -f9 | cut -f3,5 -d";" > temp2.txt
paste temp1.txt temp2.txt | grep ^exon  > exons.txt
paste -d- <(cut -f3 exons.txt) <(cut -f2 exons.txt) | bc > lengths.txt
paste exons.txt lengths.txt | sort -nk8
# you could do the same with awk in a much simpler way!
awk '$10 ~/ENSG00000001461/ && $3 ~/exon/ {gsub(/"|;/, "", $10); printf("%s\t%d\n", $10, ($5-$4))}' Homo_sapiens.GRCh38.82.gtf | sort -rnk2 | head -1
```

```bash
#1
cut -f3  Homo_sapiens.GRCh38.82.gtf | grep -c gene
cut -f3  Homo_sapiens.GRCh38.82.gtf | sort | uniq -c #alternative
#2
grep "ENSG00000001461" Homo_sapiens.GRCh38.82.gtf | cut -f3 | grep "transcript" | wc -l
#3
grep "ENSG00000001461" Homo_sapiens.GRCh38.82.gtf | cut -f3 | grep "exon" | wc -l
#4
cat Homo_sapiens.GRCh38.82.gtf | tail -n +6 | cut -f9 | cut -d";" -f3 | cut -d\" -f2 > transcriptids.txt
cat Homo_sapiens.GRCh38.82.gtf | tail -n +6 | cut -f9 | cut -d";" -f5 | cut -d\" -f2 > exon_nums.txt
paste -d- <(cut -f5 trial.txt) <(cut -f4 trial.txt) | bc > exon_lengths.txt
paste transcriptids.txt exon_nums.txt exon_lengths.txt > final_output.txt
#5
grep "ENSG00000001461" Homo_sapiens.GRCh38.82.gtf  > gene.txt
cat gene.txt | cut -f3,4,5 > temp1.txt
cat gene.txt | cut -f9 | cut -f3,5 -d";" > temp2.txt
paste temp1.txt temp2.txt | grep ^exon  > exons.txt
paste -d- <(cut -f3 exons.txt) <(cut -f2 exons.txt) | bc > lengths.txt
paste exons.txt lengths.txt | sort -nk8
# you could do the same with awk in a much simpler way!
awk '$10 ~/ENSG00000001461/ && $3 ~/exon/ {gsub(/"|;/, "", $10); printf("%s\t%d\n", $10, ($5-$4))}' Homo_sapiens.GRCh38.82.gtf | sort -rnk2 | head -1
```

Learn more about `awk` [here](Notes2#awk).

---
### License

Many of the shell scripting exercises are taken from [Linux Shell Scripting Tutorial (LSST) v2.0](https://bash.cyberciti.biz/guide/Main_Page) under a CC-BY-NC-SA license.

This material is released under a
[CC-BY-NC-SA license](https://creativecommons.org/licenses/by-nc-sa/4.0/) ![license](https://licensebuttons.net/l/by-nc-sa/3.0/88x31.png).
