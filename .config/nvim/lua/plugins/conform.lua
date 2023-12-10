return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    table.insert(opts.formatters_by_ft, {
      ["twig"] = { "djlint" },
      ["php"] = { "php-cs-fixer" },
    })
  end,
}
