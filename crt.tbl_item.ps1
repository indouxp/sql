
[string]$serverName = ".\sqlexpress"
[string]$database = "tsystem"
[string]$MyDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
[string]$sqlFile = Join-Path $MyDirectory ($MyInvocation.MyCommand.Name -Replace ".ps1", ".sql")

sqlcmd -E -S $serverName -d $database -i $sqlFile -u -b -w 80 -W | Out-Null
