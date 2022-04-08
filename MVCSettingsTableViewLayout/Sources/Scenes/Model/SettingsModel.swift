//
//  SettingsModel.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 05.04.2022.
//

import Foundation

final class SettingsModel {
    func createModel() -> [Section] {
        return [
            
            Section(sectionType: "Profile", option: [
                
                Settings(image: "profile.photo",
                         name: "Илья Волков",
                         detailedTitle: "Apple ID, iCloud, контент и покупки")]),
            
            Section(sectionType: "Default", option: [
                
                Settings(image: "airplane.mode",
                         name: "Авиарежим",
                         detailedTitle: nil),
                Settings(image: "wifi",
                         name: "Wi-Fi",
                         detailedTitle: "Не подключено"),
                Settings(image: "bluetooth",
                         name: "Bluetooth",
                         detailedTitle: "Вкл."),
                Settings(image: "cellular",
                         name: "Сотовая связь",
                         detailedTitle: nil),
                Settings(image: "modem",
                         name: "Режим модема",
                         detailedTitle: nil),
                Settings(image: "vpn",
                         name: "VPN",
                         detailedTitle: nil)]),
            
            Section(sectionType: "Default", option: [
                
                Settings(image: "notifications",
                         name: "Уведомления",
                         detailedTitle: nil),
                Settings(image: "sounds",
                         name: "Звуки, тактильные сигналы",
                         detailedTitle: nil),
                Settings(image: "focus",
                         name: "Фокусирование",
                         detailedTitle: nil),
                Settings(image: "screen.time",
                         name: "Экранное время",
                         detailedTitle: nil)]),
            
            Section(sectionType: "Default", option: [
                
                Settings(image: "main",
                         name: "Основные",
                         detailedTitle: "1"),
                Settings(image: "command.center",
                         name: "Пункт управления",
                         detailedTitle: nil),
                Settings(image: "screen.and.brightness",
                         name: "Экран и яркость",
                         detailedTitle: nil),
                Settings(image: "screen.home",
                         name: "Экран «‎Домой»‎",
                         detailedTitle: nil),
                Settings(image: "universal.access",
                         name: "Универсальный доступ",
                         detailedTitle: nil),
                Settings(image: "wallpaper",
                         name: "Обои",
                         detailedTitle: nil),
                Settings(image: "siri",
                         name: "Siri и Поиск",
                         detailedTitle: nil),
                Settings(image: "faceid",
                         name: "Face ID и код-пароль",
                         detailedTitle: nil),
                Settings(image: "SOS",
                         name: "Экстренный вызов - SOS",
                         detailedTitle: nil),
                Settings(image: "contact",
                         name: "Уведомления о контакте",
                         detailedTitle: nil),
                Settings(image: "battery",
                         name: "Аккумулятор",
                         detailedTitle: nil),
                Settings(image: "confidentiality",
                         name: "Конфиденциальность",
                         detailedTitle: nil)]),
            
            Section(sectionType: "Default", option: [
                
                Settings(image: "appstore",
                         name: "App Store",
                         detailedTitle: nil),
                Settings(image: "wallet",
                         name: "Wallet и Apple Pay",
                         detailedTitle: nil)]),
            
            Section(sectionType: "Default", option: [
                
                Settings(image: "passwords",
                         name: "Пароли",
                         detailedTitle: nil),
                Settings(image: "mail",
                         name: "Почта",
                         detailedTitle: nil),
                Settings(image: "contacts",
                         name: "Контакты",
                         detailedTitle: nil),
                Settings(image: "calendar",
                         name: "Календарь",
                         detailedTitle: nil),
                Settings(image: "notes",
                         name: "Заметки",
                         detailedTitle: nil),
                Settings(image: "reminders",
                         name: "Напоминания",
                         detailedTitle: nil),
                Settings(image: "recorder",
                         name: "Диктофон",
                         detailedTitle: nil),
                Settings(image: "telephone",
                         name: "Телефон",
                         detailedTitle: nil),
                Settings(image: "message",
                         name: "Сообщения",
                         detailedTitle: nil),
                Settings(image: "facetime",
                         name: "FaceTime",
                         detailedTitle: nil),
                Settings(image: "safari",
                         name: "Safari",
                         detailedTitle: nil),
                Settings(image: "stock",
                         name: "Акции",
                         detailedTitle: nil),
                Settings(image: "weather",
                         name: "Погода",
                         detailedTitle: nil),
                Settings(image: "translate",
                         name: "Перевод",
                         detailedTitle: nil),
                Settings(image: "maps",
                         name: "Карты",
                         detailedTitle: nil),
                Settings(image: "compass",
                         name: "Компас",
                         detailedTitle: nil),
                Settings(image: "roulette",
                         name: "Рулетка",
                         detailedTitle: nil),
                Settings(image: "quick.commands",
                         name: "Быстрые команды",
                         detailedTitle: nil),
                Settings(image: "health",
                         name: "Здоровье",
                         detailedTitle: nil)]),
            
            Section(sectionType: "Default", option: [
                
                Settings(image: "music",
                         name: "Музыка",
                         detailedTitle: nil),
                Settings(image: "tv",
                         name: "TV",
                         detailedTitle: nil),
                Settings(image: "photo",
                         name: "Фото",
                         detailedTitle: nil),
                Settings(image: "camera",
                         name: "Камера",
                         detailedTitle: nil),
                Settings(image: "books",
                         name: "Книги",
                         detailedTitle: nil),
                Settings(image: "podcasts",
                         name: "Подкасты",
                         detailedTitle: nil),
                Settings(image: "game.center",
                         name: "Game Center",
                         detailedTitle: nil)])
        ]
    }
}
