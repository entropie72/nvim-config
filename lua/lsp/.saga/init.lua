local saga = require("lspsaga")
saga.init_lsp_saga({
  code_action_icon = "",
  code_action_prompt = {
    enable = false,
    sign = false,
    sign_priority = 40,
    virtual_text = true,
  },
})
