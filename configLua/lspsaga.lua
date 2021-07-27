local saga = require 'lspsaga'
saga.init_lsp_saga{
  error_sign = '❌',
  hint_sign = '💡',
  warn_sign = '⚠️',
  code_action_icon = ' ',
  -- border_style = "round",
  code_action_prompt = {
  enable = false,
  sign = false,
  sign_priority = 20,
  -- virtual_text = true,
  },  
}
