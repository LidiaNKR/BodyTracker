//
//  Nutrient.swift
//  BodyTracker
//
//  Created by Лидия Ладанюк on 06.04.2023.
//

struct Nutrient {
    let name: String
    let description: String
}

extension Nutrient {
    static func getNutrientList() -> [Nutrient] {
        [
            Nutrient(name: "Белки", description: """
Полноценные источники белка: яйца, мясо, рыба, птица, морепродукты, творог.
Неполноценные источники белка: нут, орехи, бобовые, соевые продукты, семена.
"""),
            Nutrient(name: "Жиры", description: """
Иточники насыщенных жиров: жирные мясные продукты (колбасы и т.д.) фастфуд, кондитерские изделия, шоколад, молочные продукты.
Иточники ненасыщенных жиров: рыба, морепродкты, растительные масла, орехи и семена, мясо, яйца, овощи.
"""),
            Nutrient(name: "Углеводы", description: """
Простые углеводы: сахар, кондитерские изделия, сладкие напитки, мучные изделия, блюда из картофеля, рисовые и манные каши.
Иточники сложных углеводов: крупы, бобовые, картофель и другие овощи.
"""),
            Nutrient(name: "Клетчатка", description: """
Источники растворимой клетчатки: горох, фасоль, бобы, чечевица, овес, рожь, ячмень, чернослив, изюм, авокадо, ягоды, бананы, кожура яблок, айвы и персиков.
Источники нерастворимой клетчатки: отруби, необработанные зерновые, бобовые, орехи, семена, стручковая фасоль, цветная капуста, брокколи, зелень, кожура фруктов и овощей.
""")
        ]
    }
}