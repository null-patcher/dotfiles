-- if true then
--   return {}
-- end

return {
  "nvim-lualine/lualine.nvim",
  -- enabled = false,
  event = "VeryLazy",
  opts = function(_, opts)
    opts.options.theme = "onedark"
    --[[add your custom lualine config here]]
    -- opts.options.section_separators = { left = "", right = "" }
    -- opts.options.component_separators = { left = "", right = "" }
  end,
}
