# XSLT Эмулятор сервиса КУ ФЭР - Вызов врача на дом

Сервис написан на Node.js + Fastify. Обработка SOAP-запросов строится на генерации SOAP-ответов с помощью XSLT. Проект не расчитан на сложную логику это просто mock-сервис для отработки базовых сценариев взаимодействия по протоколу КУ ФЭР.

## Структура проекта
В директории **xml** содержатся эталонные ответы и запросы - файлы ```Request.xml``` и ```Response.xml```. В файлах ```Transform.xslt``` содержится xslt-правила для трансформации запросов в ответы.

```text
    xml
    ├── CancelHouseCall
    │   ├── Request.xml
    │   ├── Response.xml
    │   └── Transform.xslt
    ├── CreateHouseCall
    │   ├── Request.xml
    │   ├── Response.xml
    │   └── Transform.xslt
    ├── GetHouseCallScheduleInfo
    │   ├── Request.xml
    │   ├── Response.xml
    │   └── Transform.xslt
    └── GetValidatePatientInfo
        ├── Request.xml
        ├── Response.xml
        └── Transform.xslt

```