function Edit-Nvim {
    pushd C:\Users\suolu\AppData\Local\nvim
}
function nvr {if (-not (Test-Path "\\.\pipe\nvim-nvr")) { wezterm -e "nvim --listen "\\.\pipe\nvim-nvr" $args" } else
		{ if ($args) {nvim --server "\\.\pipe\nvim-nvr" --remote $args } } }

function ChromeCORSless {
    & "C:\Program Files\Google\Chrome\Application\chrome.exe" --disable-web-security --disable-gpu --user-data-dir=%LOCALAPPDATA%\Google\chromeTemp
}

$OutputEncoding = [Console]::InputEncoding = [Console]::OutputEncoding =
                    New-Object System.Text.UTF8Encoding