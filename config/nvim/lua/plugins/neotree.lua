return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<C-t>", ":Neotree filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<2-LeftMouse>", ":Neotree open<CR>", {})
        vim.keymap.set("n", "<esc>", ":Neotree cancel<CR>", {})
        vim.keymap.set("n", "<S>", ":Neotree open_split<CR>", {})
        vim.keymap.set("n", "<y>", ":Neotree copy_to_clipboard<CR>", {})
        vim.keymap.set("n", "<p>", ":Neotree paste_from_clipboard<CR>", {})
        vim.keymap.set("n", "<i>", ":Neotree show_file_details<CR>", {})
        vim.keymap.set("n", "<m>", ":Neotree move<CR>", {})
        vim.keymap.set("n", "<P>", ":Neotree toggle_preview<CR>", {})
        vim.keymap.set("n", "<l>", ":Neotree focus_preview<CR>", {})
        vim.keymap.set("n", "<t>", ":Neotree open_tabnew<CR>", {})
    end,
}
