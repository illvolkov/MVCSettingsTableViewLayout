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
            
            Section(sectionType: Strings.profileSectionTypeName, option: [
                
                Settings(image: Icons.profileCellIcon,
                         name: Strings.profileCellName,
                         detailedTitle: Strings.profileDetailedTitle)
            ]),
            
            Section(sectionType: Strings.defaultSectionTypeName, option: [
                
                Settings(image: Icons.airplaneModeCellIcon,
                         name: Strings.airplaneModeCellName,
                         detailedTitle: nil),
                Settings(image: Icons.wifiCellIcon,
                         name: Strings.wifiCellName,
                         detailedTitle: Strings.wifiDetailedTitle),
                Settings(image: Icons.bluetoothCellIcon,
                         name: Strings.bluetoothCellName,
                         detailedTitle: Strings.bluetoothDetailedTitle),
                Settings(image: Icons.cellularCellIcon,
                         name: Strings.cellularCellName,
                         detailedTitle: nil),
                Settings(image: Icons.modemCellIcon,
                         name: Strings.modemCellName,
                         detailedTitle: nil),
                Settings(image: Icons.vpnCellIcon,
                         name: Strings.vpnCellName,
                         detailedTitle: nil)
            ]),
            
            Section(sectionType: Strings.defaultSectionTypeName, option: [
                
                Settings(image: Icons.notificationsCellIcon,
                         name: Strings.notificationsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.soundsCellIcon,
                         name: Strings.soundsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.focusCellIcon,
                         name: Strings.focusCellName,
                         detailedTitle: nil),
                Settings(image: Icons.screenTimeCellIcon,
                         name: Strings.screenTimeCellName,
                         detailedTitle: nil)
            ]),
            
            Section(sectionType: Strings.defaultSectionTypeName, option: [
                
                Settings(image: Icons.mainCellIcon,
                         name: Strings.mainCellName,
                         detailedTitle: Strings.mainDetailedTitle),
                Settings(image: Icons.commandCenterCellIcon,
                         name: Strings.commandCenterCellName,
                         detailedTitle: nil),
                Settings(image: Icons.screenAndBrightnessCellIcon,
                         name: Strings.screenAndBrightnessCellName,
                         detailedTitle: nil),
                Settings(image: Icons.screenHomeCellIcon,
                         name: Strings.screenHomeCellName,
                         detailedTitle: nil),
                Settings(image: Icons.universalAccessCellIcon,
                         name: Strings.universalAccessCellName,
                         detailedTitle: nil),
                Settings(image: Icons.walletCellIcon,
                         name: Strings.wallpapperCellName,
                         detailedTitle: nil),
                Settings(image: Icons.siriCellIcon,
                         name: Strings.siriCellName,
                         detailedTitle: nil),
                Settings(image: Icons.faceIDCellIcon,
                         name: Strings.faceIDCellName,
                         detailedTitle: nil),
                Settings(image: Icons.sosCellIcon,
                         name: Strings.sosCellName,
                         detailedTitle: nil),
                Settings(image: Icons.contactCellIcon,
                         name: Strings.contactCellName,
                         detailedTitle: nil),
                Settings(image: Icons.batteryCellIcon,
                         name: Strings.batteryCellName,
                         detailedTitle: nil),
                Settings(image: Icons.confidentialityCellIcon,
                         name: Strings.confidentialityCellName,
                         detailedTitle: nil)
            ]),
            
            Section(sectionType: Strings.defaultSectionTypeName, option: [
                
                Settings(image: Icons.appStoreCellIcon,
                         name: Strings.appStoreCellName,
                         detailedTitle: nil),
                Settings(image: Icons.walletCellIcon,
                         name: Strings.walletCellName,
                         detailedTitle: nil)
            ]),
            
            Section(sectionType: Strings.defaultSectionTypeName, option: [
                
                Settings(image: Icons.passwordsCellIcon,
                         name: Strings.passwordsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.mailCellIcon,
                         name: Strings.mailCellName,
                         detailedTitle: nil),
                Settings(image: Icons.contactsCellIcon,
                         name: Strings.contactsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.calendarCellIcon,
                         name: Strings.calendarCellName,
                         detailedTitle: nil),
                Settings(image: Icons.notesCellIcon,
                         name: Strings.notesCellName,
                         detailedTitle: nil),
                Settings(image: Icons.remindersCellIcon,
                         name: Strings.remindersCellName,
                         detailedTitle: nil),
                Settings(image: Icons.recorderCellIcon,
                         name: Strings.recorderCellName,
                         detailedTitle: nil),
                Settings(image: Icons.telephoneCellIcon,
                         name: Strings.telephoneCellName,
                         detailedTitle: nil),
                Settings(image: Icons.messageCellIcon,
                         name: Strings.messageCellName,
                         detailedTitle: nil),
                Settings(image: Icons.facetimeCellIcon,
                         name: Strings.facetimeCellName,
                         detailedTitle: nil),
                Settings(image: Icons.safariCellIcon,
                         name: Strings.safariCellName,
                         detailedTitle: nil),
                Settings(image: Icons.stockCellIcon,
                         name: Strings.stockCellName,
                         detailedTitle: nil),
                Settings(image: Icons.weatherCellIcon,
                         name: Strings.weatherCellName,
                         detailedTitle: nil),
                Settings(image: Icons.translateCellIcon,
                         name: Strings.translateCellName,
                         detailedTitle: nil),
                Settings(image: Icons.mapsCellIcon,
                         name: Strings.mapsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.compassCellIcon,
                         name: Strings.compassCellName,
                         detailedTitle: nil),
                Settings(image: Icons.rouletteCellIcon,
                         name: Strings.rouletteCellName,
                         detailedTitle: nil),
                Settings(image: Icons.quickCommandsCellIcon,
                         name: Strings.quickCommandsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.healthCellIcon,
                         name: Strings.healthCellName,
                         detailedTitle: nil)
            ]),
            
            Section(sectionType: Strings.defaultSectionTypeName, option: [
                
                Settings(image: Icons.musicCellIcon,
                         name: Strings.musicCellName,
                         detailedTitle: nil),
                Settings(image: Icons.tvCellIcon,
                         name: Strings.tvCellName,
                         detailedTitle: nil),
                Settings(image: Icons.photoCellIcon,
                         name: Strings.photoCellName,
                         detailedTitle: nil),
                Settings(image: Icons.cameraCellIcon,
                         name: Strings.cameraCellName,
                         detailedTitle: nil),
                Settings(image: Icons.booksCellIcon,
                         name: Strings.booksCellName,
                         detailedTitle: nil),
                Settings(image: Icons.podcastsCellIcon,
                         name: Strings.podcastsCellName,
                         detailedTitle: nil),
                Settings(image: Icons.gameCenterCellIcon,
                         name: Strings.gameCenterCellName,
                         detailedTitle: nil)
            ])
        ]
    }
}

