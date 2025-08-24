import random

num = random.randint(1, 5) #рандомное int от 1 до 5

print("Я загадал число от 1 до 5. Попробуй угадать!")

userNum = int(input("Введите число: "))

#сравнение числа пользователя
if num == userNum:
    print("Ты угадал!")
elif num > userNum:
    print("Слишком мало!")
else:
    print("Слишком много!")
    
