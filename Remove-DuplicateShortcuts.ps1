# Script to remove multiple desktop icons with Onedrive and people moving desks.
# Will still be needed due to Teams not being able to be removed
# Rest have options to remove on install.
# Can also remove .lnk in Onedrive console.

$DesktopPath = Join-Path -Path ([Environment]::GetFolderPath("Desktop")) -ChildPath "*"

$DuplicateNames = @(
    "*Edge*",
    "*Teams*",
    "*Yammer*",
    "*Chrome*",
    "*GoToMeeting*",
    "*GoToWebinar*"
)

Get-ChildItem -Path $DesktopPath -Filter *.lnk -Include $DuplicateNames | Where {$_.Name -like "*-*.lnk"} | Remove-Item -Force