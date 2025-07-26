# Code Blocks

Example code-blocks are shown below.

## Lua

Here is a simple `lua` codeblock.

```{.lua}
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 100 })
  end,
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  pattern = "*",
})
```

## Python

Here is a `python` codeblock with line numbers.

```{.python .numberLines}
def greet():
    print("Hello, World!")

greet()
```

## Cpp

Here is a `cpp` codeblock with line numbers starting from 10.

```{#lst:cppcode .cpp caption="Cpp Program" .numberLines startFrom="10"}
!include "main.cpp"
```

---
