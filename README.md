# TODO: should be renaimed

<!-- [![Go Report Card](https://goreportcard.com/badge/github.com/devalv/wb-inbox-mail-count)](https://goreportcard.com/report/github.com/devalv/wb-inbox-mail-count) -->
<!-- [![CodeQL](https://github.com/devalv/wb-inbox-mail-count/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/devalv/wb-inbox-mail-count/actions/workflows/codeql-analysis.yml) -->
<!-- [![codecov](https://codecov.io/gh/devalv/wb-inbox-mail-count/branch/main/graph/badge.svg)](https://codecov.io/gh/devalv/wb-inbox-mail-count) -->

## TODO: пример работы
TODO: заполнить

## Установка и конфигурация
TODO: заполнить

### Установка собранного bin-файла
TODO: заполнить

### Содержимое конфигурационного файла приложения (config.yml)
```
debug: false
```

## Установка для разработки
1. Убедитесь, что установлена подходящая версия [Go](https://go.dev/dl/) - **1.23**.

2. Запустите **make** команду для установки утилит разработки.

```bash
make setup
```

### Make команды
- **setup**   - установка утилит для разработки/проверки
- **fmt**     - запуск gofmt и goimports
- **test**    - запуск тестов
- **cover**   - вывод % покрытия тестов
- **build**   - сборка исполняемого файла


## Структура проекта
```
go-boiler/
├── cmd/
│   └── app/
│       └── main.go
├── internal/
|   ├── app/
│       └── app.go           // Методы работы с приложением
|   ├── config/              // Хранение конфигураций для всех частей проекта
│   │   └── config.go
|   ├── transport/           // Часть на получение внутри
│   │   ├── http/
│   │   ├── grpc/
│   │   └── messaging/       // Консьюмеры
|   ├── domain/              // Обобщенные структуры / константы / ошибки
|   |   ├── models/
│   │   ├── errors/
│   │   └── consts/
|   |       └──consts.go
|   ├── usecase/             // Бизнес логика
│   │   └── waybar.go
```

<!-- ## Сборка deb-пакета -->
<!-- TODO: актуализировать для v0.2 -->

## TODO v0.2
- TODO: автоматизировать сборку deb-пакета в github
- TODO: автоматизировать сборку bin-артефактов в github
- TODO: тесты
- TODO: сборка debian-пакета
