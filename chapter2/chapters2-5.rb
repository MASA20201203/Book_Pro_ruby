# 2.5.2 論理演算子
# t1 = true
# t2 = true
# f1 = false
# puts t1 && t2
# puts t1 && f1

# f2 = false
# puts t1 || f1
# puts f1 || f2

# &&は||よりも優先順位が高い
# t1 = true
# t2 = true
# f1 = false
# f2 = false
# puts t1 && t2 || f1 && f2
# puts (t1 && t2) || (f1 && f2)

# puts t1 && (t2 || f1) && f2

# puts !t1
# puts !f1

# puts t1 && f1
# puts !(t1 && f1)
