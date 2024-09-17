//
//  CronogramaViewModel.swift
//  PlannedTime
//
//  Created by found on 30/08/24.
//

import Foundation

class CronogramaViewModel: ObservableObject {
    @Published var cronogramas: [Cronograma] = []
    
    func addCronograma(title: String, date: Date) {
        let newCronograma = Cronograma(title: title, date: date)
        cronogramas.append(newCronograma)
    }
}


