//
//  ObservableType.swift
//  MyRxSwift
//
//  Copyright © 2016年 gomi_ningen. All rights reserved.
//

import Foundation

public protocol ObservableType {
    typealias E
    func subscribe<O: ObserverType where O.E == E>(observer: O) -> Disposable
}
