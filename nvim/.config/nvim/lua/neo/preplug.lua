-- preplug.lua
-- 与插件定制功能相关的配置，在插件载入前配置（纯变量选项配置）
local vg = vim.g;

(function()
  -- 使用 neovim 浮动窗口展示快捷键提示
  vg.which_key_use_floating_win = 1
  -- 浮动窗口不需要考虑避开行号和信号槽
  vg.which_key_disable_default_offset = 1
  -- 不需要中间对齐
  vg.which_key_centered = 0
end)("liuchengxu/vim-which-key");

(function()
  -- https://github.com/lambdalisue/suda.vim/issues/29
  -- vg.suda_smart_edit = 1
end)("lambdalisue/suda.vim");

(function()
  -- 使用 sainnhe/sonokai 色彩方案
  vg.sonokai_style = 'andromeda'
  vg.sonokai_enable_italic = 1
  vg.sonokai_disable_italic_comment = 0
  vg.sonokai_transparent_background = 0
  vg.sonokai_sign_column_background = 'none'
end)("sainnhe/sonokai");

(function()
  -- 使用 space-vim-theme 色彩方案
  vg.space_vim_italic = 1
  vg.space_vim_italicize_strings = 0
  vg.space_vim_plugin_hi_groups = 1
  vg.space_vim_transp_bg = 1
end)("liuchengxu/space-vim-theme");

(function()
  -- 状态栏使用 powerline 字体
  vg.airline_powerline_fonts = 1
  -- 选择一个状态栏主题
  vg.airline_theme = "minimalist"
  -- 配置显示符号
  vg.airline_symbols = {
    linenr = "",
    maxlinenr = "",
    branch = "",
    dirty = " ",
    readonly = "",
  }
  -- 配置 airline_section
  vg.airline_section_z = vim.fn["airline#section#create"]({"linenr", "maxlinenr"})
  -- 显示 ale 诊断信
  vim.g["airline#extensions#ale#enabled"] = 1
  vim.g["airline#extensions#ale#error_symbol"] = " "
  vim.g["airline#extensions#ale#warning_symbol"] = " "
  vim.g["airline#extensions#ale#show_line_numbers"] = 0
end)("vim-airline/vim-airline", "vim-airline/vim-airline-themes");

(function()
  -- 设置高亮单词延时
  vg.Illuminate_delay = 50
  -- 设置在部分 buffer 中不做高亮
  vg.Illuminate_ftblacklist = {
    "nerdtree",
    "NvimTree",
    "qf",
    "leaderf",
    "help",
    "list",
    "vista",
    "man",
  }
end)("RRethy/vim-illuminate");

(function()
  -- "插件是一系列语法高亮插件的合集，具体设置项需要参见各自插件的文"
  -- markdown 语法高亮时，不隐藏标记符号
  vg.vim_markdown_conceal = 0
  vg.vim_markdown_conceal_code_blocks = 0
  -- 禁用空格警告，因为它会在插入模式也高亮, 我们使用 vim-better-whitespace
  vg.python_highlight_space_errors = 0
end)("sheerun/vim-polyglot");

(function()
  -- 使用 g:better_whitespace_filetypes_blacklist 无效
  -- https://github.com/ntpeters/vim-better-whitespace/issues/108
  vim.cmd [[ autocmd FileType help DisableWhitespace ]]
  -- 禁用默认 keymap
  vg.better_whitespace_operator = ""
end)("ntpeters/vim-better-whitespace");

(function()
  -- 自动启用彩虹括号，设置为0以手动启用
  vg.rainbow_active = 1
  vg.rainbow_conf = {
    guifgs = {
      "Tan",
      "PaleGreen",
      "SkyBlue",
      "Gold",
      "Orchid",
      "Orange",
      "Fuchsia",
      "Ivory",
    },
    separately = {nerdtree = 0},
  }
end)("luochen1990/rainbow");

