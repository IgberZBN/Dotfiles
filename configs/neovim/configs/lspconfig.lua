local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "jdtls", "angularls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- For angular

local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"

local cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  install_path,
  "--ngProbeLocations",
  ang,
}

lspconfig.angularls.setup {
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = cmd
  end,
}
