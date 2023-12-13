# Caminho para o script a ser executado
$scriptPath = "C:\Windows\System32\WindowsPowerShell\v1.0\scripts\ChecagemImpressora.ps1"

# Cria uma nova janela sem mostrá-la
$psi = New-Object System.Diagnostics.ProcessStartInfo
$psi.FileName = "powershell.exe"
$psi.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`""
$psi.WindowStyle = [System.Diagnostics.ProcessWindowStyle]::Hidden

# Inicia o processo
[System.Diagnostics.Process]::Start($psi)
