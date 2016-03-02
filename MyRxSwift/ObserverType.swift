//
//  ObserverType.swift
//  MyRxSwift
//
//  Copyright © 2016年 gomi_ningen. All rights reserved.
//

import Foundation

public protocol ObserverType {
    typealias E
    func on(event: Event<E>)
}

public extension ObserverType {

    final func onNext(element: E) {
        on(.Next(element))
    }
    
    final func onCompleted() {
        on(.Completed)
    }
    
    final func onError(error: ErrorType) {
        on(.Error(error))
    }
    
}
