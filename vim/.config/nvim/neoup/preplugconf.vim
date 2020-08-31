" preplugconf.vim
" 与插件定制功能相关的配置，在插件载入前配置（纯变量选项配置）


" Plug 'liuchengxu/vim-which-key'
" ================================================================================

" 使用 neovim 浮动窗口展示快捷键提示
let g:which_key_use_floating_win = 1


" Plug 'lambdalisue/suda.vim'
" ================================================================================
" https://github.com/lambdalisue/suda.vim/issues/29
" let g:suda_smart_edit = 1


" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" ================================================================================

" 状态栏使用 powerline 字体
let g:airline_powerline_fonts = 1
" 选择一个状态栏主题
let g:airline_theme = 'minimalist'
" let g:airline_theme = 'onedark'

" 显示 ale 诊断信
let g:airline#extensions#ale#enabled = 1



" Plug 'liuchengxu/space-vim-theme'
" ================================================================================

" 使用 space-vim-theme 色彩方案
let g:space_vim_italic = 1
let g:space_vim_italicize_strings = 0
let g:space_vim_plugin_hi_groups = 1
let g:space_vim_transp_bg = 1



" Plug 'RRethy/vim-illuminate'
" ================================================================================

" 设置高亮单词延时
let g:Illuminate_delay = 50
" 设置在部分 buffer 中不做高亮
let g:Illuminate_ftblacklist = ['nerdtree', 'qf', 'leaderf', 'help', 'list', 'vista', 'man']


" Plug 'sheerun/vim-polyglot'
" 本插件是一系列语法高亮插件的合集，具体设置项需要参见各自插件的文档
" ================================================================================

" markdown 语法高亮时，不隐藏标记符号
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" 禁用空格警告，因为它会在插入模式也高亮, 我们使用 vim-better-whitespace
let g:python_highlight_space_errors = 0


" Plug 'ntpeters/vim-better-whitespace'
" ================================================================================

" 使用 g:better_whitespace_filetypes_blacklist 无效
" https://github.com/ntpeters/vim-better-whitespace/issues/108
au FileType help DisableWhitespace


" Plug 'luochen1990/rainbow'
" ================================================================================

" 自动启用彩虹括号，设置为0以手动启用
let g:rainbow_active = 1

let g:rainbow_conf = {
\    'guifgs': ['tan', 'PaleGreen', 'SkyBlue', 'gold', 'orchid', 'orange', 'Fuchsia', 'ivory'],
\    'separately': {
\       'nerdtree': 0
\    }
\}

" Plug 'jiangmiao/auto-pairs'
" ================================================================================

" 禁用自动回退匹配字符，在vimrc中常常误退掉注释符引号
let g:AutoPairsMapBS = 0


" Plug 'Yggdroot/indentLine'
" ================================================================================

" 缩进线颜色
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#626262'

" let g:indentLine_char = '┊'
" 以下类型的 buffer 里不显示缩进线
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'list', 'nofile']


" Plug 'ervandew/supertab'
" ================================================================================
let g:SuperTabDefaultCompletionType = "<c-n>"


" Plug 'scrooloose/nerdcommenter'
" ================================================================================

" 不使用默认的键位
" let g:NERDCreateDefaultMappings = 0

" 空格间隔，比如 /* int foo=2; */
let g:NERDSpaceDelims = 1
let g:NERDRemoveExtraSpaces = 1
" 取消空白行注释时，连同去掉多余的空格
let g:NERDTrimTrailingWhitespace = 1
" 按代码左对齐注释
let g:NERDDefaultAlign = 'left'
" 将空行一起处理
let g:NERDCommentEmptyLines = 1
" 检查并注释选中范围中未注释的行
let g:NERDToggleCheckAllLines = 1



" Plug 'voldikss/vim-translate-me'
" ================================================================================

" 不使用预设快捷键
let g:vtm_default_mapping = 0
let g:vtm_default_engines = ["youdao", "ciba", "bing"]

" Plug 'scrooloose/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" ================================================================================

" 不显示书签和帮助
let NERDTreeMinimalUI = 1
" 默认显示隐藏文件
let NERDTreeShowHidden = 1
" 忽略以下类型文件
let NERDTreeIgnore = ['\~$', '\.swp$', '\.pyc$', '.git$', '.idea$', '.ropeproject$']



" Plug 'liuchengxu/vista.vim'
" ================================================================================

" 默认提供的大纲
let g:vista_executive_for = {
    \ 'python': 'ctags',
    \ 'go': 'coc',
    \ }

