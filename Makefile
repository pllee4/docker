build_18.04-C20:
	sudo docker build . -t pllee4/ubuntu-ci:18.04-C20 -f ./ubuntu-ci/Dockerfile.18.04-C20

build_flutter-2.2.1:
	sudo docker build . -t pllee4/ubuntu-ci:flutter-2.2.1 -f ./ubuntu-ci/Dockerfile.flutter-2.2.1

build_flutter-2.5.3:
	sudo docker build . -t pllee4/ubuntu-ci:flutter-2.5.3 -f ./ubuntu-ci/Dockerfile.flutter-2.5.3

push_18.04-C20: build_18.04-C20
	sudo docker push pllee4/ubuntu-ci:18.04-C20

push_flutter-2.2.1: build_flutter-2.2.1
	sudo docker push pllee4/ubuntu-ci:flutter-2.2.1

push_flutter-2.5.3: build_flutter-2.5.3
	sudo docker push pllee4/ubuntu-ci:flutter-2.5.3