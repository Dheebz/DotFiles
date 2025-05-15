-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃  Python Snippets                                                      ┃
-- ┃  File: ~/.config/nvim/lua/profiles/dheebz/snippets/python.lua         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Helper to get relative file path
local function relpath(_, _)
  return vim.fn.expand("%:~:.")
end

ls.add_snippets("python", {
  s("pyheader", {
    t({ "#!/usr/bin/env python3", "" }),
    t({ "# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓" }),
    t({ "# ┃  " }),
    i(1, "Description"),
    t({ "                                                     ┃" }),
    t({ "# ┃  File: " }),
    f(relpath, {}, {}),
    t({ "  ┃" }),
    t({ "# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛", "", "" }),
    i(0),
  }),

  s("pyfooter", {
    t({ "# End of File: " }),
    f(relpath, {}, {}),
  }),
})

-- End of File: ~/.config/nvim/lua/profiles/dheebz/snippets/python.lua
