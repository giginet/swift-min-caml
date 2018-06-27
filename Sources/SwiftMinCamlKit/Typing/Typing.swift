//
//  Typing.swift
//  SwiftMinCamlKit
//
//  Created by Yuki Takahashi on 2018/06/21.
//

private var counter: Int = 0

extension Type {
    static func newTypeVar() -> Type {
        defer {
            counter += 1
        }
        return .typeVar(name: "TypeVar\(counter)")
    }
}

enum Typing {
    static func type(expr: Expr) -> TypedExpr {
        let constraintType = expr.constraintTyping()
        return unify(typedExpr: constraintType)
    }
    
    private static func unify(typedExpr: TypedExpr) -> TypedExpr {
        switch typedExpr {
        case let .const(const, type):
            precondition(!type.isTypeVar)
            return .const(const: const, type: type)
        case let .arithOps(ops, args, type):
            let lhs = unify(typedExpr: args.first!)
            let rhs = unify(typedExpr: args.last!)
            let concreteType = unifyBinaryOpsType(lhs: lhs.type, rhs: rhs.type)
            return .arithOps(ops: ops,
                             args: [lhs.typed(type: concreteType), rhs.typed(type: concreteType)],
                             type: concreteType)
        case let .`if`(cond, ifTrue, ifFalse, type):
            fatalError()
        case let .`let`(varName, bind, body, type):
            fatalError()
        case let .`var`(variable, type):
            fatalError()
        case let .letRec(name, args, bind, body, type):
            fatalError()
        case let .apply(function, args, type):
            fatalError()
        case let .tuple(elements, type):
            fatalError()
        case let .readTuple(vars, bindings, body, type):
            fatalError()
        case let .createArray(size, element, type):
            fatalError()
        case let .readArray(array, index, type):
            fatalError()
        case let .writeArray(array, index, value, type):
            fatalError()
        }
    }
    
    private static func unifyBinaryOpsType(lhs: Type, rhs: Type) -> Type {
        switch (lhs, rhs) {
        case (.int, .int):
            return .int
        case (.int, .typeVar):
            return .int
        case (.typeVar, .int):
            return .int
        case (.float, .float):
            return .float
        case (.float, .typeVar):
            return .float
        case (.typeVar, .float):
            return .float
        case (.bool, .typeVar):
            return .bool
        case (.typeVar, .bool):
            return .bool
        case (.bool, .bool):
            return .bool
        default:
            fatalError("cannot unify")
        }
    }
    
    static func type(const: Const) -> Type {
        switch const {
        case .bool:
            return .bool
        case .float:
            return .float
        case .integer:
            return .int
        }
    }
}
