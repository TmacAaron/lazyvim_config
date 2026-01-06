-- if true then return {} end

return {
    "smoka7/hop.nvim",
    version = "*",
    vscode = true,
    opts = {},
    keys = {
        {
            "<leader>hw",
            function() require("hop").hint_words() end,
            mode = { "n", "v" },
            desc = "Hop hint words",
        },
        {
            "<leader>hl",
            function() require("hop").hint_lines() end,
            mode = { "n" },
            desc = "Hop hint lines",
        },
        {
            "<leader>hw",
            function() require("hop").hint_words { extend_visual = true } end,
            mode = { "v" },
            desc = "Hop hint words",
        },
        {
            "<leader>hl",
            function() require("hop").hint_lines { extend_visual = true } end,
            mode = { "v" },
            desc = "Hop hint lines",
        },
    },
}
