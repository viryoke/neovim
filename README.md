- terminal使用wezterm
wezterm配置：https://github.com/KevinSilvester/wezterm-config
- Shell使用Nushell
wezterm在win11环境下会出现命令输入过程中prompt不断上移的bug，解决办法：https://github.com/nushell/nushell/issues/5585
在~\AppData\Roaming\nushell\env.nu配置文件中增加：$env.config.shell_integration.osc133 = false配置
config.nu配置：
```
# 定义别名和目录常量
alias vim = nvim
# 配置starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
```
- 美化shell的插件是starship (~\.config\starship.toml)
```
# 根据 schema 提供自动补全
"$schema" = 'https://starship.rs/config-schema.json'

# 在提示符之间插入空行
add_newline = true

# 将提示符中的 '❯' 替换为 '➜'
[character] # 此组件名称为 'character'
success_symbol = '[➜](bold green)' # 将 'success_symbol' 字段设置成颜色为 'bold green' 的 '➜'  

# 禁用 'package' 组件，将其隐藏
[package]
disabled = true

```
- 编辑器使用Neovim
直接安装lazyvim：https://www.lazyvim.org/installation
- 启动器使用wox + everything
