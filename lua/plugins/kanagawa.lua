return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			overrides = function(colors)
				return {
					LineNr = { bg = "NONE" },
					CursorLineNr = { bg = "NONE" },
				}
			end,
		})
		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}
