; NSIS AddPinyin Installer
; Include
!include MUI.nsh
!include LogicLib.nsh
!include x64.nsh

; General
!define mbkname "Transliteration.mbk"
!define displayname "Transliteration Code Plugin for OCLC Connexion"

Name "${displayname}"
OutFile "InstallAddTransliterationCode.exe"
InstallDir "$APPDATA\OCLC\Connex\Macros"

; Interface Settings
!define MUI_ABORTWARNING

; Installer Pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; Languages
!insertmacro MUI_LANGUAGE "English"

; Prerequisites Section
Section "-Prerequisites"
SectionEnd

; Installer Section
Section "-Install"

SetOutPath "$INSTDIR"
File "${mbkname}"

SectionEnd

