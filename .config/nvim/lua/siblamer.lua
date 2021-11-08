local action_state = require('telescope.actions')
require('telescope').setup{
  defaults = {
      prompt_prefix = "$ ",
      mappings = {
          i = {
            ["<c-a>"] = false
          }
      }
 }
}

local mappings = {

}
mappings.curr_buf = function() 
  local opt = require('telescope.themes').get_dropdown({height=15, previewer=false})
  require('telescope.builtin').current_buffer_fuzzy_find(opt)
  print("123123123213123123132")
end

mappings.file_browser = function()
  require('telescope.builtin').file_browser({hidden=true})
end

return mappings
