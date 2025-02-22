return {
  {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_ruby_rubocop_auto_correct_all = 1

        local jsLike = {'eslint', 'prettier'}
        g.ale_linters = {
          javascript = jsLike,
          typescript = jsLike,
          javascriptreact = jsLike,
          typescriptreact = jsLike,
          vue = jsLike,
          svelte = jsLike,
          ruby = {'rubocop', 'ruby'},
          lua = {'lua_language_server'}
        }

        g.ale_fixers = {
          javascript = jsLike,
          typescript = jsLike,
          javascriptreact = jsLike,
          typescriptreact = jsLike,
          vue = jsLike,
          svelte = jsLike,
        }

        g.ale_async = 1

        g.ale_fix_on_save = 1
    end
  }
}
