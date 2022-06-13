#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Экспорт переменных

Переменные:
ЗаголовокФормыСпискаПоступления = '{!Metadata.Documents.PurchaseInvoice.ListPresentation}'
ЗаголовокПодсистемыЗакупок = '{!Metadata.Subsystems.PurchaseAP.Synonym}'

*ПроверяемоеЗначения
    | 'Имя'                       | 'Представление'               | 'Значение' |
    | 'СуммаДокументаПоступления' | 'Сумма документа поступления' | '900,00'   |

ИтоговаяСуммаОтчета = 'R16C3'

СообщениеШтрихкодНеНайден = '{!R().S_019}'