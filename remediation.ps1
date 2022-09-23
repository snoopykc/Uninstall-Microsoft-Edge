$file = Get-ChildItem -path "C:\Program Files (x86)\Microsoft\Edge\Application\" -Filter setup.exe -Recurse
$command = "setup.exe -uninstall -system-level -verbose-logging -force-uninstall"
cd $file.Directory
Start-Process cmd.exe -ArgumentList "/c $command"
exit
