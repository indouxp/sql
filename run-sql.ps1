param([string]$sqlFile)

[string]$serverName = ".\sqlexpress"
[string]$database = "tsystem"

sqlcmd -E -S $serverName -d $database -i $sqlFile -u -b -w 80 -W
if (-not $?) {
  exit $LastExitCode
}
exit 0
