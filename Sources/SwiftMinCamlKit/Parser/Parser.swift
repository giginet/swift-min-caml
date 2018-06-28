// This file is automatically generated by Citron version 1.0.
//
// The parser class defined below conforms to the CitronParser protocol
// defined in CitronParser.swift.
//
// The authors of Citron disclaim copyright to the source code in this file.

// Parser class

import CitronKit

class Parser: CitronParser {
    // Types

    typealias CitronSymbolCode = UInt8
    typealias CitronStateNumber = UInt8
    typealias CitronRuleNumber = UInt8

    enum CitronTokenCode: CitronSymbolCode {
        case IN = 1
        case LET = 2
        case SEMICOLON = 3
        case IF = 4
        case COMMA = 5
        case EQUAL = 6
        case LESS_GREATER = 7
        case LESS = 8
        case GREATER = 9
        case LESS_EQUAL = 10
        case GREATER_EQUAL = 11
        case ADD = 12
        case SUB = 13
        case F_ADD = 14
        case F_SUB = 15
        case F_MUL = 16
        case F_DIV = 17
        case MINUS = 18
        case F_MINUS = 19
        case DOT = 20
        case L_PAREN = 21
        case R_PAREN = 22
        case BOOL = 23
        case INT = 24
        case FLOAT = 25
        case IDENTIFIER = 26
        case NOT = 27
        case THEN = 28
        case ELSE = 29
        case REC = 30
    }

    typealias CitronToken = Token

    enum CitronSymbol {
        case yyBaseOfStack
        case yy0(CitronToken)
        case yy34([Expr])
        case yy48(Expr)
        case yy49([TypedVar])
        case yy58(FuncDef)
    }

    typealias CitronResult = Expr

    // Counts

    let yyNumberOfSymbols: Int = 37
    let yyNumberOfStates: Int = 58

    // Action tables

