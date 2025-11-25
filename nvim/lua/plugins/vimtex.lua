return {
  {
    "lervag/vimtex",
    lazy = false, -- VimTeX must load at startup
    ft = { "tex" },
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "", -- leave empty to build in the same directory
        callback = 1, -- let Vimtex know when compilation finishes
        continuous = 1, -- enable continuous compilation
        executable = "latexmk",
        options = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
          "-file-line-error",
        },
      }
    end,
  },
}
