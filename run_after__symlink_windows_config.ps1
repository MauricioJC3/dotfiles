if ($IsWindows)
{
    $nvimConfDir = (Join-Path $env:LOCALAPPDATA "nvim")
    if (-not (Test-Path $nvimConfDir))
    {
        New-Item -Path $nvimConfDir -ItemType Junction -Value ${HOME}\.config\nvim
    }
}

if (-not ($isWindows))
{
	    Write-Host "👍 GG dragon city"
}
