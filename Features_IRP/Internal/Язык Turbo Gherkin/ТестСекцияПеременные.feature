﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Переменные:
импорт "Переменные.feature"

// Сценарий: открытие формы списка Поступления товаров и услуг
//     И В командном интерфейсе я выбираю "ЗаголовокПодсистемыЗакупок" "ЗаголовокФормыСпискаПоступления"
    
//Сценарий: Проверка суммы документа Поступления
//    И у элемента формы с именем "ItemListTotalTotalAmount" текст редактирования стал равен 'ПроверяемоеЗначения.СуммаДокументаПоступления.Значение'

//Сценарий: проверка итоговой суммы отчета по закупкам
//    И в табличном документе 'Result' я перехожу к ячейке "ИтоговаяСуммаОтчета"

Сценарий: проверка сообщения
    И Я запоминаю значение выражения 'StrTemplate($СообщениеШтрихкодНеНайден$, "123")' в переменную "ИмяПеременной2"
    Дано В последнем сообщении TestClient есть строка "$ИмяПеременной2$"
