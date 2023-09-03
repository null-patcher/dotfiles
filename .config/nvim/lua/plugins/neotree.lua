return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = { "catppuccin/nvim" },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
      },
    },
  },
}
