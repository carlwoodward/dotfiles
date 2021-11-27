require'lualine'.setup {
  options = {theme = 'github'},
  sections = {
    lualine_a = {{'mode', fmt = function(str) return str:sub(1,1) end}},
    lualine_b = {'branch'},
    lualine_c = {
      {
        'filename',
        file_status = false,  -- displays file status (readonly status, modified status)
        path = 1,            -- 0 = just filename, 1 = relative path, 2 = absolute path
        shorting_target = 40 -- Shortens path to leave 40 space in the window
        -- for other components. Terrible name any suggestions?
      }
    }
  }
}
