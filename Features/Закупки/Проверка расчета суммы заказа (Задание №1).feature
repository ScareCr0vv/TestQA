﻿#language: ru



Функционал: Расчет суммы заказа при изменении цены и кол-ва

Как ОтветственныйЗаФормированиеЗаказа я хочу
Проверить расчет суммы заказа при изменении количества и цены
чтобы производился рассчет суммы

Контекст:
		Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий:  Рассчет суммы 
// Создание теста для расчета суммы
* Создаю дкоумент "Заказ"
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполняю шапку документа
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Мелкооптовая'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Добавляю данные в ТЧ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2 500,00'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка расчета суммы
	Тогда таблица "Товары" стала равной:
		| 'Цена'     | 'Количество' | 'Сумма'    |
		| '2 500,00' | '2'          | '5 000,00' |
	И я нажимаю на кнопку "Записать"
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
* Провожу и закрываю заказ
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер'   |
		| '$Номер$' |
	