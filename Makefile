# ABOUTME: Build/verify targets for the maroffo.github.io static site.
# ABOUTME: `make build` regenerates the CV page+PDF; check/test-e2e validate without re-rendering.

.PHONY: check build test-e2e

check:
	@command -v pandoc >/dev/null 2>&1 || { echo "pandoc not found"; exit 1; }
	@pandoc cv/cv.md -f markdown+hard_line_breaks -t html5 -o /dev/null && echo "cv markdown OK"

build:
	@./cv/build-cv.sh

# Verify the published artifacts exist (does NOT re-render, so the pre-commit
# gate never dirties the non-deterministic PDF). Run `make build` to refresh.
test-e2e:
	@test -s index.html && test -s cv/index.html && test -s cv/cv.pdf \
		&& echo "site artifacts present" || { echo "missing artifact - run 'make build'"; exit 1; }
