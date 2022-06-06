﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: заполнение шапки документа Заказ

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: заполнение шапки документа Заказ
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'