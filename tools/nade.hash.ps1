Get-ChildItem -Path "./nades" -Recurse |
     ForEach-Object {
         $fileHash = Get-FileHash -Path $_.FullName -Algorithm MD5
         [PSCustomObject]@{
             file = $_.Name
             hash = $fileHash.Hash
         }
     } |
     ConvertTo-Json -Depth 3 |
     Set-Content -Path "./nades.hash.json"
     