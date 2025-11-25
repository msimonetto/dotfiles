return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "default",
                ["<CR>"] = { "fallback" }, -- Unbind Enter
                ["<Tab>"] = { "select_and_accept", "fallback" }, -- Bind Tab to accept
            },
        },
    },
}
