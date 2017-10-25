build:
	@nikola build

serve:
	@nikola serve --browser

release:
	@checkout -b build
	@git add -f output
	@git commit -b "build ($$(date))"
	@git subtree push --prefix output origin gh-pages
	@git checkout master
	@git branch -D build