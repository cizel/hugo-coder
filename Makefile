HUGO_BIN=hugo

.PHONY: start changelog demo

start:
	$(HUGO_BIN) server --source=exampleSite --themesDir=../.. 

demo:
	$(HUGO_BIN) server --source=../cizel-blog --themesDir=../hugo-coder 

changelog:
	conventional-changelog -p angular -i CHANGELOG.md -s
