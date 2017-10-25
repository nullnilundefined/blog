build:
	@nikola build

serve:
	@nikola serve --browser

release:
	@git checkout -b build
	@make build
	@echo "dontaskmewhoami.life\nwww.dontaskmewhoami.life\n" > output/CNAME
	@git add -f output
	@git commit -m "build ($$(date))"
	@git push origin `git subtree split --prefix output build`:gh-pages --force
	@git checkout master
	@git branch -D build