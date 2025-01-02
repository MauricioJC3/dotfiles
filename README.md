# Configuración DotFile

## Herramientas Necesarias
- [Chezmoi](https://www.chezmoi.io/quick-start/) - Gestor de dotfiles
- [Oh My Posh](https://ohmyposh.dev/docs/) - Personalizador de terminal

## Configuración de Oh My Posh

### 1. Instalación

1. Descargar desde Microsoft Store:

   ![Descarga Oh My Posh](https://github.com/user-attachments/assets/4ceb15b9-bf6d-4987-99a5-a84881259306)
   ![Instalación Oh My Posh](https://github.com/user-attachments/assets/04d9dc00-16cb-46f0-9b83-d423b1b7a995)

2. Abrir Windows Terminal y ejecutar:
   ```powershell
   winget install JanDeDobbeleer.OhMyPosh -s winget
   ```

3. Invocar tema de ejemplo:
   ```powershell
   oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json"
   ```

4. Copiar el código generado por la invocación para ver el tema de ejemplo:
   <details>
   <summary>Ver código de ejemplo</summary>

   ```powershell
   (@(& 'C:/Users/Usuario/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='C:\Users\Usuario\AppData\Local\Programs\oh-my-posh\themes\ys.omp.json' --print) -join "`n") | Invoke-Expression
   ```
   </details>

### 2. Configuración de Fuentes

1. Instalar fuentes de estilo:
   ```powershell
   oh-my-posh font install
   ```

2. Configurar Windows Terminal:
   - Abrir configuraciones con `Ctrl + ,`
   - En "Perfil Predeterminado" seleccionar PowerShell
   - Establecer "Terminal de Windows" como aplicación predeterminada

   ![Configuración de Terminal](https://github.com/user-attachments/assets/17a39832-1f45-44d0-b29a-a1d633cd4631)

### 3. Personalización de Tema

Para agregar estilos personalizados, modificar el archivo JSON de configuración:

<details>
<summary>Configuración del tema "Retrowave"</summary>

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

## Comandos Útiles de Chezmoi

| Comando | Descripción |
|---------|-------------|
| `chezmoi add` | Agregar archivo |
| `chezmoi diff` | Ver los cambios realizados |
| `chezmoi apply` | Aplicar los cambios |
