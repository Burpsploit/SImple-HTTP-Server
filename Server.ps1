$host.UI.RawUI.WindowTitle = "Simple HTTP Server"
Write-Output "=================================================="
Write-Output "          Simple HTTP Python Server"
Write-Output "   Use manually: python3 -m http.server {port}"
Write-Output "=================================================="
Write-Output `r`
Write-Output "Local IP:"
ipconfig | Select-String "IPV4" | Select-Object -First 1
Write-Output `r`
Write-Output "Public IP:"
nslookup myip.opendns.com. resolver1.opendns.com
Write-Output `r`
$port = Read-Host -Prompt 'Enter port (Default is 8080):'
if ($port -eq ""){
    python3 -m http.server 8080
}
else{
    python3 -m http.server $port
}