//MARK: - Constants

extension SettingsModel {
    enum Strings {
        static let profileSectionTypeName: String = "Profile"
        static let defaultSectionTypeName: String = "Default"
        static let profileDetailedTitle: String = "Apple ID, iCloud, контент и покупки"
        static let wifiDetailedTitle: String = "Не подключено"
        static let bluetoothDetailedTitle: String = "Вкл."
        static let mainDetailedTitle: String = "1"
        
        static let profileCellName: String = "Илья Волков"
        static let airplaneModeCellName: String = "Авиарежим"
        static let wifiCellName: String = "Wi-Fi"
        static let bluetoothCellName: String = "Bluetooth"
        static let cellularCellName: String = "Сотовая связь"
        static let modemCellName: String = "Режим модема"
        static let vpnCellName: String = "VPN"
        static let notificationsCellName: String = "Уведомления"
        static let soundsCellName: String = "Звуки, тактильные сигналы"
        static let focusCellName: String = "Фокусирование"
        static let screenTimeCellName: String = "Экранное время"
        static let mainCellName: String = "Основные"
        static let commandCenterCellName: String = "Пункт управления"
        static let screenAndBrightnessCellName: String = "Экран и яркость"
        static let screenHomeCellName: String = "Экран «‎Домой»‎"
        static let universalAccessCellName: String = "Универсальный доступ"
        static let wallpapperCellName: String = "Обои"
        static let siriCellName: String = "Siri и Поиск"
        static let faceIDCellName: String = "Face ID и код-пароль"
        static let sosCellName: String = "Экстренный вызов - SOS"
        static let contactCellName: String = "Уведомления о контакте"
        static let batteryCellName: String = "Аккумулятор"
        static let confidentialityCellName: String = "Конфиденциальность"
        static let appStoreCellName: String = "App Store"
        static let walletCellName: String = "Wallet и Apple Pay"
        static let passwordsCellName: String = "Пароли"
        static let mailCellName: String = "Почта"
        static let contactsCellName: String = "Контакты"
        static let calendarCellName: String = "Календарь"
        static let notesCellName: String = "Заметки"
        static let remindersCellName: String = "Напоминания"
        static let recorderCellName: String = "Диктофон"
        static let telephoneCellName: String = "Телефон"
        static let messageCellName: String = "Сообщения"
        static let facetimeCellName: String = "FaceTime"
        static let safariCellName: String = "Safari"
        static let stockCellName: String = "Акции"
        static let weatherCellName: String = "Погода"
        static let translateCellName: String = "Перевод"
        static let mapsCellName: String = "Карты"
        static let compassCellName: String = "Компас"
        static let rouletteCellName: String = "Рулетка"
        static let quickCommandsCellName: String = "Быстрые команды"
        static let healthCellName: String = "Здоровье"
        static let musicCellName: String = "Музыка"
        static let tvCellName: String = "TV"
        static let photoCellName: String = "Фото"
        static let cameraCellName: String = "Камера"
        static let booksCellName: String = "Книги"
        static let podcastsCellName: String = "Подкасты"
        static let gameCenterCellName: String = "Game Center"

    }
    
