# powershell to convert Hex dump to text
#$hex = "54 68 69 73 20 69 73 20 61 20 48 65 78 44 75 6d 70 20 6e 6f 74 20 61 6c 6c 20 6c 61 64 69 65 73 20 62 72 61 20 73 69 7a 65 73"
#$hex.Split(" ") | forEach {[char]([convert]::toint16($_,16))} | forEach {$result = $result + $_}
#$result

# This method converts raw hex dump to text
$hex = Read-Host "enter your hex dump: "
$hex.Split(" ") | forEach {[char]([convert]::toint16($_,16))} | forEach {$result = $result + $_}
Write-Host "Here are your results:"$result

$otherwayaround = Read-Host "enter your text strimg to convert to hex: "
$otherwayaround | Format-Hex
