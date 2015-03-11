@ECHO OFF

rem -- Uncomment the line below if you use a standard proxy
rem SET PROXY_HOST=my.proxy
rem SET PROXY_PORT=proxy.port

rem --
rem --   OMNEEDIA Setup
rem --   v1.00
rem --
@SETLOCAL
@SET CURRENT_DIR=%~dp0
@SET CURRENT_BIN=%CURRENT_DIR%bin\
@SET ANDROID_HOME=%CURRENT_BIN%android-sdk\
@SET ANDROID_SDK_HOME=%CURRENT_BIN%android-sdk\
@SET ANDROID_STUDIO_JDK=%CURRENT_BIN%jdk
@SET JAVA_HOME=%CURRENT_BIN%jdk
@SET APPDATA=%CURRENT_BIN%.appdata
@SET HOMEPATH=%CURRENT_BIN%.home
@SET USERPROFILE=%CURRENT_BIN%.home
@SET ProgramData=%CURRENT_BIN%.appdata
@SET ALLUSERSPROFILE=%CURRENT_BIN%.appdata
@SET PLINK_PROTOCOL=ssh
@IF NOT DEFINED TERM SET TERM=msys

@SET PATH=%PATH%;"%JAVA_HOME%\bin";"%ANDROID_HOME%platform-tools";"%ANDROID_HOME%build-tools\%ANDROID_BUILD_VERSION%";"%ANDROID_HOME%tools";"%CURRENT_BIN%";"%CURRENT_BIN%git";"%CURRENT_BIN%git\bin";"%CURRENT_BIN%git\libexec\git-core";"%CURRENT_BIN%npm";"%CURRENT_BIN%ant\bin";"%CURRENT_BIN%node_modules\.bin";"%CURRENT_BIN%git\bin";"%CURRENT_BIN%git\cmd";"%CURRENT_BIN%editor";"%CURRENT_BIN%chrome";

@if not exist "%HOME%" @set HOME=%USERPROFILE%

@ECHO.
@ECHO   --------------
@ECHO   Omneedia SETUP
@ECHO   --------------
@ECHO.
@ECHO   Please wait while we initialize the magic!
@ECHO.
if not exist .tmp mkdir .tmp
if not exist bin mkdir bin
@if not exist "%CURRENT_BIN%.home" @mkdir "%CURRENT_BIN%.home"

@ECHO var WinHttpReq = new ActiveXObject("WinHttp.WinHttpRequest.5.1"); > .tmp\download.js
if "%PROXY_HOST%"=="" (
	@ECHO.
) ELSE (
	@ECHO WinHttpReq.SetProxy(2,"http://%PROXY_HOST%:%PROXY_PORT%"^); >> .tmp\download.js
)
@ECHO WinHttpReq.Open("GET", WScript.Arguments(0), false); >> .tmp\download.js
@ECHO WinHttpReq.Send(); >> .tmp\download.js
@ECHO BinStream = new ActiveXObject("ADODB.Stream"); >> .tmp\download.js
@ECHO BinStream.Type = 1; >> .tmp\download.js
@ECHO BinStream.Open(); >> .tmp\download.js
@ECHO BinStream.Write(WinHttpReq.ResponseBody); >> .tmp\download.js
@ECHO BinStream.SaveToFile(WScript.Arguments(1)); >> .tmp\download.js

@ECHO.
@ECHO   * Downloading files
@ECHO   -------------------

if defined ProgramFiles(x86) (
    @SET ARCHITECTURE=64	
	if not exist .tmp\node.exe (
		@ECHO   - Downloading nodejs - 64 bits 
		@CSCRIPT /nologo //E:jscript .tmp\download.js http://nodejs.org/dist/v0.10.32/x64/node.exe .tmp\node.exe
	) else (
		@ECHO   - nodejs: downloaded
	)
	if not exist .tmp\chrome.zip (
		@ECHO   - Downloading Chromium - 64 bits 
		@CSCRIPT /nologo //E:jscript .tmp\download.js https://storage.googleapis.com/chromium-browser-continuous/Win_x64/314050/chrome-win32.zip .tmp\chrome.zip
	) else (
		@ECHO   - JDK: downloaded
	)
) else (
    @SET ARCHITECTURE=32
	if not exist .tmp\node.exe (
		@ECHO   - Downloading nodejs - 32 bits	
		@CSCRIPT /nologo //E:jscript .tmp\download.js http://nodejs.org/dist/v0.10.32/node.exe .tmp\node.exe
	) else (
		@ECHO   - nodejs: downloaded
	)
	if not exist .tmp\chrome.zip (
		@ECHO   - Downloading Chromium - 32 bits 
		@CSCRIPT /nologo //E:jscript .tmp\download.js https://storage.googleapis.com/chromium-browser-continuous/Win/315522/chrome-win32.zip .tmp\chrome.zip
	) else (
		@ECHO   - JDK: downloaded
	)
)

if not exist .tmp\npm.zip (
	@ECHO   - Downloading nodejs package manager [npm]
	@CSCRIPT /nologo //E:jscript .tmp\download.js http://nodejs.org/dist/npm/npm-1.4.9.zip .tmp\npm.zip
) else (
	@ECHO   - npm: downloaded
)

if not exist .tmp\heidi.zip (
	@ECHO   - Downloading HeidiSQL
	@CSCRIPT /nologo //E:jscript .tmp\download.js http://www.heidisql.com/downloads/releases/HeidiSQL_9.1_Portable.zip .tmp\heidi.zip
) else (
	@ECHO   - npm: downloaded
)

