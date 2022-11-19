-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)

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
  LuaSnip = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Nvim-R"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/Nvim-R",
    url = "https://github.com/jalvesaq/Nvim-R"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot-cmp"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0<\0\0\0>\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0\28@�\0\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\f\0\0\0\0\0\0\0copilot_cmp\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0=\0\0\0=\0\0\0=\0\0\0=\0\0\0=\0\0\0>\0\0\0\0\0\0\0\0\0\0\0" },
    load_after = {
      ["copilot.lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/opt/copilot-cmp",
    url = "https://github.com/zbirenbaum/copilot-cmp"
  },
  ["copilot.lua"] = {
    after = { "copilot-cmp" },
    config = { "\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0003\0\0\0007\0\0\0\0\0\0\2\5\0\0\0\5\0\0\0\6@@\0d\0\0\0\28@\0\1\30\0�\0\2\0\0\0\4\4\0\0\0\0\0\0\0vim\0\4\t\0\0\0\0\0\0\0schedule\0\1\0\0\0\0\0\0\0\0\0\0\0004\0\0\0006\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0\28@�\0\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\b\0\0\0\0\0\0\0copilot\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0005\0\0\0005\0\0\0005\0\0\0005\0\0\0005\0\0\0006\0\0\0\0\0\0\0\0\0\0\0\5\0\0\0004\0\0\0004\0\0\0006\0\0\0004\0\0\0007\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0�\0\0\0�\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0J\0\0\0\28@\0\1\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\t\0\0\0\0\0\0\0gitsigns\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\a\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["headlines.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0J\0\0\0L\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0\28@�\0\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\n\0\0\0\0\0\0\0headlines\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0L\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0C\0\0\0E\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0\28@�\0\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\a\0\0\0\0\0\0\0neodev\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0D\0\0\0D\0\0\0D\0\0\0D\0\0\0D\0\0\0E\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-autopairs"] = {
    config = { "\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0Z\0\0\0\\\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0J\0\0\0\28@\0\1\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0nvim-autopairs\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\a\0\0\0[\0\0\0[\0\0\0[\0\0\0[\0\0\0[\0\0\0[\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0" },
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  tagbar = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["vim-pandoc"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/vim-pandoc",
    url = "https://github.com/vim-pandoc/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax",
    url = "https://github.com/vim-pandoc/vim-pandoc-syntax"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/parallels/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0�\0\0\0�\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0J\0\0\0\28@\0\1\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\t\0\0\0\0\0\0\0gitsigns\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\a\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\0\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0Z\0\0\0\\\0\0\0\0\0\0\2\a\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0J\0\0\0\28@\0\1\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\15\0\0\0\0\0\0\0nvim-autopairs\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\a\0\0\0[\0\0\0[\0\0\0[\0\0\0[\0\0\0[\0\0\0[\0\0\0\\\0\0\0\0\0\0\0\0\0\0\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0C\0\0\0E\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0\28@�\0\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\a\0\0\0\0\0\0\0neodev\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0D\0\0\0D\0\0\0D\0\0\0D\0\0\0D\0\0\0E\0\0\0\0\0\0\0\0\0\0\0", "config", "neodev.nvim")
time([[Config for neodev.nvim]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LuaQ\0\1\4\b\4\b\0002\0\0\0\0\0\0\0@/home/parallels/.config/nvim/lua/packer_init.lua\0J\0\0\0L\0\0\0\0\0\0\2\6\0\0\0\5\0\0\0A@\0\0\28�\0\1\6�@\0\28@�\0\30\0�\0\3\0\0\0\4\b\0\0\0\0\0\0\0require\0\4\n\0\0\0\0\0\0\0headlines\0\4\6\0\0\0\0\0\0\0setup\0\0\0\0\0\6\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0K\0\0\0L\0\0\0\0\0\0\0\0\0\0\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'copilot.lua'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end