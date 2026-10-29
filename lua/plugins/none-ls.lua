-- Customize None-ls sources
-- None-ls registers itself as an LSP client, so formatters added here are picked
-- up by AstroNvim's format-on-save (which uses `vim.lsp.buf.format`).

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"

    -- Keep lint temp files outside Godot projects. Godot's language server scans
    -- project-local .gd files and treats gdlint's copy as a duplicate class_name.
    local temp_dir = vim.fn.stdpath "cache" .. "/none-ls"
    vim.fn.mkdir(temp_dir, "p")
    opts.temp_dir = temp_dir

    -- Godot: formatting + linting from gdtoolkit (gdformat / gdlint).
    -- Only registered when the executables are available on PATH.
    local sources = {}
    if vim.fn.executable "gdformat" == 1 then sources[#sources + 1] = null_ls.builtins.formatting.gdformat end
    if vim.fn.executable "gdlint" == 1 then sources[#sources + 1] = null_ls.builtins.diagnostics.gdlint end

    opts.sources = require("astrocore").list_insert_unique(opts.sources, sources)
  end,
}
