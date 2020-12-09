@echo off
set expiresIn=45
set outputPath="./"

echo Please make sure Git for windows is installed in: C:\Program Files\Git
pause

echo Creating SSL Certs for local host...
call "C:\Program Files\Git\usr\bin\openssl.exe" req -x509 -days %expiresIn% -out %outputPath%/cert.crt -keyout %outputPath%/cert.key -newkey rsa:2048 -nodes -sha256 -subj '/CN=localhost' -extensions EXT -config ./certConfig.txt

echo Done!
pause