return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    opts = {
      cmdline = { enabled = true },
      appearance = { nerd_font_variant = "mono" },
      fuzzy = { implementation = "prefer_rust" },
      sources = {
        default = {
          "lsp",
          "snippets",
          "buffer",
          "path",
        },
        per_filetype = {
          codecompanion = { "codecompanion" },
        },
      },
      keymap = {
        ['<Tab>'] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_and_accept()
            end
          end,
          'snippet_forward',
          'fallback'
        },
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<A-k>'] = { 'scroll_documentation_up' },
        ['<A-j>'] = { 'scroll_documentation_down' },
      },
      completion = {
        ghost_text = { enabled = true },
        keyword = { range = "full" },
        documentation = {
          window = {
            border = nil,
            scrollbar = false,
            winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
          },
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        menu = {
          draw = {
            columns = {
              { "label",     "label_description", gap = 1 },
              { "kind_icon", "kind",              "source_name", gap = 1 },
              --[[
              { "kind_icon" },
              { "label",     "label_description", gap = 1, },
              { "kind" },
              ]] --
            },
            components = {
              source_name = { text = function(ctx) return ctx.item.client_name or ctx.item.source_name end },
            },
          },
        },
        trigger = { show_in_snippet = false },
      },
      signature = { enabled = true },
    },
    opts_extend = { "sources.default" },
  },
}
