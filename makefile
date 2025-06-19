DATE_NOW:=`date +%Y%m%d.%H%M`
DATE:=`date +%d-%m-%Y`
VERSION:=`cider version`
APP_NAME:=MovieDB
PATH_APK:=./build/app/outputs/flutter-apk

ifeq ($(OS),Windows_NT)
	SPLIT_DEBUG_INFO:=.\build\split-debug-info-logs
else
	SPLIT_DEBUG_INFO:=./build/split-debug-info-logs
endif

generate:
	fvm spawn 3.24.4 pub run build_runner build --delete-conflicting-outputs

get:
	fvm spawn 3.24.4 pub get

run:
	fvm spawn 3.24.4 run

apk:
	fvm spawn 3.24.4 build apk \
		--release \
		-v
		
apk-open: apk
	mv $(PATH_APK)/app-release.apk $(PATH_APK)/$(APP_NAME)-v$(VERSION)-$(DATE_NOW).apk
	open $(PATH_APK)/

splash:
	dart run flutter_native_splash:create

asset-generate:
	fluttergen -c pubspec.yaml

create-launcher:
	fvm spawn 3.24.4 pub run flutter_launcher_icons -f flutter_launcher_icons*