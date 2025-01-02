# Configuración DotFile


## Intalacion
 ### Windows
  - Instalar Chezmoi
  ```powershell
   git clone https://github.com/MauricioJC3/dotfiles.git ~\.local\share\chezmoi
  ```
 ```powershell
   chezmoi init
  ```
  ```powershell
   chezmoi apply
  ```

## Herramientas Necesarias
- [Chezmoi](https://www.chezmoi.io/quick-start/) - Gestor de dotfiles
- [Oh My Posh](https://ohmyposh.dev/docs/) - Personalizador de terminal

<!-- Comienzo de desplegable -->
<details>
<summary>⚙️ Configuración de Oh My Posh (Haz clic para expandir)</summary>

### 1. Instalación Inicial

1. Descargar Oh My Posh desde Microsoft Store:

   ![Descarga Oh My Posh](https://github.com/user-attachments/assets/4ceb15b9-bf6d-4987-99a5-a84881259306)
   ![Instalación Oh My Posh](https://github.com/user-attachments/assets/04d9dc00-16cb-46f0-9b83-d423b1b7a995)

2. Configurar Windows Terminal:
- Abrir configuraciones con `Ctrl + ,`
- En "Perfil Predeterminado" seleccionar PowerShell
- Establecer "Terminal de Windows" como aplicación predeterminada
- Cerrar y volver a abrir Windows Terminal

   ![Configuración de Terminal](https://github.com/user-attachments/assets/17a39832-1f45-44d0-b29a-a1d633cd4631)
  

3. Abrir Windows Terminal y ejecutar:
   ```powershell
   winget install JanDeDobbeleer.OhMyPosh -s winget
   ```

### 2. Configuración del Tema

1. Invocar tema de ejemplo:
   ```powershell
   oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json"
   ```

2. Ver y seleccionar tema deseado:
   ```powershell
   get-poshThemes
   ```
   ![Selección de Tema](https://github.com/user-attachments/assets/99acd5bc-b986-4a6b-a2df-4800a14f0a41)

3. Configurar perfil de PowerShell:
   ```powershell
   notepad $PROFILE
   ```

4. Agregar configuración al perfil:
   <details>
   <summary>Código de configuración base</summary>

   ```powershell
   (@(& 'C:/Users/Usuario/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Usuario\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json' --print) -join "`n") | Invoke-Expression
   ```
   > Nota: Cambiar 'ys.omp.json' por el nombre del tema seleccionado (ejemplo: 'zash.omp.json')
   </details>

5. Agregar comandos adicionales recomendados:
   ```powershell
   # Mejora la vista de predicciones
   Set-PSReadLineOption -PredictionViewStyle ListView

   # Añade iconos a la terminal
   Import-Module Terminal-Icons
   ```

   Resultado visual:
   ![Vista de Listados](https://github.com/user-attachments/assets/a58aaea5-0419-4562-ada0-9781d52decb5)
   ![Vista de Iconos](https://github.com/user-attachments/assets/e61fe60f-0849-424c-b135-7b5f2ec8ae99)

### 3. Configuración de Fuentes

1. Instalar fuentes de estilo:
   ```powershell
   oh-my-posh font install
   ```

### 4. Personalización de Tema (Opcional)

Para personalizar los colores, modificar el archivo JSON de configuración:

<details>
<summary>Ejemplo: Tema "Retrowave"</summary>

```json
{
  "schemes": [
    {
      "background": "#070825",
      "black": "#181A1F",
      "blue": "#46BDFF",
      "brightBlack": "#FF16B0",
      "brightBlue": "#46BDFF",
      "brightCyan": "#FF901F",
      "brightGreen": "#FCEE54",
      "brightPurple": "#FF92DF",
      "brightRed": "#F85353",
      "brightWhite": "#FFFFFF",
      "brightYellow": "#FFFFFF",
      "cursorColor": "#FFFFFF",
      "cyan": "#DF81FC",
      "foreground": "#46BDFF",
      "green": "#929292",
      "name": "Retrowave",
      "purple": "#FF92DF",
      "red": "#FF16B0",
      "selectionBackground": "#FFFFFF",
      "white": "#FFFFFF",
      "yellow": "#FCEE54"
    }
  ]
}
```
</details>

![Configuración Final](https://github.com/user-attachments/assets/220d1d0d-7b7e-4159-a197-f199288ac648)

**Nota**: Para cambiar el tipo de letra, es posible que necesites abrir la consola en modo administrador.
<!-- Fianl de desplegable -->
</details>

## Comandos Útiles de Chezmoi

| Comando | Descripción |
|---------|-------------|
| `chezmoi init` | Inicializar |
| `chezmoi add` | Agregar archivo |
| `chezmoi diff` | Ver los cambios realizados |
| `chezmoi apply` | Aplicar los cambios |
