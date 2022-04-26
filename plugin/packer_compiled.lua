-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/mobus/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mobus/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mobus/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mobus/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mobus/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://hub.fastgit.xyz/numToStr/Comment.nvim"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://hub.fastgit.xyz/ravenxrz/DAPInstall.nvim"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://hub.fastgit.xyz/APZelos/blamer.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://hub.fastgit.xyz/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://hub.fastgit.xyz/hrsh7th/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://hub.fastgit.xyz/glepnir/dashboard-nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://hub.fastgit.xyz/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://hub.fastgit.xyz/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://hub.fastgit.xyz/junegunn/fzf"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://hub.fastgit.xyz/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://hub.fastgit.xyz/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://hub.fastgit.xyz/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://hub.fastgit.xyz/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://hub.fastgit.xyz/tami5/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://hub.fastgit.xyz/folke/lua-dev.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://hub.fastgit.xyz/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://hub.fastgit.xyz/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://hub.fastgit.xyz/rktjmp/lush.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://hub.fastgit.xyz/EdenEast/nightfox.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://hub.fastgit.xyz/shaunsingh/nord.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://hub.fastgit.xyz/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://hub.fastgit.xyz/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://hub.fastgit.xyz/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://hub.fastgit.xyz/ravenxrz/nvim-dap"
  },
  ["nvim-dap-go"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/opt/nvim-dap-go",
    url = "https://hub.fastgit.xyz/leoluz/nvim-dap-go"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://hub.fastgit.xyz/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://hub.fastgit.xyz/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://hub.fastgit.xyz/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://hub.fastgit.xyz/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://hub.fastgit.xyz/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://hub.fastgit.xyz/neovim/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://hub.fastgit.xyz/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://hub.fastgit.xyz/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://hub.fastgit.xyz/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://hub.fastgit.xyz/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://hub.fastgit.xyz/kyazdani42/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://hub.fastgit.xyz/mhartington/oceanic-next"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/opt/one-small-step-for-vimkind",
    url = "https://hub.fastgit.xyz/jbyuki/one-small-step-for-vimkind"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://hub.fastgit.xyz/ful1e5/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://hub.fastgit.xyz/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://hub.fastgit.xyz/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://hub.fastgit.xyz/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://hub.fastgit.xyz/ahmedkhalf/project.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://hub.fastgit.xyz/b0o/schemastore.nvim"
  },
  sniprun = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/sniprun",
    url = "https://hub.fastgit.xyz/michaelb/sniprun"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://hub.fastgit.xyz/tami5/sqlite.lua"
  },
  ["surround.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/surround.nvim",
    url = "https://hub.fastgit.xyz/ur4ltz/surround.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-env.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-env.nvim",
    url = "https://hub.fastgit.xyz/LinArcX/telescope-env.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-raw.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-live-grep-raw.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-live-grep-raw.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim",
    url = "https://hub.fastgit.xyz/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://hub.fastgit.xyz/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://hub.fastgit.xyz/folke/tokyonight.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://hub.fastgit.xyz/moll/vim-bbye"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://hub.fastgit.xyz/MattesGroeger/vim-bookmarks"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://hub.fastgit.xyz/fatih/vim-go"
  },
  ["vim-licenses"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-licenses",
    url = "https://hub.fastgit.xyz/antoyo/vim-licenses"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://hub.fastgit.xyz/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-ultest",
    url = "https://hub.fastgit.xyz/rcarriga/vim-ultest"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://hub.fastgit.xyz/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/mobus/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://hub.fastgit.xyz/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^dap%-go"] = "nvim-dap-go",
  ["^osv"] = "one-small-step-for-vimkind"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
