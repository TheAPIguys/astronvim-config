return {
  {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
    cmd = {
      "SupermavenUseFree",
      "SupermavenUsePro",
    },
    opts = {
      keymaps = {
        accept_suggestion = "<C-l>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
    },
  },
}
