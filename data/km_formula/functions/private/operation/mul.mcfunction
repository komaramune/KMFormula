# x * y

data merge storage km_formula:_ {transformation:[1f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

# 1 / y
data modify storage km_formula:_ transformation[15] set from storage km_formula: y
data modify entity 53a-0-0-0-0 transformation set from storage km_formula:_ transformation

# x / (1 / y)
data modify storage km_formula:_ transformation[3] set from storage km_formula: x
data modify storage km_formula:_ transformation[15] set from entity 53a-0-0-0-0 transformation.translation[0]

data modify entity 53a-0-0-0-0 transformation set from storage km_formula:_ transformation

data modify storage km_formula: result set from entity 53a-0-0-0-0 transformation.translation[0]