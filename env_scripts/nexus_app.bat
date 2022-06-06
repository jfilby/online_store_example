set SERVER_IS_PRODUCTION="N"
set WEB_APP_INVITE_ONLY=N
set WEB_APP_LOG_LEVEL=INFO
set WEB_APP_PORT=5000


set DEFAULT_DB_PREFIX=ONLINE_STORE_EXAMPLE
set ONLINE_STORE_EXAMPLE_DB_HOST=localhost
set ONLINE_STORE_EXAMPLE_DB_PORT=5432
set ONLINE_STORE_EXAMPLE_DB_NAME=online_store_example
set ONLINE_STORE_EXAMPLE_USERNAME=
set ONLINE_STORE_EXAMPLE_PASSWORD=


set ONLINE_STORE_EXAMPLE_BASE_PATH=C:\Home\NexusDev\online_store_example
set ONLINE_STORE_EXAMPLE_BASE_SRC_PATH=%ONLINE_STORE_EXAMPLE_BASE_PATH%\nim\src


REM Nexus paths
set NEXUS_BASE_PATH=%NEXUS_BASE_PATH%\src

set NEXUS_CORE_BASE_PATH=%NEXUS_BASE_PATH%\nexus_core
set NEXUS_CORE_SRC_PATH=%NEXUS_CORE_BASE_PATH%\src

set NEXUS_CORE_EXTRAS_BASE_PATH=%NEXUS_BASE_PATH%\nexus_core_extras
set NEXUS_CORE_EXTRAS_SRC_PATH=%NEXUS_CORE_EXTRAS_BASE_PATH%\src

set NEXUS_SOCIAL_BASE_PATH=%NEXUS_BASE_PATH%\nexus_social
set NEXUS_SOCIAL_SRC_PATH=%NEXUS_SOCIAL_BASE_PATH%\src


REM Nim compile options
set NIM_COMPILE_OPTIONS=--path:%NEXUS_CORE_SRC_PATH% --threads:on --verbosity:0 -d:chronicles_log_level:%WEB_APP_LOG_LEVEL% -d:chronicles_line_numbers -d:chronicles_colors:NativeColors

set EMAIL_FROM_ADDRESS=
set EMAIL_FROM_SMTP_SERVER=
set EMAIL_FROM_PORT=
set EMAIL_FROM_USERNAME=
set EMAIL_FROM_PASSWORD=
set EMAIL_USE_SSL=

