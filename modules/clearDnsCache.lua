---
--- 清除系统的DNS缓存脚本
--- Created by ljp
--- DateTime: 2023/8/25 11:12
---

-- 使用Hammerspoon来运行终端命令
function clearChromeDNSCache()
  local terminalCommand = "dscacheutil -flushcache"
  local _, result, _ = hs.execute(terminalCommand)
  hs.alert.show("系统的DNS缓存已清除")
end

-- 创建一个触发器来运行脚本（例如使用特定的热键）
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", clearChromeDNSCache)