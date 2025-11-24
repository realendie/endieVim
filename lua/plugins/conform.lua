local uv = vim.uv or vim.loop -- compatibility with all Nvim versions

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black" },
    },
    format_on_save = true,
  },
}
