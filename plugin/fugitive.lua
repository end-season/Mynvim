vim.pack.add{{
  src = "https://github.com/tpope/vim-fugitive",
  name = "fugitive",
}}


-- :Gstatus：打开 Git 状态面板
-- :Gblame：逐行追溯代码提交信息
-- :Gclog：仅查看当前文件提交历史
-- :Gdiff：对比当前文件与暂存区差异
-- :G push：推送本地提交至远程仓库
-- :G pull：拉取远程最新代码
-- :G fetch：同步远程仓库信息不合并
-- :G branch 分支名 # 仅创建本地分支，不切换
-- :G checkout -b 分支名 # 创建 + 自动切换到新分支（最常用）
