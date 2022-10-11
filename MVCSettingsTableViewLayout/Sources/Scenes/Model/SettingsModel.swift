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