(function()
  -- 禁用自动回退匹配字符，在vimrc中常常误退掉注释符引号
  vg.AutoPairsMapBS = 0
end)("jiangmiao/auto-pairs");

(function()
  -- 缩进线颜色
  vg.indentLine_color_term = 239
  vg.indentLine_color_gui = "#626262"
  -- vg.indentLine_char = "┊"
  -- 以下类型的 buffer 里不显示缩进线
  vg.indentLine_bufTypeExclude = {"help", "terminal", "list", "nofile"}
end)("Yggdroot/indentLine");

(function()
  vg.enable_spelunker_vim = 0
  vg.enable_spelunker_vim_on_readonly = 0
  vg.spelunker_target_min_char_len = 3
  vg.spelunker_max_hi_words_each_buf = 500
  vg.spelunker_check_type = 2
  vg.spelunker_disable_uri_checking = 1
  vg.spelunker_disable_email_checking = 1
  vg.spelunker_disable_account_name_checking = 1
  vg.spelunker_disable_acronym_checking = 1
  vg.spelunker_disable_backquoted_checking = 0

  vg.spelunker_spell_bad_group = "SpellBad"
  vg.spelunker_complex_or_compound_word_group = "SpellBad"
end)("kamykn/spelunker.vim");

(function()
  -- │
  vg.signify_sign_add = '▎'
  vg.signify_sign_delete = '▎'
  vg.signify_sign_delete_first_line = ''
  vg.signify_sign_change = '▎'
end)("mhinz/vim-signify");

(function()
  vg.blamer_enabled = 1
  vg.blamer_show_in_visual_modes = 0
  vg.blamer_show_in_insert_modes = 0

  vg.blamer_delay = 1000
  vg.blamer_prefix = "    "
  vg.blamer_template = "<committer-time>   <author>   <summary>"
  vg.blamer_date_format = "%Y/%m/%d"
end)("APZelos/blamer.nvim");

(function()
  vg.SuperTabDefaultCompletionType = "<c-n>"
end)("ervandew/supertab");

(function()
  -- 不使用默认的键位
  -- vg.NERDCreateDefaultMappings = 0
  -- 空格间隔，比如 /* int foo=2; */
  vg.NERDSpaceDelims = 1
  vg.NERDRemoveExtraSpaces = 1
  -- 取消空白行注释时，连同去掉多余的空格
  vg.NERDTrimTrailingWhitespace = 1
  -- 按代码左对齐注释
  vg.NERDDefaultAlign = "left"
  -- 将空行一起处理
  vg.NERDCommentEmptyLines = 1
  -- 检查并注释选中范围中未注释的行
  vg.NERDToggleCheckAllLines = 1
end)("scrooloose/nerdcommenter");

(function()
  -- 不使用预设快捷键
  vg.vtm_default_mapping = 0
  vg.vtm_default_engines = {"youdao", "ciba", "bing"}
end)("voldikss/vim-translate-me");

(function()
  vg.nvim_tree_side = 'left'
  vg.nvim_tree_width = 30
  vg.nvim_tree_ignore = {
    "*.swp",
    "*.pyc",
    ".git",
    ".idea",
    ".ropeproject",
    "node_modules",
  }
  vg.nvim_tree_auto_open = 1
  vg.nvim_tree_auto_close = 1
  vg.nvim_tree_quit_on_open = 0
  vg.nvim_tree_follow = 1
  vg.nvim_tree_indent_markers = 1
  vg.nvim_tree_hide_dotfiles = 0
  vg.nvim_tree_git_hl = 1
  vg.nvim_tree_root_folder_modifier = ':~'
  vg.nvim_tree_tab_open = 1
  vg.nvim_tree_width_allow_resize = 1
  vg.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}

  vg.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
      unstaged = "",
      staged = "",
      unmerged = "",
      renamed = "➜",
      untracked = "六",
    },
    folder = {default = "", open = "ﱮ", symlink = ""},
  }

  -- vim.cmd [[autocmd FileType NvimTree setlocal signcolumn=no]]
