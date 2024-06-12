# symlinks
## PWSH Profile
```
New-Item -Path $PROFILE -ItemType SymbolicLink -Value $HOME\.config\Microsoft.PowerShell_profile.ps1
```
## nvim config
```
New-Item -Path $env:LOCALAPPDATA/nvim -ItemType Junction -Value $HOME/.config/nvim
```
## nvim config
```
New-Item -Path $env:LOCALAPPDATA/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json -ItemType SymbolicLink -Value $HOME/.config/win-term-settings.json
```