" 大纲列表不延迟
let g:vista_cursor_delay = 0
" 大纲列表图标
let g:vista#renderer#icons = {
    \ "augroup": "⋐",
    \ "class": "𝒞",
    \ "const": "🅲",
    \ "constant": "🅲",
    \ "default": "⎅",
    \ "enum": "☷",
    \ "enumerator": "☷",
    \ "field": "⚆",
    \ "fields": "⚇",
    \ "func": "𝑓",
    \ "function": "𝑓",
    \ "functions": "𝑓",
    \ "implementation": "⛣",
    \ "interface": "⚯",
    \ "macro": "☢",
    \ "macros": "☢",
    \ "map": "❴❵",
    \ "member": "☌",
    \ "method": "𝑚",
    \ "module": "⬢",
    \ "modules": "⬢",
    \ "namespace": "",
    \ "package": "⯄",
    \ "packages": "⯄",
    \ "property": "襁",
    \ "struct": "❴❵",
    \ "subroutine": "⥹",
    \ "target": "🞉",
    \ "type": "𝒯",
    \ "typedef": "𝒯",
    \ "typeParameter": "𝒫",
    \ "types": "𝒯",
    \ "union": "⚉",
    \ "var": "𝜈",
    \ "variable": "𝜈",
    \ "variables": "𝜈",
    \ }


" terminal 增强
" Plug 'voldikss/vim-floaterm'
" ================================================================================



" Plug 'sbdchd/neoformat'
" ================================================================================

let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']

" 默认格式化对齐
let g:neoformat_basic_format_align = 1
" 默认转换 tab 字符为空格
let g:neoformat_basic_format_retab = 1
" 默认去掉行尾空格
let g:neoformat_basic_format_trim = 1



" Plug 'SirVer/ultisnips'
" ================================================================================
" 纵向分割
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir=g:neohome."/moetools/UltiSnips"



" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" ================================================================================

" let g:Lf_WindowPosition = 'popup'
" let g:Lf_PreviewInPopup = 1

let g:Lf_UseCache = 0
let g:Lf_HideHelp = 1
let g:Lf_WindowHeight = 0.30
let g:Lf_StlColorscheme = 'default'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_CacheDirectory = expand('~/.vim/cache')

let g:Lf_RootMarkers = ['.root', '.svn', '.git', '.hg', '.idea', '.project']
let g:Lf_WildIgnore = {
    \ 'dir': ['.svn','.git','.hg', 'build', 'debug', '.idea', '.ropeproject', 'vendor'],
    \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
    \ }

let g:Lf_MruMaxFiles = 2048
let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']

let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_NormalMap = {
    \ "File":     [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
    \ "Buffer":   [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
    \ "Mru":      [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
    \ "Tag":      [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
    \ "BufTag":   [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<CR>']],
    \ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
    \ "Rg":       [["<ESC>", ':exec g:Lf_py "rgExplManager.quit()"<CR>']],
    \ }


" Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" ================================================================================

" 使用 coc 的补全
let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0



" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
" ================================================================================

" 不使用默认键位
let g:gutentags_plus_nomap = 1
" 使用 pygments 辅助 gtags 支持更多的语言
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/share/gtags/gtags.conf'
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = ["ctags", "gtags_cscope"]

" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px', '--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']



" 提供 golang 支持
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
" ================================================================================
let g:go_def_reuse_buffer = 1


" Plug 'w0rp/ale'
" ================================================================================

let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0
let g:ale_echo_msg_format = '[🐼 %linter%] %code:% %s [%severity%]'

let g:ale_sign_column_always = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '❗'
let g:ale_sign_info = '➽'
let g:ale_echo_msg_error_str = '✘ Error'
let g:ale_echo_msg_warning_str = '❗Warning'
let g:ale_echo_msg_info_str = '➽ Info'

let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" compile_commands.json still not work well with clang easily
" see https://github.com/w0rp/ale/issues/1163#issuecomment-352585720
let g:ale_c_build_dir_names = ['build', 'debug', 'bin']
let g:ale_c_parse_compile_commands = 1

" see https://github.com/MaskRay/ccls/wiki/Customization
let g:ale_c_ccls_init_options = {
    \    'cacheDirectory': '~/.cache/ccls',
    \ }

" 未明确指定 linter 的依然会使用全部可能的linter
" 除非 let g:ale_linters_explicit = 1
" 显示指定要使用的 linter
let g:ale_linters = {
    \    'c': ['clangtidy', 'ccls', 'cppcheck'],
    \    'cpp': ['clangtidy', 'ccls', 'cppcheck'],
    \    'go': ['golangci-lint'],
    \    'javascript': ['eslint'],
    \ }

" 使用全局 pylint，这样可以使用 venv 中对应版本的 pylint
let g:ale_python_pylint_use_global = 1
let g:ale_python_pylint_options = '--rcfile ~/.config/pylintrc'
" 错误信息使用 pep8 msg_id
let g:ale_python_pylint_use_msg_id = 1

let g:ale_go_golangci_lint_options = '--enable-all --disable wsl --disalbe gofumpt'


" end preplugconf