end)("kyazdani42/nvim-tree.lua");

(function()
  -- 大纲列表不延迟
  vg.vista_cursor_delay = 0
  -- 大纲列表图标
  vim.g["vista#renderer#icons"] = {
    ["augroup"] = "⋐",
    ["class"] = "𝒞",
    ["const"] = "🅲",
    ["constant"] = "🅲",
    ["default"] = "⎅",
    ["enum"] = "☷",
    ["enumerator"] = "☷",
    ["field"] = "⚆",
    ["fields"] = "⚇",
    ["func"] = "𝑓",
    ["function"] = "𝑓",
    ["functions"] = "𝑓",
    ["implementation"] = "⛣",
    ["interface"] = "⚯",
    ["macro"] = "☢",
    ["macros"] = "☢",
    ["map"] = "❴❵",
    ["member"] = "☌",
    ["method"] = "𝑚",
    ["module"] = "⬢",
    ["modules"] = "⬢",
    ["namespace"] = "",
    ["package"] = "⯄",
    ["packages"] = "⯄",
    ["property"] = "襁",
    ["struct"] = "❴❵",
    ["subroutine"] = "⥹",
    ["target"] = "🞉",
    ["type"] = "𝒯",
    ["typedef"] = "𝒯",
    ["typeParameter"] = "𝒫",
    ["types"] = "𝒯",
    ["union"] = "⚉",
    ["var"] = "𝜈",
    ["variable"] = "𝜈",
    ["variables"] = "𝜈",
  }
end)("liuchengxu/vista.vim");

(function()
  -- floaterm 快捷键配置
  vg.floaterm_keymap_new = "<Leader>tr"
  vg.floaterm_keymap_prev = "<Leader>["
  vg.floaterm_keymap_next = "<Leader>]"
  vg.floaterm_keymap_toggle = "<Leader>tt"
end)("voldikss/vim-floaterm");

(function()
  vg.neoformat_enabled_python = {"autopep8", "yapf", "docformatter", "black"}
  -- 默认格式化对齐
  vg.neoformat_basic_format_align = 1
  -- 默认转换 tab 字符为空格
  vg.neoformat_basic_format_retab = 1
  -- 默认去掉行尾空格
  vg.neoformat_basic_format_trim = 1
end)("sbdchd/neoformat");

(function()
  vg.UltiSnipsExpandTrigger = "<S-TAB>"
  vg.UltiSnipsJumpForwardTrigger = "<TAB>"
  vg.UltiSnipsJumpBackwardTrigger = "<S-TAB>"

  -- 纵向分割
  vg.UltiSnipsEditSplit = "vertical"
  vg.UltiSnipsSnippetsDir = vim.fn.stdpath("config") .. "/moetools/UltiSnips"
end)("SirVer/ultisnips");

(function()
  vg.doge_mapping = "<Leader>cd"
end)("kkoomen/vim-doge");

(function()
  vg.vimade = {}
  vg.vimade.fadelevel = 0.6
end)("TaDaa/vimade");

