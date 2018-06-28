//
//  Driver.swift
//  SwiftMinCaml
//
//  Created by Yuki Takahashi on 2018/06/17.
//

import Foundation

public struct Driver {
    public init() { }

    public func run(input: String) -> String {
        let parser = Parser()
        try! lexer.tokenize(input) { (t, c) in
            try! parser.consume(token: t, code: c)
        }
        var expr = try! parser.endParsing()
        let type = Typing.type(env: [:], expr: &expr)
        print(type)
        let output = CodeGen().gen(expr: expr)
        return output
    }
}
