return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    opts.formatters_by_ft.twig = { "djlint" }
    opts.formatters_by_ft.php = { "php-cs-fixer" }
  end,
}
