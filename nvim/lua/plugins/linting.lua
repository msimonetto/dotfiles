return {
    "mfussenegger/nvim-lint",
    opts = {
        linters_by_ft = {
            markdown = {},
        },
    },
    linters = {
        ["markdownlint-cli2"] = {
            args = {
                "--config",
                vim.fn.expand("~/.markdownlint.yaml"),
                "--",
            },
        },
    },
}
