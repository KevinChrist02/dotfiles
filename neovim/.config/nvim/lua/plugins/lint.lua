return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            markdown = { "markdownlint" },
            html = { "htmlhint" },
            go = { "golangci-lint" }
        }
    end,
}
