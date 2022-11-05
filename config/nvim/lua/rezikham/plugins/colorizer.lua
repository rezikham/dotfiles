local status, colorizer = pcall(require, "colorizer")
if not status then
	print("Colorizer not installed")
	return
end

colorizer.setup({
	user_default_options = {
		AARRGGBB = true,
	},
})
