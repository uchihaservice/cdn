$fileHash = Get-FileHash -Path ".\data\hulls.zip" -Algorithm MD5
$fileHash.Hash | Set-Content -Path "./hulls.hash"
