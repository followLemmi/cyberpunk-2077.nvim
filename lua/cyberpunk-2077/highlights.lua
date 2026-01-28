local M = {}

function M.setup(colors)
  local highlights = {
    -- Editor
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg_dark },
    NormalNC = { fg = colors.fg, bg = colors.bg },
    FloatBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    FloatTitle = { fg = colors.electric_blue, bg = colors.bg_dark, bold = true },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorLine = { bg = colors.cursor_line },
    CursorColumn = { bg = colors.cursor_line },
    ColorColumn = { bg = colors.bg_light },
    LineNr = { fg = colors.line_nr },
    CursorLineNr = { fg = colors.electric_blue, bold = true },
    SignColumn = { fg = colors.fg_dark, bg = colors.bg },
    VertSplit = { fg = colors.bg_light },
    WinSeparator = { fg = colors.bg_light },
    Folded = { fg = colors.comment, bg = colors.bg_light },
    FoldColumn = { fg = colors.comment },
    NonText = { fg = colors.bg_lighter },
    SpecialKey = { fg = colors.bg_lighter },
    Whitespace = { fg = colors.bg_lighter },
    EndOfBuffer = { fg = colors.bg },

    -- Popup menu
    Pmenu = { fg = colors.fg, bg = colors.bg_dark },
    PmenuSel = { fg = colors.bg, bg = colors.electric_blue },
    PmenuSbar = { bg = colors.bg_light },
    PmenuThumb = { bg = colors.fg_dark },

    -- Search
    Search = { fg = colors.bg, bg = colors.yellow },
    IncSearch = { fg = colors.bg, bg = colors.orange },
    CurSearch = { fg = colors.bg, bg = colors.orange },
    Substitute = { fg = colors.bg, bg = colors.frostbite },

    -- Visual
    Visual = { bg = colors.visual },
    VisualNOS = { bg = colors.visual },

    -- Tabs
    TabLine = { fg = colors.fg_dark, bg = colors.bg_dark },
    TabLineFill = { bg = colors.bg_dark },
    TabLineSel = { fg = colors.fg, bg = colors.bg },

    -- Status line
    StatusLine = { fg = colors.fg, bg = colors.bg_dark },
    StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_dark },

    -- Messages
    ModeMsg = { fg = colors.fg, bold = true },
    MoreMsg = { fg = colors.keppel },
    Question = { fg = colors.keppel },
    ErrorMsg = { fg = colors.error },
    WarningMsg = { fg = colors.warning },

    -- Spelling
    SpellBad = { undercurl = true, sp = colors.error },
    SpellCap = { undercurl = true, sp = colors.warning },
    SpellLocal = { undercurl = true, sp = colors.info },
    SpellRare = { undercurl = true, sp = colors.hint },

    -- Diff
    DiffAdd = { fg = colors.git_add, bg = colors.bg_light },
    DiffChange = { fg = colors.git_change, bg = colors.bg_light },
    DiffDelete = { fg = colors.git_delete, bg = colors.bg_light },
    DiffText = { fg = colors.bg, bg = colors.git_change },

    -- Misc
    Directory = { fg = colors.electric_blue },
    Title = { fg = colors.electric_blue, bold = true },
    Conceal = { fg = colors.fg_dark },
    MatchParen = { fg = colors.match_paren, bold = true },
    WildMenu = { fg = colors.bg, bg = colors.electric_blue },

    -- Syntax
    Comment = { fg = colors.comment, italic = true },
    Constant = { fg = colors.frostbite },
    String = { fg = colors.rich_lemon },
    Character = { fg = colors.rich_lemon },
    Number = { fg = colors.frostbite },
    Boolean = { fg = colors.frostbite },
    Float = { fg = colors.frostbite },

    Identifier = { fg = colors.fg },
    Function = { fg = colors.electric_blue },

    Statement = { fg = colors.electric_blue },
    Conditional = { fg = colors.electric_blue },
    Repeat = { fg = colors.electric_blue },
    Label = { fg = colors.electric_blue },
    Operator = { fg = colors.frostbite },
    Keyword = { fg = colors.steel_pink },
    Exception = { fg = colors.electric_blue },

    PreProc = { fg = colors.steel_pink },
    Include = { fg = colors.steel_pink },
    Define = { fg = colors.steel_pink },
    Macro = { fg = colors.steel_pink },
    PreCondit = { fg = colors.steel_pink },

    Type = { fg = colors.blushing_purple },
    StorageClass = { fg = colors.blushing_purple },
    Structure = { fg = colors.blushing_purple },
    Typedef = { fg = colors.blushing_purple },

    Special = { fg = colors.electric_blue },
    SpecialChar = { fg = colors.frostbite },
    Tag = { fg = colors.keppel },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.comment },
    Debug = { fg = colors.orange },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = colors.error },
    Todo = { fg = colors.bg, bg = colors.yellow, bold = true },

    -- Diagnostics
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticHint = { fg = colors.hint },
    DiagnosticOk = { fg = colors.keppel },

    DiagnosticVirtualTextError = { fg = colors.error, bg = colors.bg_light },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.bg_light },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.bg_light },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = colors.bg_light },

    DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

    DiagnosticFloatingError = { fg = colors.error },
    DiagnosticFloatingWarn = { fg = colors.warning },
    DiagnosticFloatingInfo = { fg = colors.info },
    DiagnosticFloatingHint = { fg = colors.hint },

    DiagnosticSignError = { fg = colors.error },
    DiagnosticSignWarn = { fg = colors.warning },
    DiagnosticSignInfo = { fg = colors.info },
    DiagnosticSignHint = { fg = colors.hint },

    -- LSP
    LspReferenceText = { bg = colors.bg_light },
    LspReferenceRead = { bg = colors.bg_light },
    LspReferenceWrite = { bg = colors.bg_light },
    LspSignatureActiveParameter = { fg = colors.orange },
    LspCodeLens = { fg = colors.comment },
    LspInlayHint = { fg = colors.comment, bg = colors.bg_light },

    -- Treesitter
    ["@text"] = { fg = colors.fg },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { fg = colors.electric_blue, bold = true },
    ["@text.literal"] = { fg = colors.rich_lemon },
    ["@text.uri"] = { fg = colors.keppel, underline = true },
    ["@text.todo"] = { fg = colors.bg, bg = colors.yellow },
    ["@text.note"] = { fg = colors.bg, bg = colors.info },
    ["@text.warning"] = { fg = colors.bg, bg = colors.warning },
    ["@text.danger"] = { fg = colors.bg, bg = colors.error },

    ["@comment"] = { fg = colors.comment, italic = true },
    ["@punctuation"] = { fg = colors.fg },
    ["@punctuation.delimiter"] = { fg = colors.fg },
    ["@punctuation.bracket"] = { fg = colors.fg },
    ["@punctuation.special"] = { fg = colors.electric_blue },

    ["@constant"] = { fg = colors.frostbite },
    ["@constant.builtin"] = { fg = colors.frostbite },
    ["@constant.macro"] = { fg = colors.frostbite },

    ["@string"] = { fg = colors.rich_lemon },
    ["@string.regex"] = { fg = colors.orange },
    ["@string.escape"] = { fg = colors.frostbite },
    ["@string.special"] = { fg = colors.orange },

    ["@character"] = { fg = colors.rich_lemon },
    ["@character.special"] = { fg = colors.frostbite },

    ["@number"] = { fg = colors.frostbite },
    ["@boolean"] = { fg = colors.frostbite },
    ["@float"] = { fg = colors.frostbite },

    ["@function"] = { fg = colors.electric_blue },
    ["@function.builtin"] = { fg = colors.electric_blue },
    ["@function.macro"] = { fg = colors.electric_blue },
    ["@function.call"] = { fg = colors.electric_blue },

    ["@method"] = { fg = colors.electric_blue },
    ["@method.call"] = { fg = colors.electric_blue },

    ["@constructor"] = { fg = colors.electric_blue },
    ["@parameter"] = { fg = colors.fg, italic = true },

    ["@keyword"] = { fg = colors.steel_pink },
    ["@keyword.function"] = { fg = colors.steel_pink },
    ["@keyword.operator"] = { fg = colors.electric_blue },
    ["@keyword.return"] = { fg = colors.steel_pink },

    ["@conditional"] = { fg = colors.electric_blue },
    ["@repeat"] = { fg = colors.electric_blue },
    ["@label"] = { fg = colors.electric_blue },
    ["@operator"] = { fg = colors.frostbite },
    ["@exception"] = { fg = colors.electric_blue },

    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.frostbite },

    ["@type"] = { fg = colors.blushing_purple },
    ["@type.builtin"] = { fg = colors.blushing_purple },
    ["@type.qualifier"] = { fg = colors.steel_pink },
    ["@type.definition"] = { fg = colors.blushing_purple },

    ["@storageclass"] = { fg = colors.steel_pink },
    ["@structure"] = { fg = colors.blushing_purple },
    ["@namespace"] = { fg = colors.blushing_purple },
    ["@include"] = { fg = colors.steel_pink },
    ["@preproc"] = { fg = colors.steel_pink },
    ["@debug"] = { fg = colors.orange },

    ["@tag"] = { fg = colors.keppel },
    ["@tag.attribute"] = { fg = colors.blushing_purple, italic = true },
    ["@tag.delimiter"] = { fg = colors.fg },

    ["@attribute"] = { fg = colors.blushing_purple },
    ["@field"] = { fg = colors.fg },
    ["@property"] = { fg = colors.fg },

    -- Semantic tokens
    ["@lsp.type.class"] = { fg = colors.blushing_purple },
    ["@lsp.type.decorator"] = { fg = colors.blushing_purple },
    ["@lsp.type.enum"] = { fg = colors.blushing_purple },
    ["@lsp.type.enumMember"] = { fg = colors.frostbite },
    ["@lsp.type.function"] = { fg = colors.electric_blue },
    ["@lsp.type.interface"] = { fg = colors.blushing_purple },
    ["@lsp.type.macro"] = { fg = colors.steel_pink },
    ["@lsp.type.method"] = { fg = colors.electric_blue },
    ["@lsp.type.namespace"] = { fg = colors.blushing_purple },
    ["@lsp.type.parameter"] = { fg = colors.fg, italic = true },
    ["@lsp.type.property"] = { fg = colors.fg },
    ["@lsp.type.struct"] = { fg = colors.blushing_purple },
    ["@lsp.type.type"] = { fg = colors.blushing_purple },
    ["@lsp.type.typeParameter"] = { fg = colors.blushing_purple },
    ["@lsp.type.variable"] = { fg = colors.fg },

    -- Git signs
    GitSignsAdd = { fg = colors.git_add },
    GitSignsChange = { fg = colors.git_change },
    GitSignsDelete = { fg = colors.git_delete },

    -- Telescope
    TelescopeNormal = { fg = colors.fg, bg = colors.bg_dark },
    TelescopeBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    TelescopeTitle = { fg = colors.electric_blue, bold = true },
    TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_light },
    TelescopePromptBorder = { fg = colors.electric_blue, bg = colors.bg_light },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.electric_blue, bold = true },
    TelescopePromptPrefix = { fg = colors.electric_blue },
    TelescopeSelection = { fg = colors.fg, bg = colors.bg_light },
    TelescopeSelectionCaret = { fg = colors.electric_blue },
    TelescopeMatching = { fg = colors.yellow, bold = true },
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.keppel, bold = true },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.frostbite, bold = true },

    -- Neo-tree
    NeoTreeNormal = { fg = colors.fg, bg = colors.bg_dark },
    NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg_dark },
    NeoTreeDirectoryIcon = { fg = colors.electric_blue },
    NeoTreeDirectoryName = { fg = colors.electric_blue },
    NeoTreeRootName = { fg = colors.electric_blue, bold = true },
    NeoTreeFileName = { fg = colors.fg },
    NeoTreeFileIcon = { fg = colors.fg },
    NeoTreeGitAdded = { fg = colors.git_add },
    NeoTreeGitConflict = { fg = colors.error },
    NeoTreeGitDeleted = { fg = colors.git_delete },
    NeoTreeGitModified = { fg = colors.git_change },
    NeoTreeGitUntracked = { fg = colors.fg_dark },
    NeoTreeIndentMarker = { fg = colors.bg_lighter },
    NeoTreeExpander = { fg = colors.fg_dark },

    -- nvim-cmp
    CmpItemAbbr = { fg = colors.fg },
    CmpItemAbbrDeprecated = { fg = colors.fg_dark, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.electric_blue, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.electric_blue },
    CmpItemKind = { fg = colors.blushing_purple },
    CmpItemMenu = { fg = colors.fg_dark },

    CmpItemKindClass = { fg = colors.blushing_purple },
    CmpItemKindColor = { fg = colors.frostbite },
    CmpItemKindConstant = { fg = colors.frostbite },
    CmpItemKindConstructor = { fg = colors.electric_blue },
    CmpItemKindEnum = { fg = colors.blushing_purple },
    CmpItemKindEnumMember = { fg = colors.frostbite },
    CmpItemKindEvent = { fg = colors.blushing_purple },
    CmpItemKindField = { fg = colors.fg },
    CmpItemKindFile = { fg = colors.fg },
    CmpItemKindFolder = { fg = colors.electric_blue },
    CmpItemKindFunction = { fg = colors.electric_blue },
    CmpItemKindInterface = { fg = colors.blushing_purple },
    CmpItemKindKeyword = { fg = colors.steel_pink },
    CmpItemKindMethod = { fg = colors.electric_blue },
    CmpItemKindModule = { fg = colors.blushing_purple },
    CmpItemKindOperator = { fg = colors.frostbite },
    CmpItemKindProperty = { fg = colors.fg },
    CmpItemKindReference = { fg = colors.fg },
    CmpItemKindSnippet = { fg = colors.rich_lemon },
    CmpItemKindStruct = { fg = colors.blushing_purple },
    CmpItemKindText = { fg = colors.fg },
    CmpItemKindTypeParameter = { fg = colors.blushing_purple },
    CmpItemKindUnit = { fg = colors.frostbite },
    CmpItemKindValue = { fg = colors.frostbite },
    CmpItemKindVariable = { fg = colors.fg },

    -- Indent blankline
    IndentBlanklineChar = { fg = colors.bg_lighter },
    IndentBlanklineContextChar = { fg = colors.electric_blue },
    IblIndent = { fg = colors.bg_lighter },
    IblScope = { fg = colors.electric_blue },

    -- Notify
    NotifyERRORBorder = { fg = colors.error },
    NotifyERRORIcon = { fg = colors.error },
    NotifyERRORTitle = { fg = colors.error },
    NotifyWARNBorder = { fg = colors.warning },
    NotifyWARNIcon = { fg = colors.warning },
    NotifyWARNTitle = { fg = colors.warning },
    NotifyINFOBorder = { fg = colors.info },
    NotifyINFOIcon = { fg = colors.info },
    NotifyINFOTitle = { fg = colors.info },
    NotifyDEBUGBorder = { fg = colors.comment },
    NotifyDEBUGIcon = { fg = colors.comment },
    NotifyDEBUGTitle = { fg = colors.comment },
    NotifyTRACEBorder = { fg = colors.blushing_purple },
    NotifyTRACEIcon = { fg = colors.blushing_purple },
    NotifyTRACETitle = { fg = colors.blushing_purple },

    -- Which-key
    WhichKey = { fg = colors.electric_blue },
    WhichKeyGroup = { fg = colors.steel_pink },
    WhichKeySeparator = { fg = colors.comment },
    WhichKeyDesc = { fg = colors.fg },
    WhichKeyFloat = { bg = colors.bg_dark },
    WhichKeyBorder = { fg = colors.electric_blue },
    WhichKeyValue = { fg = colors.fg_dark },

    -- Lazy
    LazyButton = { fg = colors.fg, bg = colors.bg_light },
    LazyButtonActive = { fg = colors.bg, bg = colors.electric_blue },
    LazyH1 = { fg = colors.bg, bg = colors.electric_blue, bold = true },
    LazyH2 = { fg = colors.electric_blue, bold = true },
    LazySpecial = { fg = colors.keppel },
    LazyProgressDone = { fg = colors.keppel },
    LazyProgressTodo = { fg = colors.bg_lighter },

    -- Mason
    MasonHeader = { fg = colors.bg, bg = colors.electric_blue, bold = true },
    MasonHighlight = { fg = colors.electric_blue },
    MasonHighlightBlock = { fg = colors.bg, bg = colors.keppel },
    MasonHighlightBlockBold = { fg = colors.bg, bg = colors.keppel, bold = true },
    MasonMuted = { fg = colors.fg_dark },
    MasonMutedBlock = { fg = colors.fg, bg = colors.bg_light },

    -- Dashboard
    DashboardHeader = { fg = colors.electric_blue },
    DashboardFooter = { fg = colors.comment },
    DashboardCenter = { fg = colors.keppel },
    DashboardShortcut = { fg = colors.steel_pink },
    DashboardKey = { fg = colors.frostbite },
    DashboardIcon = { fg = colors.electric_blue },
    DashboardDesc = { fg = colors.fg },

    -- Bufferline
    BufferLineFill = { bg = colors.bg_dark },
    BufferLineBackground = { fg = colors.fg_dark, bg = colors.bg_dark },
    BufferLineBuffer = { fg = colors.fg_dark, bg = colors.bg_dark },
    BufferLineBufferSelected = { fg = colors.fg, bg = colors.bg, bold = true },
    BufferLineBufferVisible = { fg = colors.fg_dark, bg = colors.bg },
    BufferLineCloseButton = { fg = colors.fg_dark, bg = colors.bg_dark },
    BufferLineCloseButtonSelected = { fg = colors.error, bg = colors.bg },
    BufferLineCloseButtonVisible = { fg = colors.fg_dark, bg = colors.bg },
    BufferLineIndicatorSelected = { fg = colors.electric_blue, bg = colors.bg },
    BufferLineModified = { fg = colors.git_change, bg = colors.bg_dark },
    BufferLineModifiedSelected = { fg = colors.git_change, bg = colors.bg },
    BufferLineModifiedVisible = { fg = colors.git_change, bg = colors.bg },
    BufferLineSeparator = { fg = colors.bg_dark, bg = colors.bg_dark },
    BufferLineSeparatorSelected = { fg = colors.bg_dark, bg = colors.bg },
    BufferLineSeparatorVisible = { fg = colors.bg_dark, bg = colors.bg },
    BufferLineTab = { fg = colors.fg_dark, bg = colors.bg_dark },
    BufferLineTabSelected = { fg = colors.fg, bg = colors.bg },
    BufferLineTabClose = { fg = colors.error, bg = colors.bg_dark },

    -- Lualine (for reference, lualine uses its own theme format)
    -- See theme file for lualine integration

    -- WinBar
    WinBar = { fg = colors.electric_blue, bg = colors.bg },
    WinBarNC = { fg = colors.comment, bg = colors.bg },

    -- Snacks.picker / Snacks.explorer
    SnacksPickerDir = { fg = colors.electric_blue },
    SnacksPickerFile = { fg = colors.fg },
    SnacksPickerPathHidden = { fg = colors.comment },
    SnacksPickerPathIgnored = { fg = colors.comment },
    SnacksPickerMatch = { fg = colors.yellow, bold = true },
    SnacksPickerGitStatusAdded = { fg = colors.git_add },
    SnacksPickerGitStatusModified = { fg = colors.git_change },
    SnacksPickerGitStatusDeleted = { fg = colors.git_delete },
    SnacksPickerGitStatusUntracked = { fg = colors.fg_dark },
    SnacksPickerBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    SnacksPickerTitle = { fg = colors.bg, bg = colors.electric_blue, bold = true },
    SnacksPickerPrompt = { fg = colors.electric_blue },
    SnacksPickerSelection = { fg = colors.fg, bg = colors.bg_light },
    SnacksPickerSelectionCaret = { fg = colors.electric_blue },

    -- Noice
    NoiceCmdline = { fg = colors.fg, bg = colors.bg_dark },
    NoiceCmdlinePopup = { fg = colors.fg, bg = colors.bg_dark },
    NoiceCmdlinePopupBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    NoiceCmdlinePopupTitle = { fg = colors.bg, bg = colors.electric_blue, bold = true },
    NoiceCmdlineIcon = { fg = colors.electric_blue },
    NoiceCmdlineIconSearch = { fg = colors.yellow },
    NoiceConfirm = { fg = colors.fg, bg = colors.bg_dark },
    NoiceConfirmBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    NoiceFormatConfirm = { fg = colors.fg, bg = colors.bg_dark },
    NoiceFormatConfirmDefault = { fg = colors.bg, bg = colors.keppel },
    NoiceMini = { fg = colors.fg, bg = colors.bg_dark },
    NoicePopup = { fg = colors.fg, bg = colors.bg_dark },
    NoicePopupBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    NoicePopupmenu = { fg = colors.fg, bg = colors.bg_dark },
    NoicePopupmenuBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    NoicePopupmenuMatch = { fg = colors.yellow, bold = true },
    NoicePopupmenuSelected = { fg = colors.bg, bg = colors.electric_blue },
    NoiceScrollbar = { fg = colors.electric_blue, bg = colors.bg_light },
    NoiceScrollbarThumb = { bg = colors.electric_blue },
    NoiceSplit = { fg = colors.fg, bg = colors.bg_dark },
    NoiceSplitBorder = { fg = colors.electric_blue, bg = colors.bg_dark },
    NoiceVirtualText = { fg = colors.electric_blue },
  }

  return highlights
end

return M
