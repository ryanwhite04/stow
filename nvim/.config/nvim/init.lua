opt = vim.opt
opt.guicursor = ""
opt.nu = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.mouse = "a"

g = vim.g
g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
g.ale_c_gcc_options = '-std=c11 -Wall -Wextra -DHAVE_CONFIG_H -I. -Wno-pointer-sign'
g.ale_c_clang_options = '-std=c11 -Wall -Wextra -DHAVE_CONFIG_H -I. -Wno-pointer-sign'
g.ale_c_clangtidy_checks =  {'-clang-diagnostic-pointer-sign', 'cert-*'}
g.ale_c_clangtidy_options =  '--extra-arg="-DHAVE_CONFIG_H -I. -Wno-pointer-sign"'
