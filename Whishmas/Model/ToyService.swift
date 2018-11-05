//
//  PresentService.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

class ToyService {
    static let shared = ToyService()
    private init() {}

    private(set) var toys: [Toy] = []

    func add(toy: Toy) {
        toys.append(toy)
    }
}
