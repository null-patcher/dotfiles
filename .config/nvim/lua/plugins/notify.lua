-- if true then
--   return {}
-- end

return {
  "rcarriga/nvim-notify",
  config = function(_, _)
    require("notify").setup({
      background_colour = "#000000",
    })
  end,
}
