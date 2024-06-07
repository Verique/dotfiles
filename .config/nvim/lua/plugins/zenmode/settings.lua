return {
    window = {
        backdrop = 0.8,
        width = 0.8,
        height = 1,
        options = {
            signcolumn = "yes",
            number = false,
            relativenumber = false,
            cursorline = true,
            cursorcolumn = false,
            foldcolumn = "0",
            list = false,
        },
    },
    plugins = {
        options = {
            enabled = true,
            ruler = false,
            showcmd = false,
            laststatus = 0,
        },
        twilight = { enabled = false },
        gitsigns = { enabled = true },
        tmux = { enabled = false },
        kitty = {
            enabled = true,
            font = "", -- font size increment
        },
        alacritty = {
            enabled = false,
            font = "14",
        },
        wezterm = {
            enabled = false,
            font = "+4",
        },
    },
    on_open = function() end,
    on_close = function() end,
}