if not exist .tmp\unzip.exe (
	@ECHO   - Downloading unzip utility
	@CSCRIPT /nologo //E:jscript .tmp\download.js http://www2.cs.uidaho.edu/~jeffery/win32/unzip.exe .tmp\unzip.exe
) else (
	@ECHO   - unzip: downloaded
)

if not exist .tmp\git.7z (
	@ECHO   - Downloading git
	@CSCRIPT /nologo //E:jscript .tmp\download.js https://github.com/Omneedia/omneedia-core/raw/master/git.7z .tmp\git.7z
) else (
	@ECHO   - git: downloaded
)

if not exist .tmp\7z.exe (
	@ECHO   - Downloading 7z utility
	@CSCRIPT /nologo //E:jscript .tmp\download.js http://flashcart-helper.googlecode.com/files/7za.exe .tmp\7z.exe
) else (
	@ECHO   - 7z: downloaded
)

if not exist .tmp\im.zip (
	@ECHO   - Downloading imagemagick utility
	@CSCRIPT /nologo //E:jscript .tmp\download.js https://github.com/Omneedia/omneedia-core/raw/master/core-win-im.zip .tmp\im.zip
) else (
	@ECHO   - im: downloaded
)

if not exist .tmp\mysql.zip (
	@ECHO   - Downloading MySQL server
	@CSCRIPT /nologo //E:jscript .tmp\download.js https://github.com/Omneedia/mysql_server/archive/master.zip .tmp\mysql.zip
) else (
	@ECHO   - MySQL server: downloaded
)

@ECHO.
@ECHO   * Installing files
@ECHO   ------------------
if not exist "%CURRENT_BIN%" mkdir "%CURRENT_BIN%"
if not exist "%CURRENT_BIN%\.appdata" mkdir "%CURRENT_BIN%\.appdata"
if not exist "%CURRENT_BIN%\.appdata\npm" mkdir "%CURRENT_BIN%\.appdata\npm"
if not exist "%APPDATA%\npm" mkdir "%APPDATA%\npm"
if not exist bin\node.exe (
	@ECHO   - Installing nodejs
	@COPY /Y .tmp\node.exe bin\node.exe >nul 2>&1
) else (
	@ECHO   - nodejs: installed
)
if not exist bin\npm (
	@ECHO   - Installing node package manager [npm]
	@.tmp\unzip.exe .tmp\npm.zip -d bin\npm >nul 2>&1	
) else (
	@ECHO   - npm: installed
)

if not exist bin\mysql (
	@ECHO   - Installing MySQL server
	@.tmp\unzip.exe .tmp\mysql.zip -d bin\ >nul 2>&1
	@move bin\mysql_server-master bin\mysql >nul 2>&1
) else (
	@ECHO   - MySQL server: installed
)

if not exist bin\heidiSQL (
	@ECHO   - Installing HeidiSQL
	mkdir bin\heidiSQL
	@.tmp\unzip.exe .tmp\heidi.zip -d bin\heidiSQL >nul 2>&1
) else (
	@ECHO   - HeidiSQL: installed
)

if not exist bin\chrome (
	@ECHO   - Installing Chromium
	@.tmp\unzip.exe .tmp\chrome.zip -d bin\ >nul 2>&1
	@move bin\chrome-win32 bin\chrome >nul 2>&1
) else (
	@ECHO   - Chromium: installed
)

if not exist bin\im (
	@ECHO   - Installing imagemagick
	@mkdir bin\im
	@.tmp\unzip.exe .tmp\im.zip -d bin\im >nul 2>&1
) else (
	@ECHO   - im: installed
)
if not exist bin\git (
	@ECHO   - Installing git
	@.tmp\7z.exe x .tmp\git.7z -obin >nul 2>&1
) else (
	@ECHO   - git: installed
)
if not exist bin\7z.exe (
	@ECHO   - Installing 7z	
	@COPY .tmp\7z.exe bin\7z.exe >nul 2>&1
) else (
	@ECHO   - 7z: installed
)

if not exist bin\omneedia_start.cmd (
	@ECHO   - Installing omneedia Framework
	if "%PROXY_HOST%"=="" (
		@ECHO.
	) else (
		@CALL git config --global http.proxy http://%PROXY_HOST%:%PROXY_PORT%
		@CALL git config --global https.proxy https://%PROXY_HOST%:%PROXY_PORT%
	)
	@CALL git config --global http.sslVerify false	
	@CALL git clone https://github.com/Omneedia/Framework.git >nul 2>&1
	@XCOPY Framework .\ /s /e /h /Y >nul 2>&1
	@rd /s /q Framework
	@cd bin
	if "%PROXY_HOST%"=="" (
		@ECHO.
	) ELSE (
		@CALL npm config set proxy http://%PROXY_HOST%:%PROXY_PORT%
		@CALL npm config set http-proxy http://%PROXY_HOST%:%PROXY_PORT%
		@CALL npm config set https-proxy http://%PROXY_HOST%:%PROXY_PORT%
	)
	@CALL npm config set registry http://registry.npmjs.org/
	@CALL npm cache clean
	@CALL npm install
	@cd ..
	@rd .tmp /s/q >nul 2>&1
	if "%PROXY_HOST%"=="" (
		@CALL omneedia config unset proxy
	) ELSE (	
		@CALL omneedia config set proxy http://%PROXY_HOST%:%PROXY_PORT%
	)
	@CALL omneedia config update
	@CALL omneedia_start
) else (
	@ECHO   - omneedia Framework: installed
)