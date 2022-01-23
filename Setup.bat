# Configuração do Android Studio em Ambiente Windows.


#Variaveis
set androidstudiodir = 'C:\sdk\android studio\'
set flutterdir = 'C:\sdk\flutter\'


# Download do SDK e Instalação Silenciosa
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2020.3.1.22/android-studio-2020.3.1.22-windows.zip
Expand-Archive .\android-studio-2020.3.1.22-windows.zip -DestinationPath %androidstudiodir%

wget https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.8.1-stable.zip
Expand-Archive .\flutter_windows_2.8.1-stable.zip -DestinationPath %flutterdir%



setx ANDROID_EMULATOR_HOME=%HOMEPATH%.android\
setx ANDROID_AVD_HOME=%ANDROID_EMULATOR_HOME%\avd\
setx ANDROID_SDK_ROOT=D:\Android_SDK\SDK
setx ANDROID_HOME=%ANDROID_SDK_ROOT%

setx PATH = %PATH%; %ANDROID_SDK_ROOT%\Tools; %ANDROID_SDK_ROOT%\platform-tools; %ANDROID_SDK_ROOT%\emulator; %ANDROID_HOME%\cmdline-tools\latest\bin; %flutterdir%\bin 


setx NDKROOT ""
setx NDK_ROOT ""

