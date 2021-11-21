require'lualine'.setup {
  options = {theme = 'github'},
  sections = {lualine_a = {
    {'mode', fmt = function(str) return str:sub(1,1) end}},
    lualine_b = {'branch'}}
}
