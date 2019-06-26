#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "dev" ];
then
    plutil -replace CFBundleName -string "\$(PRODUCT_NAME) Beta"
    $APPCENTER_SOURCE_DIRECTORY/MyApp/Info.plist && npm install && react-native
    link
fi
