return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_install = { "lua", "c", "cmake", "cpp", "glsl", "python", "bash" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
