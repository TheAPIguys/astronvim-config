-- AstroCommunity: import any community modules here.
-- We import this file in `lazy_setup.lua` before the `plugins/` folder so that
-- the community specs are processed before any user overrides.
--
-- Full catalog: https://github.com/AstroNvim/astrocommunity
-- Note: `pack.svelte` and `pack.tailwindcss` pull in `pack.typescript` and
-- `pack.html-css`/`pack.json` transitively, so the whole web stack is covered.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Lua (AstroNvim's own config language)
  { import = "astrocommunity.pack.lua" },

  -- TypeScript / JavaScript  (vtsls, tsx/jsdoc parsers, ts-debug adapter, tsc.nvim)
  { import = "astrocommunity.pack.typescript" },

  -- Svelte  (svelte-language-server, typescript-svelte-plugin, svelte parser)
  { import = "astrocommunity.pack.svelte" },

  -- Tailwind CSS  (tailwindcss-language-server + colorizer)
  { import = "astrocommunity.pack.tailwindcss" },

  -- Go  (gopls, delve, gomodifytags/gotests/iferr/impl/goimports, dap-go, gopher.nvim)
  { import = "astrocommunity.pack.go" },

  -- Godot / GDScript  (gdscript LSP, gdscript/glsl/godot_resource parsers, dap, quickgd)
  { import = "astrocommunity.pack.godot" },

  -- Override community specs with your own plugins in `lua/plugins/`
}
