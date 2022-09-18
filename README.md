# Open Telepresence Player

Is the an immersive multipltaform player prepared to join and participate in an immersive telepresence experience which combines audio and live 360 video. It's part of the [Open Telepresence](https://github.com/rkachach/open-telepresence) initiative. The core player is based on Unity plus a thin layer that makes use of gstreamer for video processing. 

## REQUIREMENTS
* Unity 2021.3.2f1
* Gstreamer 1.14.5 runtime

### Unity installation
Download and install Unity LTS version [LTS Release 2021.3.2f1][1] for Windows 64 bits

### Gstreamer installation
1. Download *Gstreamer 1.0* both [1.14.5 runtime][2] installer and [1.14.5 development][3] installer and for both of them just use the following instructions:
2. Click **Custom** to check that the **C:/** is selected (sometimes the installer choose D:/ as well)
3. Press Back button and choose Complete option for installation. At the end you should have a new folder called gstreamr at your C:/
4. Add gstreamer directory to your PATH env variable so windows can find its libraries while loading gstreamer plugin:
    - Computer -> `System properties -> Advanced System Settings -> Advanced Tab -> Environment Variables... -> System Variables`
    - Update PATH Variable: `Path -> Edit -> New -> C:\gstreamer\1.0\x86_64\bin (adjust this path to your installation)`
    - Refresh PATH variable: open a cmd windows terminal and write: ​`> PATH=C` , close the cmd termina and restart it
    - Introduce `> echo %PATH%` to make sure that the PATH has been update correctly.

## Getting started
1. Clone/Download this project to your directory of choice
2. Launch Unity and select the option `Open` (to open a new project)
4. Browse to the Directory `open-telepresence-player` and select the Directory *Unity* (This will open this project in Unity)
13. Drag & Drop the scene `Assets > Test Scenes > Local-clip​` to the *Hierarchy* window
14. Click on *Quad* element and adjust the field URI to point to some file, i.e: file:///D:/movies/test.mkv
15. Click *Play* button and you should see your movie playing on the white screen

## Cross-building GStreamer Android plugin libraries from Windows:
1. Download [Android GStreamer dev package][4] and extract it in a folder of your choice
2. Download Android NDK (tested with [r17c version][5]) and extract it in a folder of your choice
3. Modify the variables `GSTREAMER_ROOT_ANDROID` and `NDK_ROOT` accordingly to match your selected directories
4. Go the the folder `Plugin -> GUB -> Project -> Android`
5. Launch the `build.cmd` script. Resulting libraries are generated on `Plugin\GUB\Project\Android\GUB\libs`
6. Copy the generated libraries to your Unity project

### TODO

- Better error reporting (when sync fails, for example)


[1]: https://download.unity3d.com/download_unity/d6360bedb9a0/UnityDownloadAssistant-2021.3.2f1.exe
[2]: https://gstreamer.freedesktop.org/data/pkg/windows/1.14.5/gstreamer-1.0-x86_64-1.14.5.msi
[3]: https://gstreamer.freedesktop.org/data/pkg/windows/1.14.5/gstreamer-1.0-devel-x86_64-1.14.5.msi
[4]: https://gstreamer.freedesktop.org/data/pkg/android/1.14.4/
[5]: https://dl.google.com/android/repository/android-ndk-r17c-windows-x86_64.zip


Player based on project: https://github.com/ua-i2cat/gst-unity-bridge

