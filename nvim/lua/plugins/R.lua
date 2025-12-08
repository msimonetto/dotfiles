return {
    {
        "R-nvim/R.nvim",
        lazy = false, -- R.nvim needs to be loaded early
        config = function()
            -- Create a table of options if you need to customize R.nvim
            -- For example, to disable the assignment operator replacement:
            -- local opts = { assignment_keymap = "" }

            -- Setup the plugin.
            -- Note: 'require("r").setup()' is correct for the R-nvim/R.nvim Lua version.
            require("r").setup()

            -- Your auto-start logic (cleaned up)
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "rmd", "rmarkdown", "r" },
                callback = function()
                    -- Define keymap to open terminal if not open (standard is <localleader>rf)
                    -- Or keep your auto-start:
                    vim.defer_fn(function()
                        -- Ensure R isn't already running to prevent duplicates
                        if vim.fn.exists("*RStart") == 1 and vim.g.rplugin_r_console_visible ~= 1 then
                            vim.call("RStart")
                        end
                    end, 100)
                end,
            })
        end,
    },
}
