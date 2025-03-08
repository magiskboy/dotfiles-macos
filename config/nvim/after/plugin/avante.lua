local provider = 'gemini';

require('avante').setup({
  provider = provider,
  auto_suggestions_provider = provider,

  behaviour = {
    auto_suggestions = false,
  },

  mappings = {
    suggestion = {
      accept = "<C-Enter>",
    },
     submit = {
      insert = "<C-Enter>",
    },

    windows = {
      sidebar_header = {
        enabled = false
      },
      edit = {
        border = 'none'
      },
      ask = {
        border = 'none'
      }
    },
  }
});
