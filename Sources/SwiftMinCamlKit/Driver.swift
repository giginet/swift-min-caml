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
        let (checkedExpr, _) = Typing.type(expr: expr)
        let (normalizedExpr, _) = Optimizer.kNormal([:], checkedExpr)
        let optimizedExpr = Optimizer.alpha([:],  normalizedExpr)
        print(normalizedExpr)
        print(optimizedExpr)
        let output = CodeGen().gen(expr: checkedExpr)
        return output
    }
}
