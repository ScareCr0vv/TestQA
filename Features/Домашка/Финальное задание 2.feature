﻿#language: ru

@tree

Функционал: Формирование отчета Остатки

Как ученик тестировщик я хочу
Проверить формирование отчета Остатки
чтобы отчет формировался

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Формирование отчета Остатки
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
И я нажимаю на кнопку с именем 'ФормаСформировать'
И в табличном документе "Результат" ячейка с адресом "R3C3" равна "1,00"
И я закрываю все окна клиентского приложения