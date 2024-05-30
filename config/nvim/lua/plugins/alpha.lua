return {
    "goolord/alpha-nvim",
    event = "VimEnter",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
    end,
}
