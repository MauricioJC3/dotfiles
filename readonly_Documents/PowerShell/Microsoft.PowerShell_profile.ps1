# Theme
(@(& 'C:/Users/Usuario/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Usuario\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json' --print) -join "`n") | Invoke-Expression

# Modules
Import-Module Terminal-Icons
. C:\Users\Usuario\a-cli\ACli-utils.ps1

# PS Confing
Set-PSReadLineOption -PredictionViewStyle ListView

# other apps confing
fnm env --use-on-cd | Out-String | Invoke-Expression

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# if ( Test-Path '~/.inshellisense/pwsh/init.ps1' -PathType Leaf ) { . ~/.inshellisense/pwsh/init.ps1 } 

Set-Alias -Name x -Value nvim

function w {
  windsurf .
}
