return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.codespell,
                null_ls.builtins.formatting.cmake_format,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.stylua,

                null_ls.builtins.diagnostics.trivy,
                null_ls.builtins.diagnostics.cppcheck,
            },
        })

        vim.keymap.set("n", "<C-s>", vim.lsp.buf.format, {})
    end,
}
