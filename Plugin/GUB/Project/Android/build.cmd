rem Modify the following variables to match your installation

rem set GSTREAMER_ROOT_ANDROID=D:/dev/gstreamer_1_16_2/armv7
rem set NDK_ROOT=d:/Software/android-ndk-r21d-windows-x86_64/android-ndk-r21d
set GSTREAMER_ROOT_ANDROID=D:/dev/gstreamer_1_14_5/armv7
set NDK_ROOT=d:/Software/android-ndk-r17c-windows-x86_64/android-ndk-r17c

rem Get the root project directory (following is because relative paths doesn't work)
set SCRIPT_DIR=%~dp0..\..\..\..
pushd %SCRIPT_DIR%
set GUB_ROOT=%CD%
popd
set NDK_PROJECT_PATH=%~dp0GUB
set NDK_APP_ABI=armeabi-v7a
set NDK_TARGET_LEVEL=android-26
set APP_PLATFORM=android-26
set APP_ABI=armeabi-v7a
%NDK_ROOT%/ndk-build.cmd -B V=1
