set Path=%PATH%;C:\adt32\sdk\platform-tools;C:\adt32\sdk\build-tools\28.0.3
set GRADLE_HOME=C:\adt32\gradle-4.4.1
set PATH=%PATH%;%GRADLE_HOME%\bin
zipalign -v -p 4 C:\android\workspace\AppCompatLanternDemo1\build\outputs\apk\release\AppCompatLanternDemo1-release-unsigned.apk C:\android\workspace\AppCompatLanternDemo1\build\outputs\apk\release\AppCompatLanternDemo1-release-unsigned-aligned.apk
apksigner sign --ks appcompatlanterndemo1-release.keystore --out C:\android\workspace\AppCompatLanternDemo1\build\outputs\apk\release\AppCompatLanternDemo1-release.apk C:\android\workspace\AppCompatLanternDemo1\build\outputs\apk\release\AppCompatLanternDemo1-release-unsigned-aligned.apk
