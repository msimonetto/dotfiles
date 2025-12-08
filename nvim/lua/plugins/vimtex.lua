return {
    {
        "lervag/vimtex",
        lazy = false, -- Vimtex handles its own lazy loading well, keeping this false is usually safer
        init = function()
            -- 1. The Critical Fix: Use the native Zathura method
            -- This uses DBus, which works natively on Wayland
            vim.g.vimtex_view_method = "zathura"

            -- 2. Compiler Settings
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_compiler_latexmk = {
                build_dir = "",
                callback = 1,
                continuous = 1,
                executable = "latexmk",
                hooks = {},
                options = {
                    "-pdf",
                    "-interaction=nonstopmode",
                    "-synctex=1",
                    "-file-line-error",
                    "-verbose",
                    "-silent", -- <-- ADD THIS LINE
                    "-pv-", -- <-- ADD THIS LINE (disables preview)
                },
            }
        end,
    },
}