    let yyLookaheadAction: [(CitronSymbolCode, CitronParsingAction)] = [
        /*   0 */ (1, .SH(4)), (31, .ACCEPT), (32, .SH(35)), (33, .SH(25)), (33, .SH(52)),
        /*   5 */ (6, .SH(21)), (7, .SH(19)), (8, .SH(17)), (9, .SH(16)), (10, .SH(15)),
        /*  10 */ (11, .SH(14)), (12, .SH(24)), (13, .SH(23)), (14, .SH(13)), (15, .SH(12)),
        /*  15 */ (16, .SH(11)), (17, .SH(10)), (6, .SH(21)), (7, .SH(19)), (8, .SH(17)),
        /*  20 */ (9, .SH(16)), (10, .SH(15)), (11, .SH(14)), (12, .SH(24)), (13, .SH(23)),
        /*  25 */ (14, .SH(13)), (15, .SH(12)), (16, .SH(11)), (17, .SH(10)), (20, .SH(56)),
        /*  30 */ (21, .SH(1)), (26, .SH(27)), (23, .SR(3)), (24, .SR(4)), (25, .SR(5)),
        /*  35 */ (26, .SR(6)), (32, .SH(34)), (33, .SH(25)), (32, .SH(36)), (33, .SH(25)),
        /*  40 */ (29, .SH(7)), (12, .SH(24)), (13, .SH(23)), (14, .SH(13)), (15, .SH(12)),
        /*  45 */ (16, .SH(11)), (17, .SH(10)), (6, .SH(21)), (7, .SH(19)), (8, .SH(17)),
        /*  50 */ (9, .SH(16)), (10, .SH(15)), (11, .SH(14)), (12, .SH(24)), (13, .SH(23)),
        /*  55 */ (14, .SH(13)), (15, .SH(12)), (16, .SH(11)), (17, .SH(10)), (32, .SH(37)),
        /*  60 */ (33, .SH(25)), (33, .SH(57)), (26, .SH(28)), (21, .SH(1)), (36, .SH(26)),
        /*  65 */ (23, .SR(3)), (24, .SR(4)), (25, .SR(5)), (26, .SR(6)), (28, .SH(8)),
        /*  70 */ (32, .SH(38)), (33, .SH(25)), (32, .SH(30)), (33, .SH(25)), (35, .RD(29)),
        /*  75 */ (20, .SH(56)), (6, .SH(21)), (7, .SH(19)), (8, .SH(17)), (9, .SH(16)),
        /*  80 */ (10, .SH(15)), (11, .SH(14)), (12, .SH(24)), (13, .SH(23)), (14, .SH(13)),
        /*  85 */ (15, .SH(12)), (16, .SH(11)), (17, .SH(10)), (32, .RD(20)), (33, .SH(25)),
        /*  90 */ (32, .SH(39)), (33, .SH(25)), (22, .SR(7)), (6, .SH(21)), (7, .SH(19)),
        /*  95 */ (8, .SH(17)), (9, .SH(16)), (10, .SH(15)), (11, .SH(14)), (12, .SH(24)),
        /* 100 */ (13, .SH(23)), (14, .SH(13)), (15, .SH(12)), (16, .SH(11)), (17, .SH(10)),
        /* 105 */ (0, .RD(0)), (32, .SH(31)), (33, .SH(25)), (35, .SH(53)), (22, .SR(1)),
        /* 110 */ (6, .SH(2)), (6, .SH(21)), (7, .SH(19)), (8, .SH(17)), (9, .SH(16)),
        /* 115 */ (10, .SH(15)), (11, .SH(14)), (12, .SH(24)), (13, .SH(23)), (14, .SH(13)),
        /* 120 */ (15, .SH(12)), (16, .SH(11)), (17, .SH(10)), (6, .SH(21)), (7, .SH(19)),
        /* 125 */ (8, .SH(17)), (9, .SH(16)), (10, .SH(15)), (11, .SH(14)), (12, .SH(24)),
        /* 130 */ (13, .SH(23)), (14, .SH(13)), (15, .SH(12)), (16, .SH(11)), (17, .SH(10)),
        /* 135 */ (2, .SH(49)), (34, .SH(54)), (4, .SH(9)), (32, .SH(32)), (33, .SH(25)),
        /* 140 */ (32, .RD(24)), (33, .SH(25)), (32, .RD(23)), (33, .SH(25)), (32, .SH(50)),
        /* 145 */ (33, .SH(25)), (32, .SH(51)), (33, .SH(25)), (32, .SH(43)), (33, .SH(25)),
        /* 150 */ (1, .SH(3)), (18, .SH(18)), (19, .SH(6)), (6, .SH(5)), (21, .SH(1)),
        /* 155 */ (22, .SR(2)), (23, .SR(3)), (24, .SR(4)), (25, .SR(5)), (26, .SR(6)),
        /* 160 */ (27, .SH(20)), (2, .SH(49)), (21, .SH(22)), (4, .SH(9)), (32, .SH(44)),
        /* 165 */ (33, .SH(25)), (32, .SH(45)), (33, .SH(25)), (32, .SH(46)), (33, .SH(25)),
        /* 170 */ (32, .RD(10)), (33, .SH(25)), (32, .SH(42)), (33, .SH(25)), (32, .SH(40)),
        /* 175 */ (33, .SH(25)), (37, .RD(2)), (18, .SH(18)), (19, .SH(6)), (37, .RD(2)),
        /* 180 */ (21, .SH(1)), (37, .RD(2)), (23, .SR(3)), (24, .SR(4)), (25, .SR(5)),
        /* 185 */ (26, .SR(6)), (27, .SH(20)), (32, .SH(41)), (33, .SH(25)), (32, .SH(33)),
        /* 190 */ (33, .SH(25)), (37, .RD(2)), (32, .SH(48)), (33, .SH(25)), (32, .SH(47)),
        /* 195 */ (33, .SH(25)), (26, .SH(55)), (16, .SH(11)), (17, .SH(10)), (37, .RD(2)),
        /* 200 */ (30, .SH(29)),
    ]

