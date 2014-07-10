#!/bin/bash

DIR=`pwd`
CUSTDIR=$DIR/customize
java -jar $CUSTDIR/apktool.jar if $DIR/new-update/system/framework/oppo-framework-res.apk
java -jar $CUSTDIR/apktool.jar if $DIR/new-update/system/framework/framework-res.apk

echo "开始处理 SettingsProvider ..."
rm -rf $CUSTDIR/SettingsProvider_dex
java -jar $CUSTDIR/apktool.jar d -r $DIR/new-update/system/app/SettingsProvider.apk -o $CUSTDIR/SettingsProvider_dex
cd $CUSTDIR/SettingsProvider_dex
patch -p1 < ../SettingsProvider_dex.patch
cd $CUSTDIR
java -jar $CUSTDIR/apktool.jar b SettingsProvider_dex -o SettingsProvider_nosign.apk
rm -rf $CUSTDIR/SettingsProvider_dex
unzip -o SettingsProvider_nosign.apk classes.dex
mv -f $DIR/new-update/system/app/SettingsProvider.apk $CUSTDIR/SettingsProvider_nosign.apk
zip -m SettingsProvider_nosign.apk classes.dex
java -jar ${PORT_TOOLS}/signapk.jar ${PORT_TOOLS}/keys/platform.x509.pem ${PORT_TOOLS}/keys/platform.pk8 SettingsProvider_nosign.apk $DIR/new-update/system/app/SettingsProvider.apk
rm -f classes.dex SettingsProvider_nosign.apk
cd $DIR
echo "SettingsProvider 处理完成"
echo ""

echo "开始处理 SystemUI ..."
rm -rf $CUSTDIR/SystemUI_dex
java -jar $CUSTDIR/apktool.jar d -r $DIR/new-update/system/app/SystemUI.apk -o $CUSTDIR/SystemUI_dex
cd $CUSTDIR/SystemUI_dex
patch -p1 < ../SystemUI_dex.patch
cd $CUSTDIR
java -jar $CUSTDIR/apktool.jar b SystemUI_dex -o SystemUI_nosign.apk
rm -rf $CUSTDIR/SystemUI_dex
unzip -o SystemUI_nosign.apk classes.dex
mv -f $DIR/new-update/system/app/SystemUI.apk $CUSTDIR/SystemUI_nosign.apk
zip -m SystemUI_nosign.apk classes.dex
java -jar ${PORT_TOOLS}/signapk.jar ${PORT_TOOLS}/keys/platform.x509.pem ${PORT_TOOLS}/keys/platform.pk8 SystemUI_nosign.apk $DIR/new-update/system/app/SystemUI.apk
rm -f classes.dex SystemUI_nosign.apk
cd $DIR
echo "SystemUI 处理完成"
echo ""

echo "开始处理 oppo-framework ..."
rm -rf $CUSTDIR/oppo-framework_dex
${PORT_TOOLS}/apktool d $DIR/new-update/system/framework/oppo-framework.jar $CUSTDIR/oppo-framework_dex
cd $CUSTDIR/oppo-framework_dex
patch -p1 < ../oppo-framework_dex.patch
cd $CUSTDIR
${PORT_TOOLS}/apktool b oppo-framework_dex oppo-framework.jar
mv -f $CUSTDIR/oppo-framework.jar $DIR/new-update/system/framework/oppo-framework.jar
rm -rf $CUSTDIR/oppo-framework_dex
cd $DIR
echo "oppo-framework 处理完成"
echo ""

cp -rf $CUSTDIR/color_mod/mod/* $DIR/new-update/system/app/
#bash customize_crypt_frameworks.sh
