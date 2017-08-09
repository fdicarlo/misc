# Ports checker in Powershell
#
# Usage:
# PS C:\> port_checker.ps1 [-ip] 8.8.8.8 -port 53

[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True,Position=1)]
   [string]$ip,

   [Parameter(Mandatory=$True,Position=2)]
   [int]$port
)

$connection = New-Object System.Net.Sockets.TcpClient($ip, $port)
if ($connection.Connected) {
    Return "Connection Success"
}
else {
    Return "Connection Failed"
}
