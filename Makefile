.PHONY: all

all:
	git add --all
	git commit -a -m "pushed through make"
	git pull
	git push
