canada = "14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488152092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237996274956735188575272489122793818301194912983367336244065664308602139501609244807723094362855309662027556939798695022247499620607497030412366886199511008920238377021314169411902988582544681639799904659700081700296312377381342084130791451183980570985"

print(len(canada))

clist = [int(x) for x in canada] # list comprehension all 707
print(clist)
print(len(clist))

clist2= [x for x in canada if int(x) <8]

print(clist2)
print(len(clist2));

# clist is shanks rule as far as bellos stated but I believe there is another rule

# that if a number appeaers multiple times in a row only do it onece
# says sometheing about our belief in randomness

canNo89 = ''.join(clist2)
print(canNo89)

canNoRep=""
for index in range(len(canNo89)-1):
    if canNo89[index] != canNo89[index+1]:
        canNoRep=canNoRep+canNo89[index]
        
print(canNoRep)        