(function()
  vg.Lf_ShortcutB = "<Leader>fb"
  vg.Lf_ShortcutF = "<Leader>ff"

  vg.Lf_WindowPosition = "popup"
  vg.Lf_PopupHeight = 0.75
  vg.Lf_PreviewInPopup = 1
  vg.Lf_ShowHidden = 1
  vg.Lf_HideHelp = 1
  vg.Lf_WindowHeight = 0.30
  vg.Lf_StlColorscheme = "default"
  vg.Lf_StlSeparator = {left = "", right = ""}

  vim.cmd [[autocmd FileType leaderf setlocal signcolumn=no]]

  vg.Lf_UseCache = 0
  vg.Lf_CacheDirectory = vim.fn.expand("~/.vim/cache")
  vg.Lf_RootMarkers = {".root", ".svn", ".git", ".hg", ".idea", ".project"}
  vg.Lf_WildIgnore = {
    dir = {
      ".svn",
      ".git",
      ".hg",
      "build",
      "debug",
      ".idea",
      ".ropeproject",
      "vendor",
    },
    file = {"*.sw?", "~$*", "*.bak", "*.exe", "*.o", "*.so", "*.py[co]"},
  }

  vg.Lf_RgConfig = {"--glob=!node_modules/*", "--glob=!.git/*", "--hidden"}

  vg.Lf_MruMaxFiles = 2048
  vg.Lf_MruFileExclude = {
    "*.so",
    "*.exe",
    "*.py[co]",
    "*.sw?",
    "~$*",
    "*.bak",
    "*.tmp",
    "*.dll",
  }

  vg.Lf_PreviewResult = {Function = 0, BufTag = 0}

  vg.Lf_PopupPalette = {
    dark = {
      Lf_hl_popup_inputText = {
        gui = "NONE",
        font = "NONE",
        guifg = "#B2B2B2",
        guibg = "#3B3E4C",
        cterm = "NONE",
        ctermfg = "172",
        ctermbg = "238",
      },
      Lf_hl_popup_window = {
        gui = "NONE",
        font = "NONE",
        guifg = "#B2B2B2",
        guibg = "#133C46",
        cterm = "NONE",
        ctermfg = "173",
        ctermbg = "233",
      },
      Lf_hl_pop_cursorline = {
        gui = "NONE",
        font = "NONE",
        guifg = "#B2B2B2",
        guibg = "#2D333E",
        cterm = "NONE",
        ctermfg = "173",
        ctermbg = "233",
      },
      Lf_hl_popup_category = {
        gui = "NONE",
        font = "NONE",
        guifg = "#000000",
        guibg = "#F28379",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "210",
      },
      Lf_hl_popup_nameOnlyMode = {
        gui = "NONE",
        font = "NONE",
        guifg = "#000000",
        guibg = "#E8ED51",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "227",
      },
      Lf_hl_popup_fullPathMode = {
        gui = "NONE",
        font = "NONE",
        guifg = "#000000",
        guibg = "#AAAAFF",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "147",
      },
      Lf_hl_popup_fuzzyMode = {
        gui = "NONE",
        font = "NONE",
        guifg = "#000000",
        guibg = "#E8ED51",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "227",
      },
      Lf_hl_popup_regexMode = {
        gui = "NONE",
        font = "NONE",
        guifg = "#000000",
        guibg = "#7FECAD",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "121",
      },
      Lf_hl_popup_cwd = {
        gui = "NONE",
        font = "NONE",
        guifg = "#EBFFEF",
        guibg = "#606168",
        cterm = "NONE",
        ctermfg = "195",
        ctermbg = "241",
      },
      Lf_hl_popup_blank = {
        gui = "NONE",
        font = "NONE",
        guifg = "NONE",
        guibg = "#3B3E4C",
        cterm = "NONE",
        ctermfg = "NONE",
        ctermbg = "237",
      },
      Lf_hl_popup_spin = {
        gui = "NONE",
        font = "NONE",
        guifg = "#E6E666",
        guibg = "#3B3E4C",
        cterm = "NONE",
        ctermfg = "185",
        ctermbg = "237",
      },
      Lf_hl_popup_lineInfo = {
        gui = "NONE",
        font = "NONE",
        guifg = "#EEEEEE",
        guibg = "#606168",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "195",
      },
      Lf_hl_popup_total = {
        gui = "NONE",
        font = "NONE",
        guifg = "#000000",
        guibg = "#16D5B6",
        cterm = "NONE",
        ctermfg = "16",
        ctermbg = "149",
      },
    },
  }
end)("Yggdroot/LeaderF");

