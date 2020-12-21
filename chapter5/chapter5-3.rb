# 5.3 シンボル

# 5.3.1 シンボルと文字列の違い
# p :apple.class
# p 'apple'.class

# p :apple.object_id
# p :apple.object_id
# p :apple.object_id

# p 'apple'.object_id
# p 'apple'.object_id
# p 'apple'.object_id

# # 文字列は破壊的な変更が可能
# string = 'apple'
# string.upcase!
# p string

# # シンボルはイミュータブルなので、破壊的な変更は不可能
# symbol = :apple
# symbol.upcase!
# p symbol
