﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
* Проверка видимости элемента
	Если элемент формы с именем "Company" отсутствует на форме Тогда
        И я нажимаю кнопку выбора у поля с именем "Company"
    И я нажимаю кнопку выбора у поля с именем "PriceType"
* Сверка с макетами когда не совпадают строки
    Если Табличный документ "Result" равен макету "МакетЗакупки1" Тогда
    ИначеЕсли Табличный документ "Result" равен макету "МакетЗакупки2" Тогда
    Иначе
        Тогда я вызываю исключение "Макет не совпал с эталоном"
    Тогда Табличный документ "Result" равен макету "МакетЗакупки2"
    
* Стабилизация тестов
    Если появилось окно с заголовком "Соглашение (создание)" в течение 10 секунд Тогда
        И я закрываю окно "Соглашение (создание)"
        
* При создании первоначальных настроек
    Если в таблице "List" нет строки Тогда
        | 'Контрагент'  |
        | 'Контрагент1' |
        И я нажимаю на кнопку "Создать"
* Разные условия
    Если я нажимаю кнопку выбора у поля с именем "Company" Тогда
        И я закрываю текущее окно
        
    
        
    
    
    
    
    