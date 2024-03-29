﻿#language: ru

@tree
@screenshot
Функционал: Прикрепление картинки в товар

Как ученик тестировщик я хочу
Протестировать, что в форму элемента справочника Товар есть возможность прикрепления файла картинки
чтобы товар был с картинкой 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Финальное задание №1 В форму элемента справочника Товар была добавлена возможность прикрепления файла картинки
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Продажи' 'Товары'
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке
	| 'Код'       |
	| '000000017' |
И в таблице "Список" я выбираю текущую строку
Если элемент "ФайлКартинки" присутствует на форме Тогда
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда в таблице "Список" я перехожу к строке
	| 'Код'       |
	| '000000017' |
	И в таблице "Список" я выбираю текущую строку
	@screenshot
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Bosch1234 (Товар) *' в течение 20 секунд
Иначе 
	Тогда появилось предупреждение, содержащее текст "Картинку добавить нельзя"
И я закрываю все окна клиентского приложения		




