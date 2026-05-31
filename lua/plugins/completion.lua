return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion = opts.completion or {}
    opts.completion.trigger = opts.completion.trigger or {}
    opts.completion.trigger.show_on_insert_on_trigger_character = false
    opts.completion.trigger.show_on_keyword = false
    opts.completion.trigger.show_on_trigger_character = false

    opts.keymap = opts.keymap or {}
    -- preserve existing bindings and add Tab to open completion (like Ctrl+Space)
    opts.keymap["<Tab>"] = {
      function(cmp)
        local col = vim.fn.col(".") - 1
        local line = vim.fn.getline(".")
        local before_cursor = line:sub(1, col)
        local only_whitespace = before_cursor:match("^%s*$")
        if only_whitespace then
          return -- fallback to normal Tab (indent)
        end
        if cmp.is_visible() then
          return cmp.select_next()
        else
          return cmp.show()
        end
      end,
      "fallback",
    }
    opts.keymap["<S-Tab>"] = {
      function(cmp)
        if cmp.is_visible() then
          return cmp.select_prev()
        end
      end,
      "fallback",
    }

    return opts
  end,
}
