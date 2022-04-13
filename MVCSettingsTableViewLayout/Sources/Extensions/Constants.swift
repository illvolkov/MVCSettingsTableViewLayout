//
//  Constants.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 13.04.2022.
//

import Foundation
import UIKit

//MARK: - Offsets

enum Offsets {
    //SettingsView
    static let separatorLeftInsetForiPod: CGFloat = 56
    static let separatorLeftInsetForiPhone: CGFloat = 62
    
    //ProfileTableViewCell
    static let profileImageLeftOffset: CGFloat = 17
    static let profileNameLabelTopOffset: CGFloat = 20
    static let profileDetailedLabelTopOffset: CGFloat = 4
    static let leftOffset15: CGFloat = 15
    
    //SettingsTableViewCell
    static let settingIconLeftOffset: CGFloat = 16
    static let settingSwitchRightOffset: CGFloat = -22
    static let settingInformerLabelRightOffset: CGFloat = -10
    static let settingIndicatorBadgeRightOffset: CGFloat = -18
}

//MARK: - Sizes

enum Sizes {
    //ProfileTableViewCell
    static let profileImageCornerRadiusiPod: CGFloat = 0.08
    static let profileImageCornerRadiusiPhone: CGFloat = 0.1
    static let profileImageWidthMultiplierSize: CGFloat = 0.2
    static let profileNameLabelFontiPodSize: CGFloat = 0.06
    static let profileNameLabelFontiPhoneSize: CGFloat = 0.07
    static let profileDetailedLabelFontiPodSize: CGFloat = 0.03
    static let profileDetailedLabelFontiPhoneSize: CGFloat = 0.038
    static let contentViewHeightMultiplierSize: CGFloat = 0.28
    
    //SettingsTableViewCell
    static let iPodFontSize0_045: CGFloat = 0.045
    static let iPhoneFontSize0_053: CGFloat = 0.053
    static let settingIndicatorBadgeCornerRadiusiPod: CGFloat = 0.03
    static let settingIndicatorBadgeCornerRadiusiPhone: CGFloat = 0.0375
    static let settingIconWidthMultiplierSizeiPod: CGFloat = 0.088
    static let settingIconWidthMultiplierSizeiPhone: CGFloat = 0.095
    static let settingInformerLabelWidthMultiplierSize: CGFloat = 0.55
    static let settingIndicatorBadgeWidthMultiplierSize: CGFloat = 0.075
}

//MARK: - Strings

enum Strings {
    //ProfileTableViewCell
    static let profileSectionTypeName: String = "Profile"
    static let defaultSectionTypeName: String = "Default"
    static let profileDetailedTitle: String = "Apple ID, iCloud, контент и покупки"
    static let wifiDetailedTitle: String = "Не подключено"
    static let bluetoothDetailedTitle: String = "Вкл."
    static let mainDetailedTitle: String = "1"
    
    //SettingsModel
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

    //SettingsView
    static let fatalErrorMessage: String = "init(coder:) has not been implemented"
    static let iPodTouchName: String = "iPod touch (7th generation)"
    static let profileSectionType: String = "Profile"
    static let cellProfilePressed: String = "Нажата ячейка Профиль"
    static let cellPressed: String = "Нажата ячейка"
    
    //Identifiers for cell type
    static let profileCellIdentifier: String = "ProfileTableViewCell"
    static let settingCellIdentifier: String = "SettingsTableViewCell"
    
    //SettingsTableViewCell
    static let cellNameAirplaneMode: String = "Авиарежим"
    static let cellNameVPN: String = "VPN"
    static let cellNameWiFi: String = "Wi-Fi"
    static let cellNameBluetooth: String = "Bluetooth"
    static let cellNameMain: String = "Основные"
    
    //SettingsController
    static let searchBarPlaceholder: String = "Поиск"
    static let searchBarButtonName: String = "Отменить"
    static let searchBarButtonKey: String = "cancelButtonText"
    static let navigationItemTitle: String = "Настройки"
}

//MARK: - Icons

enum Icons {
    //SettingsModel
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

//MARK: - Display

enum Display {
    //SettingsTableViewCell
    static let settingInformerLabelAlpha: CGFloat = 0.6
}
