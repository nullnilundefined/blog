build:
	@nikola build

serve:
	@nikola serve --browser

release:
	@git checkout -b build
	@make build
	@git add -f output
	@git commit -m "build ($$(date))"
	@git push origin `git subtree split --prefix output master`:gh-pages --force
	@git checkout master
	@git branch -D build