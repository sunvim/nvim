local nvim_lsp = require("lspconfig")
return {
  on_setup = function(server)
  local opts =  {
    root_dir = nvim_lsp.util.root_pattern("deno.json"),
   }
  server:setup(opts)
  end,
}
