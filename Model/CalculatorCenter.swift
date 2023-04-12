//
//  CalculatorCenter.swift
//  CalculoIMC
//
//  Created by Rodrigo Telles on 11/04/23.
//

import UIKit

struct CalculatorCenter {
    var imc: IMC?
    
    func getIMCValue() -> String {
        let imcTo1DecimalPlace = String(format: "%.1f", imc?.value ?? 0.0)
        return imcTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "sem recomendações"
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? UIColor.lightGray
    }
    
    mutating func calculateIMC(height: Float, weight: Float) {
        let imcValue = weight / (height * height)
        if imcValue < 18.5 {
            imc = IMC(value: imcValue, advice: "coma mais pizza", color: UIColor.orange)
        } else if imcValue < 24.9 {
            imc = IMC(value: imcValue, advice: "tudo ok", color: UIColor.blue)
        } else {
            imc = IMC(value: imcValue, advice: "vá ao cardiologista", color: UIColor.red)
        }
       
    }
}
