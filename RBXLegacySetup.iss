; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVer "1.8.1"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B84DBE54-11F6-43AB-AC95-A71164168899}
AppName=RBXLegacy
AppVersion={#AppVer}
AppVerName=RBXLegacy {#AppVer}
AppPublisher=Bitl
DefaultDirName=C:\RBXLegacy
DefaultGroupName=RBXLegacy
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=RBXLegacySetup_{#AppVer}
SetupIconFile=RBXLegacy\RBXLegacyIcon.ico
Compression=lzma2/ultra64
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "RBXLegacy\RBXLegacyLauncher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "RBXLegacy\RBXLegacyLauncher.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "RBXLegacy\README.TXT"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "RBXLegacy\version.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "RBXLegacy\clients\*"; DestDir: "{app}\clients"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RBXLegacy\maps\*"; DestDir: "{app}\maps"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RBXLegacy\models\*"; DestDir: "{app}\models"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RBXLegacy\scripts\*"; DestDir: "{app}\scripts"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\RBXLegacy"; Filename: "{app}\RBXLegacyLauncher.exe"
Name: "{group}\{cm:UninstallProgram,RBXLegacy}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\RBXLegacy"; Filename: "{app}\RBXLegacyLauncher.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\RBXLegacy"; Filename: "{app}\RBXLegacyLauncher.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\RBXLegacyLauncher.exe"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,RBXLegacy}"
