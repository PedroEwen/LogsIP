Param (
$ip = "seuIP",
$exito = "O disposito está conectado ",
$falha = "Verificar conectividade do dispositivo "
)

$resultado = Test-Connection -ComputerName $ip -count 10


Function gerar_logs {
    $date = Get-Date

    if($resultado -ne 0) {
         #Caminho dos logs   
        Add-Content -Path C:\Users\pedro.henrique\Desktop\Logs.txt -Value $exito, $date, ' '
    } else {
        Add-Content -Path C:\Users\pedro.henrique\Desktop\Logs.txt -Value $falha, $date, ' '
        Start-Process -FilePath C:\Users\pedro.henrique\Desktop\Logs.txt
    }
}
gerar_logs
