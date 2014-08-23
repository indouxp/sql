param([string]$sqlFile)

[string]$serverName = ".\sqlexpress"
[string]$database = "tsystem"

# -W:後続のスペース削除
# -b:エラー時にバッチを中止
# -E:セキュリティ接続
# -S サーバー
sqlcmd -E -S $serverName -d $database -i $sqlFile -b -w 120 -W
if (-not $?) {
  exit $LastExitCode
}
exit 0
