param([string]$sqlFile)

[string]$serverName = ".\sqlexpress"
[string]$database = "tsystem"

# -W:�㑱�̃X�y�[�X�폜
# -b:�G���[���Ƀo�b�`�𒆎~
# -E:�Z�L�����e�B�ڑ�
# -S �T�[�o�[
sqlcmd -E -S $serverName -d $database -i $sqlFile -b -w 120 -W
if (-not $?) {
  exit $LastExitCode
}
exit 0
