# name = ['emmanuel', 'samod','hephzibah','christiana']

# class_name= ["science", 'art', 'commercial']


# name.append(class_name)

# print(name)


# word = [1, 2, [3, 4], [5, [100, 200, ['hello']], 23, 11], 1, 7]
# print(word[3][1][0])
# first = word[3][0]
# second = word[3][1][1]
# third = word[3][1][2][0]
# list = [first, second, third]



# time = input("Enter time in 24-hour format (HH:MM): ")

# hour = int(time.split(":")[0])
# if hour >= 0 and hour < 12:
#     print("Good Morning")
# elif hour >= 12 and hour < 18:
#     print("Good Afternoon")
# elif hour >= 18 and hour < 21:
#     print("Good Evening")
# elif hour >= 21 and hour <= 24:
#     print("Good Night")
# else:
#     print("Wrong Input")



email = input("Email: ")

seperate = email.split('@')
name  = (seperate[0])
domain = seperate[1]
print(f"Your name is {name} and your domain is {domain}")

