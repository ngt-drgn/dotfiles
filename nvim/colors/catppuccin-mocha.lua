-- Catppuccin Mocha port of dacctal's vis editor theme theme

vim.g.colors_name = "catppuccin-mocha-vis"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- catppuccin mocha palette
  base      = "#1e1e2e",
  mantle    = "#181825",
  crust     = "#11111b",
  text      = "#cdd6f4",
  subtext1  = "#bac2de",
  subtext0  = "#a6adc8",
  overlay2  = "#9399b2",
  overlay1  = "#7f849c",
  overlay0  = "#6c7086",
  surface2  = "#585b70",
  surface1  = "#45475a",
  surface0  = "#313244",
  lavender  = "#b4befe",
  blue      = "#89b4fa",
  sapphire  = "#74c7ec",
  sky       = "#89dceb",
  teal      = "#94e2d5",
  green     = "#a6e3a1",
  yellow    = "#f9e2af",
  peach     = "#fab387",
  maroon    = "#eba0ac",
  red       = "#f38ba8",
  mauve     = "#cba6f7",
  pink      = "#f5c2e7",
  flamingo  = "#f2cdcd",
  rosewater = "#f5e0dc",
}

local h = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================
-- Editor chrome (from vis's STYLE_DEFAULT / status / cursor)
-- ============================================================
h("Normal",       { fg = c.text, bg = c.base })
h("NormalNC",     { fg = c.text, bg = c.base })
h("NormalFloat",  { fg = c.text, bg = c.mantle })
h("FloatBorder",  { fg = c.surface1, bg = c.mantle })
h("Pmenu",        { fg = c.text, bg = c.mantle })
h("PmenuSel",     { fg = c.base, bg = c.peach, bold = true })   -- like vis selection
h("PmenuSbar",    { bg = c.surface0 })
h("PmenuThumb",   { bg = c.surface2 })
h("SignColumn",   { fg = c.overlay1, bg = c.base })
h("LineNr",       { fg = c.overlay0, bg = c.base })              -- STYLE_LINENUMBER
h("CursorLineNr", { fg = c.yellow, bg = c.base, bold = true })   -- STYLE_LINENUMBER_CURSOR
h("CursorLine",   { underline = true })                          -- STYLE_CURSOR_LINE
h("ColorColumn",  { bg = c.mantle })                             -- STYLE_COLOR_COLUMN
h("CursorColumn", { underline = true })
h("Cursor",       { fg = c.base, bg = c.text })                  -- STYLE_CURSOR
h("lCursor",      { fg = c.base, bg = c.text })
h("TermCursor",   { fg = c.base, bg = c.text })
h("TermCursorNC", { fg = c.base, bg = c.overlay1 })
h("Visual",       { fg = c.base, bg = c.yellow })                -- STYLE_SELECTION
h("Search",       { fg = c.base, bg = c.yellow })
h("IncSearch",    { fg = c.base, bg = c.peach })
h("CurSearch",    { fg = c.base, bg = c.peach })
h("MatchParen",   { fg = c.peach, bold = true })
h("Whitespace",   {})                                            -- STYLE_WHITESPACE
h("NonText",      { fg = c.surface1 })
h("EndOfBuffer",  { fg = c.base })                               -- STYLE_EOF
h("SpecialKey",   { fg = c.surface1 })

-- Status line: unfocused = dark bg + gray text; focused = inverted + bold
h("StatusLine",       { fg = c.subtext0, bg = c.mantle })        -- STYLE_STATUS
h("StatusLineNC",     { fg = c.overlay1, bg = c.mantle })
h("StatusLineTerm",   { fg = c.subtext0, bg = c.mantle })
h("StatusLineTermNC", { fg = c.overlay1, bg = c.mantle })
h("TabLine",          { fg = c.subtext0, bg = c.mantle })
h("TabLineFill",      { fg = c.text, bg = c.mantle })
h("TabLineSel",       { fg = c.mantle, bg = c.subtext0, bold = true }) -- STYLE_STATUS_FOCUSED
h("WinBar",           { fg = c.subtext0, bg = c.mantle })
h("WinBarNC",         { fg = c.overlay1, bg = c.mantle })
h("WinSeparator",     { fg = c.surface1, bg = c.base })          -- STYLE_SEPARATOR
h("VertSplit",        { fg = c.surface1, bg = c.base })

-- Diagnostics / messages (STYLE_ERROR / STYLE_INFO flavored)
h("ErrorMsg",    { fg = c.red })
h("WarningMsg",  { fg = c.peach })
h("ModeMsg",     { fg = c.text, bold = true })                   -- STYLE_INFO
h("MoreMsg",     { fg = c.green })
h("Question",    { fg = c.green })
h("Title",       { fg = c.peach, bold = true })
h("Directory",   { fg = c.blue })

-- Diff
h("DiffAdd",    { fg = c.green,  bg = c.mantle })
h("DiffChange", { fg = c.yellow, bg = c.mantle })
h("DiffDelete", { fg = c.red,    bg = c.mantle })
h("DiffText",   { fg = c.blue,   bg = c.mantle })

-- Spelling
h("SpellBad",   { sp = c.red,   undercurl = true })
h("SpellCap",   { sp = c.blue,  undercurl = true })
h("SpellLocal", { sp = c.teal,  undercurl = true })
h("SpellRare",  { sp = c.mauve, undercurl = true })

-- ============================================================
-- Syntax (ported from vis lexers.*)
-- ============================================================
h("Comment",        { fg = c.subtext0 })                 -- STYLE_COMMENT
h("Constant",       { fg = c.sapphire })                 -- STYLE_CONSTANT
h("String",         { fg = c.green })                    -- STYLE_STRING
h("Character",      { fg = c.green })
h("Number",         { fg = c.mauve })                    -- STYLE_NUMBER
h("Boolean",        { fg = c.mauve })
h("Float",          { fg = c.mauve })
h("Identifier",     { fg = c.blue })                     -- STYLE_IDENTIFIER
h("Function",       { fg = c.peach })                    -- STYLE_FUNCTION
h("Statement",      { fg = c.red })                      -- STYLE_KEYWORD
h("Conditional",    { fg = c.red })
h("Repeat",         { fg = c.red })
h("Label",          { fg = c.text })                     -- STYLE_LABEL
h("Operator",       { fg = c.text })                     -- STYLE_OPERATOR
h("Keyword",        { fg = c.red })
h("Exception",      { fg = c.red })
h("PreProc",        { fg = c.text })                     -- STYLE_PREPROCESSOR
h("Include",        { fg = c.text })
h("Define",         { fg = c.text })
h("Macro",          { fg = c.text })
h("PreCondit",      { fg = c.text })
h("Type",           { fg = c.sapphire, bold = true })    -- STYLE_TYPE
h("StorageClass",   { fg = c.red })
h("Structure",      { fg = c.sapphire, bold = true })
h("Typedef",        { fg = c.sapphire, bold = true })
h("Special",        { fg = c.text })
h("SpecialChar",    { fg = c.text })
h("Tag",            { fg = c.text })                     -- STYLE_TAG
h("Delimiter",      { fg = c.text })
h("SpecialComment", { fg = c.subtext0 })
h("Debug",          { fg = c.red })
h("Underlined",     { fg = c.blue, underline = true })
h("Ignore",         { fg = c.overlay1 })
h("Error",          { fg = c.red })                      -- STYLE_ERROR
h("Todo",           { fg = c.yellow, bold = true })

-- Treesitter (aligns groups with the vis port above)
h("@comment",            { fg = c.subtext0 })
h("@string",             { fg = c.green })
h("@string.escape",      { fg = c.peach })
h("@string.special",     { fg = c.peach })
h("@number",             { fg = c.mauve })
h("@boolean",            { fg = c.mauve })
h("@constant",           { fg = c.sapphire })
h("@constant.builtin",   { fg = c.sapphire })
h("@function",           { fg = c.peach })
h("@function.builtin",   { fg = c.peach })
h("@function.method",    { fg = c.peach })
h("@keyword",            { fg = c.red })
h("@keyword.function",   { fg = c.red })
h("@keyword.operator",   { fg = c.red })
h("@keyword.return",     { fg = c.red })
h("@operator",           { fg = c.text })
h("@variable",           { fg = c.text })                -- STYLE_VARIABLE
h("@variable.builtin",   { fg = c.blue })
h("@variable.parameter", { fg = c.text })
h("@type",               { fg = c.sapphire, bold = true })
h("@type.builtin",       { fg = c.sapphire, bold = true })
h("@constructor",        { fg = c.sapphire, bold = true })
h("@tag",                { fg = c.text })
h("@tag.attribute",      { fg = c.peach })
h("@tag.delimiter",      { fg = c.text })
h("@punctuation",        { fg = c.text })
h("@markup.heading",     { fg = c.peach, bold = true })
h("@markup.link",        { fg = c.blue })

-- LSP semantic tokens
h("@lsp.type.variable",      { fg = c.text })
h("@lsp.type.function",      { fg = c.peach })
h("@lsp.type.method",        { fg = c.peach })
h("@lsp.type.class",         { fg = c.sapphire, bold = true })
h("@lsp.type.type",          { fg = c.sapphire, bold = true })
h("@lsp.type.parameter",     { fg = c.text })
h("@lsp.type.property",      { fg = c.text })
h("@lsp.type.keyword",       { fg = c.red })
h("@lsp.type.comment",       { fg = c.subtext0 })

-- Diagnostics
h("DiagnosticError",          { fg = c.red })
h("DiagnosticWarn",           { fg = c.peach })
h("DiagnosticInfo",           { fg = c.sapphire })
h("DiagnosticHint",           { fg = c.teal })
h("DiagnosticUnderlineError", { sp = c.red,    undercurl = true })
h("DiagnosticUnderlineWarn",  { sp = c.peach,  undercurl = true })
h("DiagnosticUnderlineInfo",  { sp = c.sapphire, undercurl = true })
h("DiagnosticUnderlineHint",  { sp = c.teal,   undercurl = true })

-- Gitsigns-style highlights
h("GitSignsAdd",    { fg = c.green,  bg = c.base })
h("GitSignsChange", { fg = c.yellow, bg = c.base })
h("GitSignsDelete", { fg = c.red,    bg = c.base })

-- ============================================================
-- Mode-colored bottom line (vis-style: the WHOLE bar changes
-- color with the mode, like vis's per-mode statusbar style)
--
-- Implementation notes (based on how hand-rolled nvim statuslines
-- are actually done):
--   * Active/inactive functions + WINDOW-LOCAL 'statusline' set by
--     WinEnter/WinLeave autocmds (%! alone can't distinguish windows).
--   * Mode detection via nvim_get_mode().mode, refreshed by
--     redrawstatus on ModeChanged.
--   * Ending the string with %#Group# makes that group fill all
--     remaining space -> the entire bar is one solid color.
-- ============================================================

-- Dark text on a mode-colored background.
h("MochaModeNormal",   { fg = c.mantle, bg = c.blue,   bold = true })
h("MochaModeInsert",   { fg = c.mantle, bg = c.green,  bold = true })
h("MochaModeVisual",   { fg = c.mantle, bg = c.yellow, bold = true })
h("MochaModeReplace",  { fg = c.mantle, bg = c.red,    bold = true })
h("MochaModeCommand",  { fg = c.mantle, bg = c.mauve,  bold = true })
h("MochaModeTerminal", { fg = c.mantle, bg = c.teal,   bold = true })
-- Unfocused windows: plain gray bar (like vis's STYLE_STATUS).
h("MochaStatusNC",     { fg = c.subtext0, bg = c.mantle })

local V_BLOCK = string.char(22)  -- Ctrl-V blockwise visual
local S_BLOCK = string.char(19)  -- Ctrl-S blockwise select

local mode_map = {
  n         = { g = "MochaModeNormal",   l = " NORMAL " },
  no        = { g = "MochaModeNormal",   l = " NORMAL " },
  i         = { g = "MochaModeInsert",   l = " INSERT " },
  ic        = { g = "MochaModeInsert",   l = " INSERT " },
  ix        = { g = "MochaModeInsert",   l = " INSERT " },
  v         = { g = "MochaModeVisual",   l = " VISUAL " },
  V         = { g = "MochaModeVisual",   l = " V-LINE " },
  [V_BLOCK] = { g = "MochaModeVisual",   l = " V-BLOCK " },
  s         = { g = "MochaModeVisual",   l = " SELECT " },
  S         = { g = "MochaModeVisual",   l = " S-LINE " },
  [S_BLOCK] = { g = "MochaModeVisual",   l = " S-BLOCK " },
  R         = { g = "MochaModeReplace",  l = " REPLACE " },
  Rc        = { g = "MochaModeReplace",  l = " REPLACE " },
  Rv        = { g = "MochaModeReplace",  l = " V-REPLACE " },
  c         = { g = "MochaModeCommand",  l = " COMMAND " },
  cv        = { g = "MochaModeCommand",  l = " EX " },
  ce        = { g = "MochaModeCommand",  l = " EX " },
  t         = { g = "MochaModeTerminal", l = " TERMINAL " },
}

-- Globals: %! options can only call global Lua functions.
function _G.mocha_stl_active()
  local m = vim.api.nvim_get_mode().mode
  local e = mode_map[m] or { g = "MochaModeNormal", l = " " .. m:upper() .. " " }
  return table.concat({
    "%#", e.g, "#",                 -- whole bar takes the mode color
    e.l,                            --   NORMAL / INSERT / VISUAL / ...
    " %f%m%r%h",                    -- file, modified, readonly, help
    "%=",                           -- right-align the rest
    "%{&filetype==''?'none':&filetype}", " | ",
    "%l:%c", " | ", "%P ",
    "%#", e.g, "#",                 -- trailing group fills remaining space
  })
end

function _G.mocha_stl_inactive()
  return table.concat({
    "%#MochaStatusNC# %f%m%r",
    "%=%l:%c %#MochaStatusNC#",
  })
end

vim.o.laststatus = 2  -- vis always shows the status bar
vim.o.statusline = "%!v:lua._G.mocha_stl_active()"

local aug = vim.api.nvim_create_augroup("MochaVisModeLine", { clear = true })

vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter", "TermEnter" }, {
  group = aug,
  desc = "Mocha statusline: active (mode-colored)",
  callback = function()
    vim.opt_local.statusline = "%!v:lua._G.mocha_stl_active()"
  end,
})

vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = aug,
  desc = "Mocha statusline: inactive (gray)",
  callback = function()
    vim.opt_local.statusline = "%!v:lua._G.mocha_stl_inactive()"
  end,
})

-- Recolor the bar instantly whenever the mode changes.
vim.api.nvim_create_autocmd({ "ModeChanged", "TermEnter" }, {
  group = aug,
  callback = function()
    vim.cmd("redrawstatus")
  end,
})

