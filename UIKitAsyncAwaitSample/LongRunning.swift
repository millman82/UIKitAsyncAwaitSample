//
//  LongRunning.swift
//  UIKitAsyncAwaitSample
//
//  Created by Timothy Miller on 6/9/21.
//

import Foundation

class LongRunning {
    func execute() async -> Int {
        sleep(5)
        
        return 10
    }
}
