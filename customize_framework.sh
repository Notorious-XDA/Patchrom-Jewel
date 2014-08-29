#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

if [ $2 = "$BUILD_OUT/framework" ]
then

    # remove all files at out/framework those exist in framework2.jar.out
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # remove all files at out/framework those exist in telephony-common.jar.out
    for file4 in `find telephony-common.jar.out -name *.smali`; do
            file3=${file4/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file3"
            rm -rf "$file3"
    done

    # cp -f $PORT_ROOT/android/Editor/* $BUILD_OUT/framework/smali/android/widget
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework2 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done

    for file4 in `find telephony-common.jar.out -name *.smali`; do
            file3=${file4/telephony-common.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file3"
            rm -rf "$file3"
    done
fi

if [ $2 = "$BUILD_OUT/telephony-common" ]
then
    # fix Phone FC cause by NullPointerException?
#    for file5 in overlay/telephony-common/*.smali
#    do
#        cp -f $file5 out/telephony-common/smali/com/android/internal/telephony/gsm
#    done
# i manages to fix gsm using naxus5 lib, so its not necessary

    # remove all files at out/telephony-common those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/telephony-common}
            echo "rm file: $file"
            rm -rf "$file"
    done

    for file4 in `find framework2.jar.out -name *.smali`; do
            file3=${file4/framework2.jar.out/$BUILD_OUT\/telephony-common}
            echo "rm file: $file3"
            rm -rf "$file3"
    done
fi
