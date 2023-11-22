local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	-- Install a plugin
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		event = "VeryLazy",
		opts = {},
		config = function()
			require("custom.configs.ui.noice")
		end,
	},

	{
		"shellRaining/hlchunk.nvim",
		event = { "UIEnter" },
		config = function()
			require("custom.configs.ui.hlchunk")
		end,
	},

	{
		"NvChad/nvterm",
		-- setup = overrides.nvterm,
		require("nvterm").setup({
			terminals = {
				shell = vim.o.shell,
			},
		}),
	},

	"NvChad/nvcommunity",
	{ import = "nvcommunity.folds.ufo" },
	-- { import = "nvcommunity.editor.telescope-undo"}
}

return plugins
