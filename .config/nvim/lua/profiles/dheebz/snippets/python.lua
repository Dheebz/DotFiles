-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Python Snippets                                                      ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/snippets/python.lua         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local ls = require("luasnip")

ls.add_snippets("python", {
  ls.parser.parse_snippet(
    "pyheader",
    [[
#!/usr/bin/env python3
# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃  ${1:Description}                                                     ┃
# ┃  File: ${2:src/path/to}/${3:filename}.py                              ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛


$0
    ]]
  ),
  ls.parser.parse_snippet(
    "pyfooter",
    [[
# End of File: ${1:src/path/to}/${2:filename}.py
    ]]
  ),
})


-- End of File: ~/.config/nvim/lua/profiles/dheebz/snippets/python.lua
