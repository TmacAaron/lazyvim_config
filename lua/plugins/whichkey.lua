-- if true then return {} end

return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts_extend = { "spec" },
        opts = {
            preset = "helix",
            defaults = {},
            spec = {
                {
                    mode = { "n", "x" },
                    { "<leader>h", group = "hop" },
                },
            },
        },
    },
}