    let yyShiftUseDefault: Int = 201
    let yyShiftOffsetMin: Int = -1
    let yyShiftOffsetMax: Int = 181
    let yyShiftOffset: [Int] = [
        /*     0 */ 159, 133, 159, 159, 159, 159, 159, 159, 159, 159,
        /*    10 */ 159, 159, 159, 159, 159, 159, 159, 159, 159, 159,
        /*    20 */ 159, 159, 159, 159, 159, 9, 42, 5, 5, 36,
        /*    30 */ -1, 11, 41, 70, 87, 105, 117, 117, 117, 117,
        /*    40 */ 117, 29, 29, 29, 29, 29, 29, 181, 181, 170,
        /*    50 */ 181, 181, 55, 104, 149, 147, 141, 55,
    ]

    let yyReduceUseDefault: Int = -31
    let yyReduceOffsetMin: Int = -30
    let yyReduceOffsetMax: Int = 162
    let yyReduceOffset: [Int] = [
        /*     0 */ -30, 4, 6, 27, 38, 40, 56, 58, 74, 106,
        /*    10 */ 108, 110, 112, 114, 116, 132, 134, 136, 138, 140,
        /*    20 */ 142, 155, 157, 160, 162, 28, -29, 39, 73, 102,
    ]

    let yyDefaultAction: [CitronParsingAction] = [
        /*     0 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*     5 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    10 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    15 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    20 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    25 */ .RD(8), .RD(27), .RD(30), .ERROR, .ERROR,
        /*    30 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    35 */ .ERROR, .RD(28), .RD(26), .RD(25), .RD(19),
        /*    40 */ .RD(9), .RD(13), .RD(14), .RD(18), .RD(17),
        /*    45 */ .RD(16), .RD(15), .RD(11), .RD(12), .ERROR,
        /*    50 */ .RD(22), .RD(21), .RD(31), .ERROR, .ERROR,
        /*    55 */ .ERROR, .ERROR, .RD(32),
    ]

    // Fallback

    let yyHasFallback: Bool = false
    let yyFallback: [CitronSymbolCode] = []

    // Wildcard

    let yyWildcard: CitronSymbolCode? = nil

    // Rules

