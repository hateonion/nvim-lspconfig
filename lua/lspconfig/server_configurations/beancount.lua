local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'beancount-language-server', '--stdio' },
    filetypes = { 'beancount', 'bean' },
    root_dir = util.find_git_ancestor,
    init_options = {
      -- this is the path to the beancout journal file
      journel_file = '',
    },
  },
  docs = {
    description = [[
https://github.com/polarmutex/beancount-language-server#installation

See https://github.com/polarmutex/beancount-language-server#configuration for configuration options
]],
    default_config = {
      root_dir = [[root_pattern("elm.json")]],
    },
  },
}
