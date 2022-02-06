# BAD

yyyymmdstr = Time.now.strftime('%Y/%m/%d')

# GOOD

current_date = Time.now.strftime('%Y/%m/%d')

#BAAD
playerMovement = PlayerMovement.new(pos)

#GOOD

playerMovement = PlayerMovement.new(squarePosition)

# Loops
questions = ["Uma ", "Duas", "Três"]
#BAAD
questions.map {|q| puts q }

#GOOD

questions.map {|question| puts question }

# Indexers
# BAAD
enu = (1..50)

enu.find {|el| puts el = 2}

# GOOD

enumerator = (1..50)

enumerator.find {|elemento| puts elemento = 2}