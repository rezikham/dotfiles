--set guifont=JetBrainsMono\ Nerd\ Font\ Regular\ Font:h10,\ JetBrainsMono\ Nerd\ Font\ Regular\ Font:h11,\ Fira\ Sans\ Regular\ Font:h11
vim.cmd([[
  set guifont=JetBrainsMonoNL\ Nerd\ Font\ Mono\ Regular\ Font:h10
  let g:neovide_transparency = 0.9
  let g:transparency = 1.0
  let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
  let g:neovide_cursor_vfx_mode = "pixiedust"
  let g:neovide_scale_factor = 0.73
  let g:neovide_refresh_rate = 60
  let g:neovide_refresh_rate_idle = 15
  let g:neovide_remember_window_size = v:true
  let g:neovide_cursor_animation_length=0.1
  let g:neovide_cursor_trail_size = 0.2
  let g:neovide_cursor_vfx_particle_lifetime = 2
  let g:neovide_cursor_vfx_particle_density = 50
]])
