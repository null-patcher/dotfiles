-- if true then
--   return {}
-- end

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.options.theme = "onedark"
    --[[add your custom lualine config here]]
    opts.options.component_separators = { left = "", right = "" }
    opts.options.section_separators = { left = "", right = "" }
    opts.sections.lualine_z = {}
  end,
}
