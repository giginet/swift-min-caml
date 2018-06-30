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
        let expr = try! parser.endParsing()
        let (checkedExpr, _) = Typing.type(env: [:], expr: expr)
        let (normalizedExpr, _) = Optimizer.kNormal([:], checkedExpr)
        print(normalizedExpr)
        let output = CodeGen().gen(expr: checkedExpr)
        return output
    }
}
