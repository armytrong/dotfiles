local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--ignore-file",
            ".ignore",
            "--ignore-file",
            ".gitignore",
        },
        file_ignore_patterns = {
            "*%.toc",
            "*%.fls",
            "*%.log",
        },
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
        },
    },
})



