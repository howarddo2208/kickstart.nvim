return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      -- groups = { -- table: default groups
      --   'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      --   'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      --   'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      --   'SignColumn', 'CursorLineNr', 'EndOfBuffer',
      -- },
      extra_groups = {
        -- transparent for neo-tree
        "NeoTreeBufferNumber",
        "NeoTreeCursorLine",
        "NeoTreeDimText",
        "NeoTreeDirectoryIcon",
        "NeoTreeDirectoryName",
        "NeoTreeDotfile",
        "NeoTreeFileIcon",
        "NeoTreeFileName",
        "NeoTreeFileNameOpened",
        "NeoTreeFilterTerm",
        "NeoTreeFloatBorder",
        "NeoTreeFloatTitle",
        "NeoTreeTitleBar",
        "NeoTreeGitAdded",
        "NeoTreeGitConflict",
        "NeoTreeGitDeleted",
        "NeoTreeGitIgnored",
        "NeoTreeGitModified",
        "NeoTreeGitUnstaged",
        "NeoTreeGitUntracked",
        "NeoTreeGitStaged",
        "NeoTreeHiddenByName",
        "NeoTreeIndentMarker",
        "NeoTreeExpander",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeSignColumn",
        "NeoTreeStatusLine",
        "NeoTreeStatusLineNC",
        "NeoTreeVertSplit",
        "NeoTreeWinSeparator",
        "NeoTreeEndOfBuffer",
        "NeoTreeRootName",
        "NeoTreeSymbolicLinkTarget",
        "NeoTreeTitleBar",
        "NeoTreeWindowsHidden",
      },
      exclude_groups = {}, -- table: groups you don't want to clear
    })
  end
}
