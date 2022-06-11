#language: ru

@tree

Функционал: тестирование отчета Продажи

Как Тестировщик я хочу
протестировать отчеты 
чтобы проверить что у пользователя не возникает проблем

Контекст:
    Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: заполнение данных
    Когда экспорт основных данных
    Когда экспорт документов реализации
    И я выполняю код встроенного языка на сервере
    |'Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
    |'Документы.SalesInvoice.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
    |'Документы.RetailSalesReceipt.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
    |'Документы.RetailSalesReceipt.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
    |'Документы.RetailReturnReceipt.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
    |'Документы.RetailSalesReceipt.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|    

Сценарий: тестирование отчета Продажи
* Открытие отчета
    И я закрываю все окна клиентского приложения
    И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'

* Настройка отчета 
    И я нажимаю на кнопку с именем 'FormChangeVariant'
    И я перехожу к закладке с именем "FilterPage"
    И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterAddFilterItem'
    И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterContextMenuUseFieldAsValue'
    И в таблице "SettingsComposerSettingsFilter" я выбираю текущую строку
    И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterLeftValue" я выбираю точное значение 'Регистратор'
    И в таблице "SettingsComposerSettingsFilter" я активизирую поле с именем "SettingsComposerSettingsFilterComparisonType"
    И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterComparisonType" я выбираю точное значение 'Не равно'
    И в таблице "SettingsComposerSettingsFilter" я активизирую поле с именем "SettingsComposerSettingsFilterRightValue"
    И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterRightValue" я выбираю точное значение 'Инвойс'
    И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
    И я нажимаю на кнопку с именем 'FormEndEdit'

* Формирование и проверка отчета
    И я нажимаю на кнопку с именем 'FormGenerate'
    И я жду когда в табличном документе "Result" заполнится ячейка "R8C1" в течение 20 секунд
    Дано Табличный документ "Result" равен макету "Продажи1" по шаблону