    let yyRuleInfo: [(lhs: CitronSymbolCode, nrhs: UInt)] = [
        (lhs: 31, nrhs: 1),
        (lhs: 33, nrhs: 3),
        (lhs: 33, nrhs: 2),
        (lhs: 33, nrhs: 1),
        (lhs: 33, nrhs: 1),
        (lhs: 33, nrhs: 1),
        (lhs: 33, nrhs: 1),
        (lhs: 33, nrhs: 5),
        (lhs: 32, nrhs: 1),
        (lhs: 32, nrhs: 2),
        (lhs: 32, nrhs: 2),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 6),
        (lhs: 32, nrhs: 2),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 6),
        (lhs: 32, nrhs: 5),
        (lhs: 32, nrhs: 2),
        (lhs: 34, nrhs: 4),
        (lhs: 35, nrhs: 2),
        (lhs: 35, nrhs: 1),
        (lhs: 36, nrhs: 2),
        (lhs: 36, nrhs: 1),
    ]

    // Stack

    var yyStack: [(stateOrRule: CitronStateOrRule, symbolCode: CitronSymbolCode, symbol: CitronSymbol)] = [
        (stateOrRule: .state(0), symbolCode: 0, symbol: .yyBaseOfStack),
    ]
    var maxStackSize: Int?
    // Tracing

    var isTracingEnabled: Bool = false
    let yySymbolName: [String] = [
        "$", "IN", "LET", "SEMICOLON",
        "IF", "COMMA", "EQUAL", "LESS_GREATER",
        "LESS", "GREATER", "LESS_EQUAL", "GREATER_EQUAL",
        "ADD", "SUB", "F_ADD", "F_SUB",
        "F_MUL", "F_DIV", "MINUS", "F_MINUS",
        "DOT", "L_PAREN", "R_PAREN", "BOOL",
        "INT", "FLOAT", "IDENTIFIER", "NOT",
        "THEN", "ELSE", "REC", "root",
        "expr", "simple_expr", "func_def", "formal_args",
        "actual_args",
    ]
    let yyRuleText: [String] = [
        /*   0 */ "root ::= expr(e)",
        /*   1 */ "simple_expr ::= L_PAREN expr(e) R_PAREN",
        /*   2 */ "simple_expr ::= L_PAREN R_PAREN",
        /*   3 */ "simple_expr ::= BOOL(t)",
        /*   4 */ "simple_expr ::= INT(t)",
        /*   5 */ "simple_expr ::= FLOAT(t)",
        /*   6 */ "simple_expr ::= IDENTIFIER(t)",
        /*   7 */ "simple_expr ::= simple_expr(e1) DOT L_PAREN expr(e2) R_PAREN",
        /*   8 */ "expr ::= simple_expr(e)",
        /*   9 */ "expr ::= NOT expr(e)",
        /*  10 */ "expr ::= MINUS expr(e)",
        /*  11 */ "expr ::= expr(lhs) ADD expr(rhs)",
        /*  12 */ "expr ::= expr(lhs) SUB expr(rhs)",
        /*  13 */ "expr ::= expr(lhs) EQUAL expr(rhs)",
        /*  14 */ "expr ::= expr(lhs) LESS_GREATER expr(rhs)",
        /*  15 */ "expr ::= expr(lhs) LESS expr(rhs)",
        /*  16 */ "expr ::= expr(lhs) GREATER expr(rhs)",
        /*  17 */ "expr ::= expr(lhs) LESS_EQUAL expr(rhs)",
        /*  18 */ "expr ::= expr(lhs) GREATER_EQUAL expr(rhs)",
        /*  19 */ "expr ::= IF expr(a) THEN expr(b) ELSE expr(c)",
        /*  20 */ "expr ::= F_MINUS expr(e)",
        /*  21 */ "expr ::= expr(lhs) F_ADD expr(rhs)",
        /*  22 */ "expr ::= expr(lhs) F_SUB expr(rhs)",
        /*  23 */ "expr ::= expr(lhs) F_MUL expr(rhs)",
        /*  24 */ "expr ::= expr(lhs) F_DIV expr(rhs)",
        /*  25 */ "expr ::= LET IDENTIFIER(a) EQUAL expr(b) IN expr(c)",
        /*  26 */ "expr ::= LET REC func_def(a) IN expr(b)",
        /*  27 */ "expr ::= simple_expr(a) actual_args(b)",
        /*  28 */ "func_def ::= IDENTIFIER(a) formal_args(b) EQUAL expr(c)",
        /*  29 */ "formal_args ::= IDENTIFIER(a) formal_args(b)",
        /*  30 */ "formal_args ::= IDENTIFIER(a)",
        /*  31 */ "actual_args ::= actual_args(a) simple_expr(b)",
        /*  32 */ "actual_args ::= simple_expr(a)",
    ]

    // Function definitions

    func yyTokenToSymbol(_ token: CitronToken) -> CitronSymbol {
        return .yy0(token)
    }

    func yyInvokeCodeBlockForRule(ruleNumber: CitronRuleNumber) throws -> CitronSymbol {
        switch ruleNumber {
        case 0: /* root ::= expr(e) */
            func codeBlockForRule00(e: Expr) throws -> Expr {
                return e
            }
            if case let .yy48(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule00(e: e))
            }
        case 1: /* simple_expr ::= L_PAREN expr(e) R_PAREN */
            func codeBlockForRule01(e: Expr) throws -> Expr {
                return e
            }
            if case let .yy48(e) = yySymbolOnStack(distanceFromTop: 1) {
                return .yy48(try codeBlockForRule01(e: e))
            }
        case 2: /* simple_expr ::= L_PAREN R_PAREN */
            func codeBlockForRule02() throws -> Expr {
                return .unit
            }
            return .yy48(try codeBlockForRule02())
        case 3: /* simple_expr ::= BOOL(t) */
            func codeBlockForRule03(t: Token) throws -> Expr {
                return .bool(t.asBool())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule03(t: t))
            }
        case 4: /* simple_expr ::= INT(t) */
            func codeBlockForRule04(t: Token) throws -> Expr {
                return .int(t.asInt())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule04(t: t))
            }
        case 5: /* simple_expr ::= FLOAT(t) */
            func codeBlockForRule05(t: Token) throws -> Expr {
                return .float(t.asFloat())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule05(t: t))
            }
        case 6: /* simple_expr ::= IDENTIFIER(t) */
            func codeBlockForRule06(t: Token) throws -> Expr {
                return .var(name: t.asID())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule06(t: t))
            }
        case 7: /* simple_expr ::= simple_expr(e1) DOT L_PAREN expr(e2) R_PAREN */
            func codeBlockForRule07(e1: Expr, e2: Expr) throws -> Expr {
                return .get(array: e1, index: e2)
            }
            if case let .yy48(e1) = yySymbolOnStack(distanceFromTop: 4),
                case let .yy48(e2) = yySymbolOnStack(distanceFromTop: 1) {
                return .yy48(try codeBlockForRule07(e1: e1, e2: e2))
            }
        case 8: /* expr ::= simple_expr(e) */
            func codeBlockForRule08(e: Expr) throws -> Expr {
                return e
            }
            if case let .yy48(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule08(e: e))
            }
        case 9: /* expr ::= NOT expr(e) */
            func codeBlockForRule09(e: Expr) throws -> Expr {
                return .not(op: e)
            }
            if case let .yy48(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule09(e: e))
            }
        case 10: /* expr ::= MINUS expr(e) */
            func codeBlockForRule10(e: Expr) throws -> Expr {
                switch e {
                case let .float(f):
                    return .float(-f)
                default:
                    return .neg(op: e)
                }
            }
            if case let .yy48(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule10(e: e))
            }
        case 11: /* expr ::= expr(lhs) ADD expr(rhs) */
            func codeBlockForRule11(lhs: Expr, rhs: Expr) throws -> Expr {
                return .add(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule11(lhs: lhs, rhs: rhs))
            }
        case 12: /* expr ::= expr(lhs) SUB expr(rhs) */
            func codeBlockForRule12(lhs: Expr, rhs: Expr) throws -> Expr {
                return .sub(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule12(lhs: lhs, rhs: rhs))
            }
        case 13: /* expr ::= expr(lhs) EQUAL expr(rhs) */
            func codeBlockForRule13(lhs: Expr, rhs: Expr) throws -> Expr {
                return .eq(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule13(lhs: lhs, rhs: rhs))
            }
        case 14: /* expr ::= expr(lhs) LESS_GREATER expr(rhs) */
            func codeBlockForRule14(lhs: Expr, rhs: Expr) throws -> Expr {
                return .not(op: .eq(lhs: lhs, rhs: rhs))
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule14(lhs: lhs, rhs: rhs))
            }
        case 15: /* expr ::= expr(lhs) LESS expr(rhs) */
            func codeBlockForRule15(lhs: Expr, rhs: Expr) throws -> Expr {
                return .not(op: .le(lhs: rhs, rhs: lhs))
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule15(lhs: lhs, rhs: rhs))
            }
        case 16: /* expr ::= expr(lhs) GREATER expr(rhs) */
            func codeBlockForRule16(lhs: Expr, rhs: Expr) throws -> Expr {
                return .not(op: .le(lhs: lhs, rhs: rhs))
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule16(lhs: lhs, rhs: rhs))
            }
        case 17: /* expr ::= expr(lhs) LESS_EQUAL expr(rhs) */
            func codeBlockForRule17(lhs: Expr, rhs: Expr) throws -> Expr {
                return .le(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule17(lhs: lhs, rhs: rhs))
            }
        case 18: /* expr ::= expr(lhs) GREATER_EQUAL expr(rhs) */
            func codeBlockForRule18(lhs: Expr, rhs: Expr) throws -> Expr {
                return .le(lhs: rhs, rhs: lhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule18(lhs: lhs, rhs: rhs))
            }
        case 19: /* expr ::= IF expr(a) THEN expr(b) ELSE expr(c) */
            func codeBlockForRule19(a: Expr, b: Expr, c: Expr) throws -> Expr {
                return .if(cond: a, ifTrue: b, ifFalse: c)
            }
            if case let .yy48(a) = yySymbolOnStack(distanceFromTop: 4),
                case let .yy48(b) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(c) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule19(a: a, b: b, c: c))
            }
        case 20: /* expr ::= F_MINUS expr(e) */
            func codeBlockForRule20(e: Expr) throws -> Expr {
                return .fneg(op: e)
            }
            if case let .yy48(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule20(e: e))
            }
        case 21: /* expr ::= expr(lhs) F_ADD expr(rhs) */
            func codeBlockForRule21(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fadd(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule21(lhs: lhs, rhs: rhs))
            }
        case 22: /* expr ::= expr(lhs) F_SUB expr(rhs) */
            func codeBlockForRule22(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fsub(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule22(lhs: lhs, rhs: rhs))
            }
        case 23: /* expr ::= expr(lhs) F_MUL expr(rhs) */
            func codeBlockForRule23(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fmul(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule23(lhs: lhs, rhs: rhs))
            }
        case 24: /* expr ::= expr(lhs) F_DIV expr(rhs) */
            func codeBlockForRule24(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fdiv(lhs: lhs, rhs: rhs)
            }
            if case let .yy48(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule24(lhs: lhs, rhs: rhs))
            }
        case 25: /* expr ::= LET IDENTIFIER(a) EQUAL expr(b) IN expr(c) */
            func codeBlockForRule25(a: Token, b: Expr, c: Expr) throws -> Expr {
                return .let(name: TypedVar(name: a.asID()), bind: b, body: c)
            }
            if case let .yy0(a) = yySymbolOnStack(distanceFromTop: 4),
                case let .yy48(b) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(c) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule25(a: a, b: b, c: c))
            }
        case 26: /* expr ::= LET REC func_def(a) IN expr(b) */
            func codeBlockForRule26(a: FuncDef, b: Expr) throws -> Expr {
                return .letRec(funcDef: a, bind: b)
            }
            if case let .yy58(a) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule26(a: a, b: b))
            }
        case 27: /* expr ::= simple_expr(a) actual_args(b) */
            func codeBlockForRule27(a: Expr, b: [Expr]) throws -> Expr {
                return .app(function: a, args: b)
            }
            if case let .yy48(a) = yySymbolOnStack(distanceFromTop: 1),
                case let .yy34(b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy48(try codeBlockForRule27(a: a, b: b))
            }
        case 28: /* func_def ::= IDENTIFIER(a) formal_args(b) EQUAL expr(c) */
            func codeBlockForRule28(a: Token, b: [TypedVar], c: Expr) throws -> FuncDef {
                return FuncDef(name: TypedVar(name: a.asID()), args: b, body: c)
            }
            if case let .yy0(a) = yySymbolOnStack(distanceFromTop: 3),
                case let .yy49(b) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy48(c) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy58(try codeBlockForRule28(a: a, b: b, c: c))
            }
        case 29: /* formal_args ::= IDENTIFIER(a) formal_args(b) */
            func codeBlockForRule29(a: Token, b: [TypedVar]) throws -> [TypedVar] {
                return [TypedVar(name: a.asID())] + b
            }
            if case let .yy0(a) = yySymbolOnStack(distanceFromTop: 1),
                case let .yy49(b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy49(try codeBlockForRule29(a: a, b: b))
            }
        case 30: /* formal_args ::= IDENTIFIER(a) */
            func codeBlockForRule30(a: Token) throws -> [TypedVar] {
                return [TypedVar(name: a.asID())]
            }
            if case let .yy0(a) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy49(try codeBlockForRule30(a: a))
            }
        case 31: /* actual_args ::= actual_args(a) simple_expr(b) */
            func codeBlockForRule31(a: [Expr], b: Expr) throws -> [Expr] {
                return a + [b]
            }
            if case let .yy34(a) = yySymbolOnStack(distanceFromTop: 1),
                case let .yy48(b) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy34(try codeBlockForRule31(a: a, b: b))
            }
        case 32: /* actual_args ::= simple_expr(a) */
            func codeBlockForRule32(a: Expr) throws -> [Expr] {
                return [a]
            }
            if case let .yy48(a) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy34(try codeBlockForRule32(a: a))
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
        if case let .yy48(result) = symbol {
            return result
        } else {
            fatalError("Unexpected mismatch in result type")
        }
    }
}
