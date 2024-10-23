return {
  'stevearc/conform.nvim',
  lazy = false,
  config = function()
    require('conform').setup {
      formatters = {
        clangformat = {
          command = 'clang-format',
          args = { '--style=file', '$FILENAME' },
          stdin = true,
        }
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    }
  end
}
