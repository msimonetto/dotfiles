-- ~/.config/nvim/lua/plugins/stupyder.lua
return {
    "leobeosab/stupyder.nvim",
    cmd = { "Stupyder" }, -- lazy-load when you call :Stupyder
    config = function()
        require("stupyder").setup({
            -- optional run options / modes, tweak as you like
            run_options = {
                print_debug_info = false,
                default_mode = "win", -- "virtual_lines" | "win" | "yank"
            },

            -- add tools for languages not included by default
            tools = {
                -- run R code blocks using Rscript
                r = {
                    contexts = {
                        command_context = {
                            ext = ".R",
                            -- use Rscript to run the temporary file created from the code block
                            cmd = "Rscript {code_file}",
                            -- if you prefer radian (REPL) you could do "radian -f {code_file}" or similar
                        },
                    },
                },
            },

            modes = {
                -- default window mode behaviour (adjust to taste)
                win = {
                    close_shortcut = "q",
                    enter_on_open = true,
                    win_config = { split = "below", height = 12 },
                },
                virtual_lines = {
                    error_hl_group = "ErrorMsg",
                },
                yank = { register = "*" },
            },
        })
    end,
}
