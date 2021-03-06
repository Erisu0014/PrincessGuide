//
//  Card+Rarity6.swift
//  PrincessGuide
//
//  Created by zzk on 8/31/19.
//  Copyright © 2019 zzk. All rights reserved.
//

import Foundation

extension Card {
    
    struct Rarity6: Codable {
        let unitId: Int
        let slotId: Int
        let unlockLevel: Int
        let unlockFlag: Int
        let consumeGold: Int
        let materialType: Int
        let materialId: Int
        let materialCount: Int
        let hp: Int
        let atk: Int
        let magicStr: Int
        let def: Int
        let magicDef: Int
        let physicalCritical: Int
        let magicCritical: Int
        let waveHpRecovery: Int
        let waveEnergyRecovery: Int
        let dodge: Int
        let physicalPenetrate: Int
        let magicPenetrate: Int
        let lifeSteal: Int
        let hpRecoveryRate: Int
        let energyRecoveryRate: Int
        let energyReduceRate: Int
        let accuracy: Int
        
        var property: Property {
            return Property(atk: Double(atk), def: Double(def), dodge: Double(dodge),
                            energyRecoveryRate: Double(energyRecoveryRate), energyReduceRate: Double(energyReduceRate),
                            hp: Double(hp), hpRecoveryRate: Double(hpRecoveryRate), lifeSteal: Double(lifeSteal),
                            magicCritical: Double(magicCritical), magicDef: Double(magicDef),
                            magicPenetrate: Double(magicPenetrate), magicStr: Double(magicStr),
                            physicalCritical: Double(physicalCritical), physicalPenetrate: Double(physicalPenetrate),
                            waveEnergyRecovery: Double(waveEnergyRecovery), waveHpRecovery: Double(waveHpRecovery), accuracy: Double(accuracy))
        }
    }
    
    var hasRarity6: Bool {
        return rarity6s.filter { $0.unlockFlag == 1 }.count > 0
    }
    
}
