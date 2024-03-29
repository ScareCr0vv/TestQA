﻿#language: ru

@tree
@Отчеты

Функционал: тестирование отчетов

Как ТестировщикУченик я хочу
отображение возвратов в отчете D2001 Продажи
чтобы проверить что все отображается

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0403 подготовка данных для тестирования отображения возвратов в отчете D2001 Продажи
	И я закрываю все окна клиентского приложения
	Когда экспорт основных данных
	Когда экспорт загрузки возвратов 
	И я выполняю код встроенного языка на сервере
			| 'Документы.SalesReturn.НайтиПоНомеру(5).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |

Сценарий: _0404 Тестируем что данные попадают в отчет D2001 Продажи при Возврате товара
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И в табличном документе "Result" ячейка с адресом "R11C4" равна "-375,00"
	И я закрываю все окна клиентского приложения	
