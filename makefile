.PHONY: help install clean build run test format lint doctor

i install: ## Install Flutter dependencies
	flutter pub get

clean: ## Clean build artifacts
	flutter clean
	flutter pub get

build: ## Build the app
	flutter build apk

build-ios: ## Build iOS app
	flutter build ios

ipa build-ipa: ## Build iOS IPA
	flutter build ipa --release \
		--no-codesign \
		--build-name=0.0.1 \
		--build-number=1 \
		--export-options-plist=GoogleService-Info.plist

run: ## Run the app
	flutter run

run-debug: ## Run in debug mode
	flutter run --debug

run-release: ## Run in release mode
	flutter run --release

test: ## Run tests
	flutter test

format: ## Format code
	dart format .

lint: ## Run linter
	flutter analyze

doctor: ## Check Flutter setup
	flutter doctor

upgrade: ## Upgrade Flutter dependencies
	flutter pub upgrade --major-versions

outdated: ## Check for outdated packages
	flutter pub outdated
