# Credits: https://stackoverflow.com/a/44188845
$packageXml = ''
choco list -lo -r | % { $_ -split '\|' | select -first 1 } | % { $packageXml += "`n`t<package Id=""$_"" />" }
Set-Content -Path ".\choco-packages.config" -Value "<packages>$packageXml`n</packages>"