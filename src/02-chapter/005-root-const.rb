
Y = "Root const"
X = "another const"

module M
  Y = "inner const"
  puts ::Y
end

# 列出 M 中的所有常量
p M.constants

# 列出当前环境中的所有常量
p Module.constants
