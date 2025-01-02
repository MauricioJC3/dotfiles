# Configuracion DotFile

## Herramientas
- [Chezmoi](https://www.chezmoi.io/quick-start/)
- [Oh My Posh](https://ohmyposh.dev/docs/)

### Configuracion Oh My Posh
- Descargar de Microsoft Store:
    <br>
  ![image](https://github.com/user-attachments/assets/4ceb15b9-bf6d-4987-99a5-a84881259306)
    <br>
      <br>

  ![image](https://github.com/user-attachments/assets/04d9dc00-16cb-46f0-9b83-d423b1b7a995)


  <br>
    <br>

- Abrir Windows Terminal
- Instalar -> winget install JanDeDobbeleer.OhMyPosh -s winget
- invocar tema de ejemplo -> oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json"
<details><summary><a>Copiar Codigo generado por la invocacion y luego pegarlo para ver el tema de ejemplo</a></summary>
Ejemplo:
(@(& 'C:/Users/Usuario/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Usuario\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json' --print) -join "`n") | Invoke-Expression 
</details>

- Descargar fuente de estilos -> oh-my-posh font install
- Entrar a configuraciones de la powershell, atajo rapido ( Ctrl + , ) en la terminal
- En ( perfil Predetermiado ) colocar PowerShell que se instalo y en ( aplicacion de terminal predeterminada ) colocar Terminal de Windows:
 <br>

   ![image](https://github.com/user-attachments/assets/17a39832-1f45-44d0-b29a-a1d633cd4631)

 <br>
  <br>
### Codigos Utilizados
- Chezmoi add -> Agregar archivo
- Chezmoi diff -> Ver los cambios hechos en el archivo
- Chezmoi apply -> aplicar los camabios vistos
