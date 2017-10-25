build:
	@nikola build

serve:
	@nikola serve --browser

release:
	@git checkout -b build
	@make build
	@git add -f output
	@git commit -m "build ($$(date))"
	@git subtree push --prefix output origin gh-pages
	@git checkout master
	@git branch -D build