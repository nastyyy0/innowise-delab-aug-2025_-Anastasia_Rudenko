scores = [75, 88, 95, 0, 100]
total_score = 0

for score in scores:
    if score < 0:
        continue  # пропускаем отрицательные баллы
    if score == 0:
        print("Обработка прервана.")
        break  # прерываем цикл при 0
    total_score += score
    print(f"Добавлен балл: {score}")
else:
    print("Все данные успешно обработаны.")

print(f"\nИтоговая сумма баллов: {total_score}")


