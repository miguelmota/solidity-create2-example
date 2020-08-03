all: build

.PHONY: download-parity-mac
download-parity-mac:
	rm -rf parity
	wget https://releases.parity.io/ethereum/v2.1.4/x86_64-apple-darwin/parity
	chmod +x parity

.PHONY: download-parity-linux
download-parity-linux:
	rm -rf parity
	wget https://releases.parity.io/ethereum/v2.1.4/x86_64-unknown-linux-gnu/parity
	chmod +x parity

.PHONY: install
install:
	npm install

.PHONY: build
build:
	npm run build

.PHONY: start-parity
start-parity:
	./parity -c dev-insecure --chain chain.json --jsonrpc-cors=all --ws-interface all --ws-origins all --ws-hosts all

.PHONY: reset-parity
reset-parity:
	./parity -c dev-insecure --chain chain.json db kill

.PHONY: deploy
deploy:
	rm -rf build && npx truffle deploy --network=development --reset

.PHONY: compile
compile:
	npx truffle compile

.PHONY: test
test:
	npx truffle test --reset
