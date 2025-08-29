import random

num = random.randint(1, 10)  # рандомное int от 1 до 10

print("Я загадал число от 1 до 10. Попробуй угадать!")

find = False

while not find:
    userNum = int(input("Введите число: "))

    if userNum == num:
        print("Поздравляю! Вы угадали число.")
        find = True

    else:
        print("Неверно. Попробуйте еще раз")


