function Config-Edit {
    pushd $HOME/.config/
}

function Godot-Nvr {
    if (-not (Test-Path "\\.\pipe\nvim-nvr")) 
        { wt -F --title Godot-Neovim -d $project -p PowerShell pwsh -c "nvim --listen "\\.\pipe\nvim-nvr" $args" } 
    else
		{ if ($args) {nvim --server "\\.\pipe\nvim-nvr" --remote $args } } 
}

function Godot-Editor($project, $file) {
    Godot-Nvr $file
    (New-Object -ComObject WScript.Shell).AppActivate("Godot-Neovim")
}

function ChromeCORSless {
    & "C:\Program Files\Google\Chrome\Application\chrome.exe" --disable-web-security --disable-gpu --user-data-dir=%LOCALAPPDATA%\Google\chromeTemp
}

$OutputEncoding = [Console]::InputEncoding = [Console]::OutputEncoding =
                    New-Object System.Text.UTF8Encoding