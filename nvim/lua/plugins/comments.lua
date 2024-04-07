return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
    config = function()
      require('Comment').setup()
      vim.keymap.set('n', '<leader>//', '<leader>gcc<CR>')
    end
}
