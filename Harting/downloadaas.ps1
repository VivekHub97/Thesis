# Reading each URL from the file
Get-Content "urls.txt" | ForEach-Object {
  Invoke-WebRequest -Uri $_ -OutFile ($_ -replace "https?://dpp40.harting.com/aas/", "") # Assumes file names are extracted from URLs
}

Write-Output "All files have been downloaded."
