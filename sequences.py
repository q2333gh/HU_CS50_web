def printNames(names):
    for i in names:
        print(i)
    print("")


names = ["Harry", "Ron", "Hermione"]
print(names[0], names[1], names[2])
printNames(names)
names.append("Ginny")
printNames(names)

# names.sort()

s = set()
s.add(1)
s.add(2)
s.add(3)
s.add(4)

print(f"The set has {s} elements.")
