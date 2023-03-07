-- set colorscheme to tokyonight with protected call
-- in case it isn't installed
local status, _ = pcall(require, "tokyonight")
if not status then
	print("Colorscheme not installed") -- print error if colorscheme not installed
	return
end

vim.cmd([[
	let hr = (strftime('%H'))
  if hr >= 18
    colorscheme tokyonight-night
  elseif hr >= 6
    colorscheme tokyonight-day
  elseif hr >= 0
    colorscheme tokyonight-night
  endif
]])
