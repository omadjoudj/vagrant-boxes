
$env:Path += ";$ProgramData\Chocolatey"

choco feature enable -n allowGlobalConfirmation

choco install notepadplusplus.install
choco install 7zip.install 
choco install putty.install
choco install git.install
choco install firefox
choco install javaruntime
choco install citrix-receiver
choco install flashplayerplugin

choco feature disable -n allowGlobalConfirmation
