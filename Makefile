setup:
	cd backend
	npm --version

install:
	cd backend
	npm install
	# Install hadolint
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	sudo chmod +x /bin/hadolint

test:
	cd backend
	npm test

lint:
	cd backend
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
