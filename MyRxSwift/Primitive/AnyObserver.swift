//
//  AnyObserver.swift
//  MyRxSwift
//
//  Copyright © 2016年 gomi_ningen. All rights reserved.
//

import Foundation

public struct AnyObserver<Element>: ObserverType {
    public typealias E = Element
    public typealias EventHandler = (Event<Element>) -> Void
    
    public let observer: EventHandler
    public init(handler: EventHandler) {
        self.observer = handler
    }
    public func on(event: Event<E>) {
        observer(event)
    }
    
    
    
}
