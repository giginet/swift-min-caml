// This file is automatically generated by Citron version 1.0.
//
// The parser class defined below conforms to the CitronParser protocol
// defined in CitronParser.swift. 
// 
// The authors of Citron disclaim copyright to the source code in this file.

// Parser class

class Parser: CitronParser {

    // Types

    typealias CitronSymbolCode = UInt8
    typealias CitronStateNumber = UInt8
    typealias CitronRuleNumber = UInt8

    enum CitronTokenCode: CitronSymbolCode {
      case ADD                            =   1
      case SUBTRACT                       =   2
      case MULTIPLY                       =   3
      case DIVIDE                         =   4
      case INTEGER                        =   5
    }

    typealias CitronToken = Int

    enum CitronSymbol {
        case yyBaseOfStack
        case yy0(CitronToken)
        case yy14(Const)
        case yy18(Expr)
    }

    typealias CitronResult = Expr

    // Counts

    let yyNumberOfSymbols: Int = 9
    let yyNumberOfStates: Int = 8

    // Action tables

    let yyLookaheadAction: [(CitronSymbolCode, CitronParsingAction)] = [
/*   0 */  ( 0, .RD( 0)), ( 1, .SH( 4)), ( 2, .SH( 3)), ( 3, .SH( 2)), ( 4, .SH( 1)),
/*   5 */  ( 6, .ACCEPT),   ( 7, .SH( 5)), ( 8, .RD( 5)), ( 7, .RD( 4)), ( 8, .RD( 5)),
/*  10 */  ( 7, .RD( 3)), ( 8, .RD( 5)), ( 7, .SH( 6)), ( 8, .RD( 5)), ( 7, .SH( 7)),
/*  15 */  ( 8, .RD( 5)), ( 3, .SH( 2)), ( 4, .SH( 1)), ( 9, .RD( 2)), ( 5, .SR( 6)),
    ]

    let yyShiftUseDefault: Int = 20
    let yyShiftOffsetMin: Int = 0
    let yyShiftOffsetMax: Int = 14
    let yyShiftOffset: [Int] = [
        /*     0 */    14,   14,   14,   14,   14,    0,   13,   13,
    ]

    let yyReduceUseDefault: Int = -2
    let yyReduceOffsetMin: Int =   -1
    let yyReduceOffsetMax: Int =   7
    let yyReduceOffset: [Int] = [
        /*     0 */    -1,    1,    3,    5,    7,
    ]

    let yyDefaultAction: [CitronParsingAction] = [
  /*     0 */  .ERROR , .ERROR , .ERROR , .ERROR , .ERROR ,
  /*     5 */  .ERROR , .RD( 2), .RD( 1),
    ]

    // Fallback

    let yyHasFallback: Bool = false
    let yyFallback: [CitronSymbolCode] = []

    // Wildcard

    let yyWildcard: CitronSymbolCode? = nil

    // Rules

    let yyRuleInfo: [(lhs: CitronSymbolCode, nrhs: UInt)] = [
        (lhs: 6, nrhs: 1),
        (lhs: 7, nrhs: 3),
        (lhs: 7, nrhs: 3),
        (lhs: 7, nrhs: 3),
        (lhs: 7, nrhs: 3),
        (lhs: 7, nrhs: 1),
        (lhs: 8, nrhs: 1),
    ]

    // Stack

    var yyStack: [(stateOrRule: CitronStateOrRule , symbolCode: CitronSymbolCode, symbol: CitronSymbol)]  = [
        (stateOrRule: .state(0), symbolCode: 0, symbol: .yyBaseOfStack)
    ]
    var maxStackSize: Int? = nil
    // Tracing

    var isTracingEnabled: Bool = false
    let yySymbolName: [String] = [
        "$",                   "ADD",                 "SUBTRACT",            "MULTIPLY",    
        "DIVIDE",              "INTEGER",             "root",                "expr",        
        "const",       
    ]
    let yyRuleText: [String] = [
        /*   0 */ "root ::= expr(a)",
        /*   1 */ "expr ::= expr(a) ADD expr(b)",
        /*   2 */ "expr ::= expr(a) SUBTRACT expr(b)",
        /*   3 */ "expr ::= expr(a) MULTIPLY expr(b)",
        /*   4 */ "expr ::= expr(a) DIVIDE expr(b)",
        /*   5 */ "expr ::= const(a)",
        /*   6 */ "const ::= INTEGER(a)",
    ]

    // Function definitions

    func yyTokenToSymbol(_ token: CitronToken) -> CitronSymbol {
        return .yy0(token)
    }

    func yyInvokeCodeBlockForRule(ruleNumber: CitronRuleNumber) throws -> CitronSymbol {
        switch (ruleNumber) {
        case 0: /* root ::= expr(a) */
            func codeBlockForRule0(a: Expr) throws -> Expr {
    return a
 }
            if case .yy18(let a) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy18(try codeBlockForRule0(a: a))
            }
        case 1: /* expr ::= expr(a) ADD expr(b) */
            func codeBlockForRule1(a: Expr, b: Expr) throws -> Expr {
    return .arithOps(ops: .add, args: [a, b])
 }
            if case .yy18(let a) = yySymbolOnStack(distanceFromTop: 2),
               case .yy18(let b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy18(try codeBlockForRule1(a: a, b: b))
            }
        case 2: /* expr ::= expr(a) SUBTRACT expr(b) */
            func codeBlockForRule2(a: Expr, b: Expr) throws -> Expr {
    return .arithOps(ops: .sub, args: [a, b])
 }
            if case .yy18(let a) = yySymbolOnStack(distanceFromTop: 2),
               case .yy18(let b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy18(try codeBlockForRule2(a: a, b: b))
            }
        case 3: /* expr ::= expr(a) MULTIPLY expr(b) */
            func codeBlockForRule3(a: Expr, b: Expr) throws -> Expr {
    return .arithOps(ops: .mul, args: [a, b])
 }
            if case .yy18(let a) = yySymbolOnStack(distanceFromTop: 2),
               case .yy18(let b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy18(try codeBlockForRule3(a: a, b: b))
            }
        case 4: /* expr ::= expr(a) DIVIDE expr(b) */
            func codeBlockForRule4(a: Expr, b: Expr) throws -> Expr {
    return .arithOps(ops: .div, args: [a, b])
 }
            if case .yy18(let a) = yySymbolOnStack(distanceFromTop: 2),
               case .yy18(let b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy18(try codeBlockForRule4(a: a, b: b))
            }
        case 5: /* expr ::= const(a) */
            func codeBlockForRule5(a: Const) throws -> Expr {
    return .const(const: a)
 }
            if case .yy14(let a) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy18(try codeBlockForRule5(a: a))
            }
        case 6: /* const ::= INTEGER(a) */
            func codeBlockForRule6(a: Int) throws -> Const {
    return .integer(a)
 }
            if case .yy0(let a) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy14(try codeBlockForRule6(a: a))
            }
        default:
            fatalError("Can't invoke code block for rule number \(ruleNumber) - no such rule")
        }
        fatalError("Can't resolve types correctly for invoking code block for rule number \(ruleNumber)")
    }

    private func yySymbolOnStack(distanceFromTop: Int) -> CitronSymbol {
        assert(yyStack.count > distanceFromTop)
        return yyStack[yyStack.count - 1 - distanceFromTop].symbol
    }

    func yyUnwrapResultFromSymbol(_ symbol: CitronSymbol) -> CitronResult {
        if case .yy18(let result) = symbol {
            return result
        } else {
            fatalError("Unexpected mismatch in result type")
        }
    }

}

