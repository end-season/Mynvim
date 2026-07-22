# Neovim Git 快捷键指南 (Fugitive)

## Git 常用命令

| 快捷键 | 功能 |
|--------|------|
| `<leader>gs` 或 `:Git` | 打开 Git 状态窗口 |
| `:Git <command>` | 执行任意 Git 命令 |
| `G` | 在当前文件执行 :Git 命令 |

---

## 提交 (Commit)

| 快捷键 | 功能 |
|--------|------|
| `gcc` | 创建新提交 (进入提交信息编辑) |
| `gcf` | 修改上次提交 (--amend --no-edit) |
| `gca` | 修改上次提交 (进入编辑模式) |

---

## 推送/拉取

| 快捷键 | 功能 |
|--------|------|
| `gp` | 推送到远程 (Git push) |
| `gl` | 拉取远程更改 (Git pull) |
| `gP` | 强制推送 (Git push --force) |

---

## 分支 (Branch)

| 快捷键 | 功能 |
|--------|------|
| `gb` | 显示 Git blame ( blame 视图) |
| `:Git checkout -b` | 创建并切换新分支 |
| `:Git branch -d` | 删除分支 |

---

## 差异 (Diff)

| 快捷键 | 功能 |
|--------|------|
| `gd` | 打开文件差异视图 |
| `:Git diff` | 查看工作区差异 |
| `:Git diff --cached` | 查看暂存区差异 |
| `:Git diff HEAD` | 查看所有未提交差异 |

---

## 其他常用

| 快捷键 | 功能 |
|--------|------|
| `gq` | 提交后退出 (关闭提交窗口) |
| `:Gwrite` | 将文件添加到暂存区 |
| `:Gread` | 检出文件 (恢复文件) |
| `:Gremove` | 删除文件并从 git 中移除 |

---

## 注意事项

- 需要安装 `vim-fugitive` 插件
- 大部分命令在 Normal 模式下使用
- 按 `q` 关闭 Fugitive 打开的窗口
