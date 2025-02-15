return {
  {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_ruby_rubocop_auto_correct_all = 1

        g.ale_linters = {
          javascript = {'eslint'},
          typescript = {'eslint'},
          javascriptreact = {'eslint'},
          typescriptreact = {'eslint'},
          vue = {'eslint'},
          ruby = {'rubocop', 'ruby'},
          lua = {'lua_language_server'}
        }

        g.ale_fixers = {
          javascript = {'eslint'},
          typescript = {'eslint'},
          javascriptreact = {'eslint'},
          typescriptreact = {'eslint'},
          vue = {'eslint'},
        }

        g.ale_async = 1

        g.ale_fix_on_save = 1
    end
  }
}