(function()
  -- 不使用默认键位
  vg.gutentags_plus_nomap = 1
  -- 使用 pygments 辅助 gtags 支持更多的语言
  vim.env.GTAGSLABEL = "native-pygments"
  vim.env.GTAGSCONF = "/usr/share/gtags/gtags.conf"
  -- gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
  vg.gutentags_project_root = {".root", ".svn", ".git", ".hg", ".project"}
  -- 所生成的数据文件的名称
  vg.gutentags_ctags_tagfile = ".tags"
  -- 同时开启 ctags 和 gtags 支持：
  vg.gutentags_modules = {"ctags", "gtags_cscope"}

  -- 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
  vg.gutentags_cache_dir = vim.fn.expand("~/.cache/tags")
  -- 禁用 gutentags 自动加载 gtags 数据库的行为
  vg.gutentags_auto_add_gtags_cscope = 0

  -- 配置 ctags 的参数
  vg.gutentags_ctags_extra_args = {
    "--fields=+niazS",
    "--extra=+q",
    "--c++-kinds=+px",
    "--c-kinds=+px",
    "--output-format=e-ctags",
  }
end)("ludovicchabant/vim-gutentags", "skywind3000/gutentags_plus");

(function()
  vg.go_def_reuse_buffer = 1
end)("fatih/vim-go");

(function()
  vg.ale_enabled = 0
  vg.ale_disable_lsp = 1
  vg.ale_set_highlights = 0
  vg.ale_echo_msg_format = "%severity% ⏽ %linter% ⏽ %s (%code%)"

  vg.ale_sign_column_always = 1
  vg.ale_sign_error = ""
  vg.ale_sign_warning = ""
  vg.ale_sign_info = ""
  vg.ale_echo_msg_error_str = "  ERROR"
  vg.ale_echo_msg_warning_str = "  WARNING"
  vg.ale_echo_msg_info_str = "  INFO"

  vg.ale_completion_delay = 500
  vg.ale_echo_delay = 20
  vg.ale_lint_delay = 500
  vg.ale_lint_on_text_changed = "normal"
  vg.ale_lint_on_insert_leave = 1

  -- compile_commands.json still not work well with clang easily
  -- see https://github.com/w0rp/ale/issues/1163#issuecomment-352585720
  vg.ale_c_build_dir_names = {"build", "debug", "bin"}
  vg.ale_c_parse_compile_commands = 1

  -- see https://github.com/MaskRay/ccls/wiki/Customization
  vg.ale_c_ccls_init_options = {cacheDirectory = "~/.cache/ccls"}

  -- 未明确指定 linter 的依然会使用全部可能的linter
  -- 除非 vg.ale_linters_explicit = 1
  -- 显示指定要使用的 linter
  vg.ale_linters = {
    c = {"clangtidy", "ccls", "cppcheck"},
    cpp = {"clangtidy", "ccls", "cppcheck"},
    go = {"golangci-lint"},
    javascript = {"eslint"},
  }

  -- 使用全局 pylint，这样可以使用 venv 中对应版本的 pylint
  vg.ale_python_pylint_use_global = 1
  vg.ale_python_pylint_options = "--rcfile ~/.config/pylintrc"
  -- 错误信息使用 pep8 msg_id
  vg.ale_python_pylint_use_msg_id = 1

  vg.ale_go_golangci_lint_options =
    "--enable-all --disable wsl --disalbe gofumpt"
end)("w0rp/ale");

(function()
  vg.coc_start_at_startup = 0
  vg.coc_global_extensions = {
    "coc-tsserver",
    "coc-eslint",
    "coc-prettier",
    "coc-css",
    "coc-json",
    "coc-vimlsp",
    "coc-yaml",
    "coc-snippets",
    "coc-python",
    "coc-lists",
    "coc-marketplace",
    "coc-dictionary",
    "coc-word",
    "coc-emoji",
    "coc-syntax",
    "coc-go",
    "coc-rust-analyzer",
  }
end)("neoclide/coc.nvim");
