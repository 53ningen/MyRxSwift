//
//  Event.swift
//  MyRxSwift
//
//  Copyright © 2016年 gomi_ningen. All rights reserved.
//

import Foundation

// ^.Next\* (Error|Completed)
public enum Event<Element> {
    case Next(Element)
    case Error(ErrorType)
    case Completed
}

extension Event: CustomDebugStringConvertible {
    public var debugDescription: String {
        get {
            switch self {
            case .Next(let value): return "Next(\(value))"
            case .Error(let error): return "Error(\(error))"
            case .Completed: return "Completed"
            }
        }
    }
}
