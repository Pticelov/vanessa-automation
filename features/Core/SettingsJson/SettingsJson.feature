﻿#language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837

Функционал: Проверка работы с файлами настройки

Как разработчик
Я хочу чтобы корректно выгружались и загружались настройки VA в формате Json
Чтобы я мог видеть результат работы сценариев

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Когда Я открываю VanessaAutomation в режиме TestClient

Сценарий: Выгрузка настроек в файл ru

	Если Файл "$КаталогИнструментов$/temp" существует тогда
	Иначе
		Тогда я создаю каталог "$КаталогИнструментов$/temp"
	И я очищаю каталог "$КаталогИнструментов$/temp/"
	И я буду выбирать внешний файл "$КаталогИнструментов$/temp/VAParams_ru.json"
	И я нажимаю на кнопку 'Выгрузить настройки в файл...'
	И пауза 2
	Затем количество файлов в каталоге "$КаталогИнструментов$/temp" я запоминаю как "КоличествоФайлов"
	Тогда переменная "КоличествоФайлов" имеет значение 1
	И файл "$КаталогИнструментов$/temp/VAParams_ru.json" содержит строки
		|'"Lang": "ru",'|

Сценарий: Загрузка настроек из файла ru

	Если файл "$КаталогИнструментов$/features/Core/SettingsJson/VAParams_test_ru.json" существует
		Тогда Я буду выбирать внешний файл "$КаталогИнструментов$/features/Core/SettingsJson/VAParams_test_ru.json"
		И я нажимаю на кнопку "Загрузить настройки из файла..."
		И пауза 2
		Тогда элемент формы "Команда создания скриншотов" стал равен "TestVAParams"

Сценарий: Выгрузка настроек в файл en

	Если Файл "$КаталогИнструментов$/temp" существует тогда
	Иначе
		Тогда я создаю каталог "$КаталогИнструментов$/temp"
	И я очищаю каталог "$КаталогИнструментов$/temp/"
	И я перехожу к закладке "Сервис"
	И из выпадающего списка "Язык генератора Gherkin" я выбираю точное значение "English"
	И я буду выбирать внешний файл "$КаталогИнструментов$/temp/VAParams_en.json"
	И я нажимаю на кнопку 'Выгрузить настройки в файл...'
	И пауза 2
	Затем количество файлов в каталоге "$КаталогИнструментов$/temp" я запоминаю как "КоличествоФайлов"
	Тогда переменная "КоличествоФайлов" имеет значение 1
	И файл "$КаталогИнструментов$/temp/VAParams_en.json" содержит строки
		|'"Lang": "en",'|
	
Сценарий: Загрузка настроек из файла en

	Если файл "$КаталогИнструментов$/features/Core/SettingsJson/VAParams_test_en.json" существует
		Тогда Я буду выбирать внешний файл "$КаталогИнструментов$/features/Core/SettingsJson/VAParams_test_en.json"
		И я нажимаю на кнопку "Загрузить настройки из файла..."
		И пауза 2
		Тогда элемент формы "Команда создания скриншотов" стал равен "TestVAParams"