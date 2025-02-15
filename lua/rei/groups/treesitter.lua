local config = require("rei.config").settings
local p = require("rei.palette").defaults

local styles = vim.tbl_map(function(value)
  return setmetatable(value, {
    __add = function(a, b)
      return vim.tbl_extend("force", a, b)
    end,
  })
end, config.styles)

return {
  ["@comment"] = { link = "Comment" },
  ["@comment.documentation"] = { link = "Comment" },
  ["@boolean"] = { link = "Boolean" },
  ["@constructor"] = { fg = p.subtext3 },
  ["@constant.builtin"] = { fg = p.yellow },

  ["@keyword"] = { link = "Keyword" },
  ["@keyword.modifier"] = { link = "Keyword" },
  ["@keyword.repeat"] = { link = "Repeat" },
  ["@keyword.function"] = { link = "Function" },
  ["@keyword.operator"] = { link = "Operator" },
  ["@keyword.import"] = { link = "Include" } + styles.keywords,
  ["@keyword.clojure"] = { fg = p.bright_red } + styles.keywords,

  ["@namespace"] = { fg = p.red, italic = true },
  ["@parameter"] = { fg = p.fg },
  ["@property"] = {fg = p.fg },

  ["@punctuation"] = { fg = p.subtext1 },
  ["@punctuation.delimiter"] = { fg = p.subtext1 },
  ["@punctuation.bracket"] = { fg = p.subtext3 },
  ["@punctuation.special"] = { fg = p.subtext1 },

  ["@string.documentation"] = { fg = p.green } + styles.comments,
  ["@string.regex"] = { fg = p.purple },
  ["@string.escape"] = { fg = p.magenta },
  ["@string.special.url"] = { fg = p.bright_green, underline = true },

  ["@symbol"] = { fg = p.yellow },
  ["@tag"] = { fg = p.red },
  ["@tag.attribute"] = { fg = p.cyan, italic = true },
  ["@tag.delimiter"] = { fg = p.subtext1 },
  ["@type.builtin"] = { fg = p.magenta },
  ["@variable"] = { fg = p.fg } + styles.variables,
  ["@variable.builtin"] = { fg = p.purple } + styles.variables,
  ["@variable.parameter"] = { fg = p.parameter } + styles.variables,
  ["@constructor.javascript"] = { fg = p.red },

  ["@text.underline"] = { link = "Underlined" },
  ["@text.strong"] = { bold = true },
  ["@text.strikethrough"] = { strikethrough = true },
  ["@text.italic"] = { italic = true },

  ["@markup.heading"] = { fg = p.fg, bold = true },
  ["@markup.heading.1"] = { fg = p.blue, bold = true },
  ["@markup.heading.1.marker"] = { link = "@comment" },
  ["@markup.heading.2"] = { fg = p.blue, bold = true },
  ["@markup.heading.2.marker"] = { link = "@comment" },
  ["@markup.heading.3"] = { fg = p.blue, bold = true },
  ["@markup.heading.3.marker"] = { link = "@comment" },
  ["@markup.heading.4"] = { fg = p.blue, bold = true },
  ["@markup.heading.4.marker"] = { link = "@comment" },
  ["@markup.heading.5"] = { fg = p.blue, bold = true },
  ["@markup.heading.5.marker"] = { link = "@comment" },
  ["@markup.heading.6"] = { fg = p.blue, bold = true },
  ["@markup.heading.6.marker"] = { link = "@comment" },
  ["@markup.link"] = { fg = p.subtext1 },
  ["@markup.link.label"] = { fg = p.red },
  ["@markup.link.url"] = { fg = p.purple },
  ["@markup.list"] = { fg = p.subtext4, bold = true },
  ["@markup.list.checked"] = { fg = p.subtext4 },
  ["@markup.list.unchecked"] = { fg = p.subtext4 },
  ["@markup.raw.block"] = { fg = p.subtext4 },
  ["@markup.raw.delimiter"] = { fg = p.subtext4 },
  ["@markup.quote"] = { fg = p.subtext1 },
  ["@markup.list.checked.markdown"] = { fg = p.green },
  ["@markup.underline"] = { link = "@text.underline" },
  ["@markup.strong"] = { link = "@text.strong" },
  ["@markup.italic"] = { link = "@text.italic" },
  ["@markup.strikethrough"] = { link = "@text.strikethrough" },
}