    enum Icons {
        static let profileCellIcon: String = "profile.photo"
        static let airplaneModeCellIcon: String = "airplane.mode"
        static let wifiCellIcon: String = "wifi"
        static let bluetoothCellIcon: String = "bluetooth"
        static let cellularCellIcon: String = "cellular"
        static let modemCellIcon: String = "modem"
        static let vpnCellIcon: String = "vpn"
        static let notificationsCellIcon: String = "notifications"
        static let soundsCellIcon: String = "sounds"
        static let focusCellIcon: String = "focus"
        static let screenTimeCellIcon: String = "screen.time"
        static let mainCellIcon: String = "main"
        static let commandCenterCellIcon: String = "command.center"
        static let screenAndBrightnessCellIcon: String = "screen.and.brightness"
        static let screenHomeCellIcon: String = "screen.home"
        static let universalAccessCellIcon: String = "universal.access"
        static let wallpapperCellIcon: String = "wallpaper"
        static let siriCellIcon: String = "siri"
        static let faceIDCellIcon: String = "faceid"
        static let sosCellIcon: String = "SOS"
        static let contactCellIcon: String = "contact"
        static let batteryCellIcon: String = "battery"
        static let confidentialityCellIcon: String = "confidentiality"
        static let appStoreCellIcon: String = "appstore"
        static let walletCellIcon: String = "wallet"
        static let passwordsCellIcon: String = "passwords"
        static let mailCellIcon: String = "mail"
        static let contactsCellIcon: String = "contacts"
        static let calendarCellIcon: String = "calendar"
        static let notesCellIcon: String = "notes"
        static let remindersCellIcon: String = "reminders"
        static let recorderCellIcon: String = "recorder"
        static let telephoneCellIcon: String = "telephone"
        static let messageCellIcon: String = "message"
        static let facetimeCellIcon: String = "facetime"
        static let safariCellIcon: String = "safari"
        static let stockCellIcon: String = "stock"
        static let weatherCellIcon: String = "weather"
        static let translateCellIcon: String = "translate"
        static let mapsCellIcon: String = "maps"
        static let compassCellIcon: String = "compass"
        static let rouletteCellIcon: String = "roulette"
        static let quickCommandsCellIcon: String = "quick.commands"
        static let healthCellIcon: String = "health"
        static let musicCellIcon: String = "music"
        static let tvCellIcon: String = "tv"
        static let photoCellIcon: String = "photo"
        static let cameraCellIcon: String = "camera"
        static let booksCellIcon: String = "books"
        static let podcastsCellIcon: String = "podcasts"
        static let gameCenterCellIcon: String = "game.center"
    }
}
