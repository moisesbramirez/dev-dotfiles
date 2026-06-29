return {
  {
   "NullVoxPopuli/ember.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("ember.nvim").config()
    end
  }
}
