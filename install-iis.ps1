Import-module servermanager
Add-windowsfeature web-server -includeallsubfeature

remove-item 'C:\inetpub\wwwroot\index.html'
$hostname = get-content env:computername
echo hi this is $hostname >> 'C:\inetpub\wwwroot\index.html'