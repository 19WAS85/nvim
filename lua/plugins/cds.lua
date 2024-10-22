return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { cds_lsp = { } },
      setup = {
        cds_lsp = function()
          vim.api.nvim_create_autocmd('BufRead', {
            pattern = { '*.cds' },
            callback = function()
              vim.opt.filetype = 'cds'
            end
          })
        end
      }
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "cap-js-community/tree-sitter-cds" },
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "cds" })
      require("nvim-treesitter.parsers").get_parser_configs().cds = {
				install_info = {
					url = "https://github.com/cap-js-community/tree-sitter-cds.git",
					branch = "main",
					files = { "src/parser.c", "src/scanner.c" },
				},
				filetype = "cds"
			}
    end,
  },
}
