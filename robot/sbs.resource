  
*** Settings ***
Library    AppiumLibrary    

*** Variables ***
${ANDROID_AUTOMATION_NAME}    356101070461948
${ANDROID_APP}                C:\\arena.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   8.0.0
${autoGrantPermissions}    true
${packageActivity}    com.sebangsa.arena
${appActivity}    com.sebangsa.arena.ui.onboard.SplashActivity


*** Keywords ***
define activity
    Open Application    http://localhost:4723/wd/hub    alias=Arena    platformName=Android    platformVersion=10.0.0    deviceName=MGMRK19109013419    autoGrantPermissions=${autoGrantPermissions}    appPackage=${packageActivity}    appActivity=${appActivity}
    

define apps
    Open Application    http://localhost:4723/wd/hub    alias=Sebangsa    platformName=Android    platformVersion=${ANDROID_PLATFORM_VERSION}    deviceName=${ANDROID_AUTOMATION_NAME}    app=${ANDROID_APP}    autoGrantPermissions=${autoGrantPermissions}
    