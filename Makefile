build_18.04:
	sudo docker build . -t pllee4/ubuntu-ci:18.04 -f ./ubuntu-ci/Dockerfile.18.04

build_20.04:
	sudo docker build . -t pllee4/ubuntu-ci:20.04 -f ./ubuntu-ci/Dockerfile.20.04

build_18.04-C20:
	sudo docker build . -t pllee4/ubuntu-ci:18.04-C20 -f ./ubuntu-ci/Dockerfile.18.04-C20

build_20.04-C20:
	sudo docker build . -t pllee4/ubuntu-ci:20.04-C20 -f ./ubuntu-ci/Dockerfile.20.04-C20

build_18.04-gRPC:
	sudo docker build . -t pllee4/ubuntu-ci:18.04-gRPC -f ./ubuntu-ci/Dockerfile.18.04-gRPC

build_20.04-gRPC:
	sudo docker build . -t pllee4/ubuntu-ci:20.04-gRPC -f ./ubuntu-ci/Dockerfile.20.04-gRPC

build_zephyr-2.7-bionic:
	sudo docker build . -t pllee4/ubuntu-ci:zephyr-2.7-bionic -f ./ubuntu-ci/Dockerfile.zephyr-2.7-bionic

build_zephyr-2.7-focal:
	sudo docker build . -t pllee4/ubuntu-ci:zephyr-2.7-focal -f ./ubuntu-ci/Dockerfile.zephyr-2.7-focal

build_zephyr-3.3-focal:
	sudo docker build . -t pllee4/ubuntu-ci:zephyr-3.3-focal -f ./ubuntu-ci/Dockerfile.zephyr-3.3-focal

build_flutter-2.2.1:
	sudo docker build . -t pllee4/ubuntu-ci:flutter-2.2.1 -f ./ubuntu-ci/Dockerfile.flutter-2.2.1

build_flutter-2.5.3-bionic:
	sudo docker build . -t pllee4/ubuntu-ci:flutter-2.5.3-bionic -f ./ubuntu-ci/Dockerfile.flutter-2.5.3-bionic

build_flutter-2.5.3-focal:
	sudo docker build . -t pllee4/ubuntu-ci:flutter-2.5.3-focal -f ./ubuntu-ci/Dockerfile.flutter-2.5.3-focal

build_flutter-3.0.0-focal:
	sudo docker build . -t pllee4/ubuntu-ci:flutter-3.0.0-focal -f ./ubuntu-ci/Dockerfile.flutter-3.0.0-focal

push_18.04: build_18.04
	sudo docker push pllee4/ubuntu-ci:18.04

push_20.04: build_20.04
	sudo docker push pllee4/ubuntu-ci:20.04

push_18.04-C20: build_18.04-C20
	sudo docker push pllee4/ubuntu-ci:18.04-C20

push_20.04-C20: build_20.04-C20
	sudo docker push pllee4/ubuntu-ci:20.04-C20

push_18.04-gRPC: build_18.04-gRPC
	sudo docker push pllee4/ubuntu-ci:18.04-gRPC

push_20.04-gRPC: build_20.04-gRPC
	sudo docker push pllee4/ubuntu-ci:20.04-gRPC

push_flutter-2.2.1: build_flutter-2.2.1
	sudo docker push pllee4/ubuntu-ci:flutter-2.2.1

push_flutter-2.5.3-bionic: build_flutter-2.5.3-bionic
	sudo docker push pllee4/ubuntu-ci:flutter-2.5.3-bionic

push_flutter-2.5.3-focal: build_flutter-2.5.3-focal
	sudo docker push pllee4/ubuntu-ci:flutter-2.5.3-focal

push_flutter-3.0.0-focal: build_flutter-3.0.0-focal
	sudo docker push pllee4/ubuntu-ci:flutter-3.0.0-focal

push_zephyr-2.7-bionic:
	sudo docker push pllee4/ubuntu-ci:zephyr-2.7-bionic

push_zephyr-2.7-focal:
	sudo docker push pllee4/ubuntu-ci:zephyr-2.7-focal

push_zephyr-3.3-focal:
	sudo docker push pllee4/ubuntu-ci:zephyr-3.3-focal