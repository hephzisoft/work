# TODO Assigment 1
name = input("Name: ")
print(f"Welcome {name}")


# TODO assigment 2
celsius = int(input("Temperature: "))
fahrenheit = (celsius*9/5)+32
print(f"{fahrenheit} f")


# TODO assignent 3
minutes = int(input("Minutes: "))
seconds = minutes * 60
print(f"{seconds} sec")


# TODO ASSIGNMENT 4

string = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
print(len(string))
print(string[::3])
print(string.upper())
print(string.replace('a', 'z'))
vowels = 'aeiou'
new_string = ''.join([c for c in string if c not in vowels])
print(new_string)
print(string[1::2])
print(string + string)
print(string[26:]+string[:26])
print(string[-1::-2])
print(string.translate(str.maketrans('','','az')))
print(string[::-1])
print(f"The string is {string}")

# TODO ASSIGNMENT 5
planet  ='earth'
diameter= 12345

print(f"The diameter of the {planet} is {diameter} kilometer")

surname = ['Ade', 'Kehinde', 'Samuel', 'Thompson', 'samod']
append_surname=['Samod', 'Bukola','Ahmed']
extend_surname = ['Chrsti','Ite','Hephzi']

print(sorted(surname.extend(extend_surname)))
print(sorted(surname.append(append_surname)))


