# Configuracion DotFile

## Herramientas
- [Chezmoi](https://www.chezmoi.io/quick-start/)
- [Oh My Posh](https://ohmyposh.dev/docs/)

### Configuracion Oh My Posh
- Instalar -> winget install JanDeDobbeleer.OhMyPosh -s winget
- invocar tema de ejemplo -> oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json"
- Copiar Codigo generado por la invocacion y luego pegarlo para ver el tema de ejemplo (Ejemplo:
"  (@(& 'C:/Users/Usuario/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Usuario\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json' --print) -join "`n") | Invoke-Expression   "      
  )

### Codigos Utilizados
- Chezmoi add -> Agregar archivo
- Chezmoi diff -> Ver los cambios hechos en el archivo
- Chezmoi apply -> aplicar los camabios vistos
