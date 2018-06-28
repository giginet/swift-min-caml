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
    }

    typealias CitronToken = Token

    enum CitronSymbol {
        case yyBaseOfStack
        case yy0(CitronToken)
        case yy28(Expr)
    }

    typealias CitronResult = Expr

    // Counts

    let yyNumberOfSymbols: Int = 34
    let yyNumberOfStates: Int = 46

    // Action tables

    let yyLookaheadAction: [(CitronSymbolCode, CitronParsingAction)] = [
        /*   0 */ (1, .SH(2)), (30, .ACCEPT), (31, .SH(28)), (32, .SH(45)), (6, .SH(3)),
        /*   5 */ (6, .SH(19)), (7, .SH(17)), (8, .SH(15)), (9, .SH(14)), (10, .SH(13)),
        /*  10 */ (11, .SH(12)), (12, .SH(22)), (13, .SH(21)), (14, .SH(11)), (15, .SH(10)),
        /*  15 */ (16, .SH(9)), (17, .SH(8)), (6, .SH(19)), (7, .SH(17)), (8, .SH(15)),
        /*  20 */ (9, .SH(14)), (10, .SH(13)), (11, .SH(12)), (12, .SH(22)), (13, .SH(21)),
        /*  25 */ (14, .SH(11)), (15, .SH(10)), (16, .SH(9)), (17, .SH(8)), (12, .SH(22)),
        /*  30 */ (13, .SH(21)), (14, .SH(11)), (15, .SH(10)), (16, .SH(9)), (17, .SH(8)),
        /*  35 */ (31, .SH(27)), (32, .SH(45)), (31, .SH(29)), (32, .SH(45)), (26, .SH(42)),
        /*  40 */ (29, .SH(5)), (31, .SH(23)), (32, .SH(45)), (31, .RD(20)), (32, .SH(45)),
        /*  45 */ (31, .SH(30)), (32, .SH(45)), (6, .SH(19)), (7, .SH(17)), (8, .SH(15)),
        /*  50 */ (9, .SH(14)), (10, .SH(13)), (11, .SH(12)), (12, .SH(22)), (13, .SH(21)),
        /*  55 */ (14, .SH(11)), (15, .SH(10)), (16, .SH(9)), (17, .SH(8)), (31, .SH(24)),
        /*  60 */ (32, .SH(45)), (31, .SH(25)), (32, .SH(45)), (31, .RD(24)), (32, .SH(45)),
        /*  65 */ (31, .RD(23)), (32, .SH(45)), (31, .SH(40)), (32, .SH(45)), (28, .SH(6)),
        /*  70 */ (31, .SH(41)), (32, .SH(45)), (21, .SH(20)), (31, .SH(34)), (32, .SH(45)),
        /*  75 */ (20, .SH(44)), (6, .SH(19)), (7, .SH(17)), (8, .SH(15)), (9, .SH(14)),
        /*  80 */ (10, .SH(13)), (11, .SH(12)), (12, .SH(22)), (13, .SH(21)), (14, .SH(11)),
        /*  85 */ (15, .SH(10)), (16, .SH(9)), (17, .SH(8)), (31, .SH(35)), (32, .SH(45)),
        /*  90 */ (31, .SH(36)), (32, .SH(45)), (22, .SR(7)), (6, .SH(19)), (7, .SH(17)),
        /*  95 */ (8, .SH(15)), (9, .SH(14)), (10, .SH(13)), (11, .SH(12)), (12, .SH(22)),
        /* 100 */ (13, .SH(21)), (14, .SH(11)), (15, .SH(10)), (16, .SH(9)), (17, .SH(8)),
        /* 105 */ (0, .RD(0)), (31, .SH(37)), (32, .SH(45)), (34, .RD(2)), (22, .SR(1)),
        /* 110 */ (34, .RD(2)), (6, .SH(19)), (7, .SH(17)), (8, .SH(15)), (9, .SH(14)),
        /* 115 */ (10, .SH(13)), (11, .SH(12)), (12, .SH(22)), (13, .SH(21)), (14, .SH(11)),
        /* 120 */ (15, .SH(10)), (16, .SH(9)), (17, .SH(8)), (6, .SH(19)), (7, .SH(17)),
        /* 125 */ (8, .SH(15)), (9, .SH(14)), (10, .SH(13)), (11, .SH(12)), (12, .SH(22)),
        /* 130 */ (13, .SH(21)), (14, .SH(11)), (15, .SH(10)), (16, .SH(9)), (17, .SH(8)),
        /* 135 */ (2, .SH(43)), (34, .RD(2)), (4, .SH(7)), (31, .RD(10)), (32, .SH(45)),
        /* 140 */ (34, .RD(2)), (31, .SH(33)), (32, .SH(45)), (31, .SH(31)), (32, .SH(45)),
        /* 145 */ (31, .SH(32)), (32, .SH(45)), (31, .SH(26)), (32, .SH(45)), (31, .SH(39)),
        /* 150 */ (32, .SH(45)), (18, .SH(16)), (19, .SH(4)), (34, .RD(2)), (21, .SH(1)),
        /* 155 */ (22, .SR(2)), (23, .SR(3)), (24, .SR(4)), (25, .SR(5)), (26, .SR(6)),
        /* 160 */ (27, .SH(18)), (2, .SH(43)), (34, .RD(2)), (4, .SH(7)), (34, .RD(2)),
        /* 165 */ (31, .SH(38)), (32, .SH(45)), (16, .SH(9)), (17, .SH(8)), (34, .RD(2)),
        /* 170 */ (34, .RD(2)), (34, .RD(2)), (34, .RD(2)), (34, .RD(2)), (34, .RD(2)),
        /* 175 */ (34, .RD(2)), (34, .RD(2)), (18, .SH(16)), (19, .SH(4)), (34, .RD(2)),
        /* 180 */ (21, .SH(1)), (34, .RD(2)), (23, .SR(3)), (24, .SR(4)), (25, .SR(5)),
        /* 185 */ (26, .SR(6)), (27, .SH(18)),
    ]

    let yyShiftUseDefault: Int = 187
    let yyShiftOffsetMin: Int = -2
    let yyShiftOffsetMax: Int = 159
    let yyShiftOffset: [Int] = [
        /*     0 */ 159, 133, 159, 159, 159, 159, 159, 159, 159, 159,
        /*    10 */ 159, 159, 159, 159, 159, 159, 159, 159, 159, 159,
        /*    20 */ 159, 159, 159, -1, 11, 41, 70, 87, 105, 117,
        /*    30 */ 117, 117, 17, 17, 17, 17, 17, 17, 151, 151,
        /*    40 */ 151, 151, -2, 13, 51, 55,
    ]

    let yyReduceUseDefault: Int = -30
    let yyReduceOffsetMin: Int = -29
    let yyReduceOffsetMax: Int = 134
    let yyReduceOffset: [Int] = [
        /*     0 */ -29, 4, 6, 10, 12, 14, 28, 30, 32, 34,
        /*    10 */ 36, 39, 42, 57, 59, 75, 107, 110, 112, 114,
        /*    20 */ 116, 118, 134,
    ]

    let yyDefaultAction: [CitronParsingAction] = [
        /*     0 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*     5 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    10 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    15 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    20 */ .ERROR, .ERROR, .ERROR, .ERROR, .ERROR,
        /*    25 */ .ERROR, .ERROR, .ERROR, .ERROR, .RD(25),
        /*    30 */ .RD(19), .RD(9), .RD(13), .RD(14), .RD(18),
        /*    35 */ .RD(17), .RD(16), .RD(15), .RD(11), .RD(12),
        /*    40 */ .RD(22), .RD(21), .ERROR, .ERROR, .ERROR,
        /*    45 */ .RD(8),
    ]

    // Fallback

    let yyHasFallback: Bool = false
    let yyFallback: [CitronSymbolCode] = []

    // Wildcard

    let yyWildcard: CitronSymbolCode? = nil

    // Rules

    let yyRuleInfo: [(lhs: CitronSymbolCode, nrhs: UInt)] = [
        (lhs: 30, nrhs: 1),
        (lhs: 32, nrhs: 3),
        (lhs: 32, nrhs: 2),
        (lhs: 32, nrhs: 1),
        (lhs: 32, nrhs: 1),
        (lhs: 32, nrhs: 1),
        (lhs: 32, nrhs: 1),
        (lhs: 32, nrhs: 5),
        (lhs: 31, nrhs: 1),
        (lhs: 31, nrhs: 2),
        (lhs: 31, nrhs: 2),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 6),
        (lhs: 31, nrhs: 2),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 3),
        (lhs: 31, nrhs: 6),
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
        "THEN", "ELSE", "root", "expr",
        "simple_expr", "var",
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
            if case let .yy28(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule00(e: e))
            }
        case 1: /* simple_expr ::= L_PAREN expr(e) R_PAREN */
            func codeBlockForRule01(e: Expr) throws -> Expr {
                return e
            }
            if case let .yy28(e) = yySymbolOnStack(distanceFromTop: 1) {
                return .yy28(try codeBlockForRule01(e: e))
            }
        case 2: /* simple_expr ::= L_PAREN R_PAREN */
            func codeBlockForRule02() throws -> Expr {
                return .unit
            }
            return .yy28(try codeBlockForRule02())
        case 3: /* simple_expr ::= BOOL(t) */
            func codeBlockForRule03(t: Token) throws -> Expr {
                return .bool(t.asBool())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule03(t: t))
            }
        case 4: /* simple_expr ::= INT(t) */
            func codeBlockForRule04(t: Token) throws -> Expr {
                return .int(t.asInt())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule04(t: t))
            }
        case 5: /* simple_expr ::= FLOAT(t) */
            func codeBlockForRule05(t: Token) throws -> Expr {
                return .float(t.asFloat())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule05(t: t))
            }
        case 6: /* simple_expr ::= IDENTIFIER(t) */
            func codeBlockForRule06(t: Token) throws -> Expr {
                return .var(name: t.asID())
            }
            if case let .yy0(t) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule06(t: t))
            }
        case 7: /* simple_expr ::= simple_expr(e1) DOT L_PAREN expr(e2) R_PAREN */
            func codeBlockForRule07(e1: Expr, e2: Expr) throws -> Expr {
                return .get(array: e1, index: e2)
            }
            if case let .yy28(e1) = yySymbolOnStack(distanceFromTop: 4),
                case let .yy28(e2) = yySymbolOnStack(distanceFromTop: 1) {
                return .yy28(try codeBlockForRule07(e1: e1, e2: e2))
            }
        case 8: /* expr ::= simple_expr(e) */
            func codeBlockForRule08(e: Expr) throws -> Expr {
                return e
            }
            if case let .yy28(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule08(e: e))
            }
        case 9: /* expr ::= NOT expr(e) */
            func codeBlockForRule09(e: Expr) throws -> Expr {
                return .not(op: e)
            }
            if case let .yy28(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule09(e: e))
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
            if case let .yy28(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule10(e: e))
            }
        case 11: /* expr ::= expr(lhs) ADD expr(rhs) */
            func codeBlockForRule11(lhs: Expr, rhs: Expr) throws -> Expr {
                return .add(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule11(lhs: lhs, rhs: rhs))
            }
        case 12: /* expr ::= expr(lhs) SUB expr(rhs) */
            func codeBlockForRule12(lhs: Expr, rhs: Expr) throws -> Expr {
                return .sub(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule12(lhs: lhs, rhs: rhs))
            }
        case 13: /* expr ::= expr(lhs) EQUAL expr(rhs) */
            func codeBlockForRule13(lhs: Expr, rhs: Expr) throws -> Expr {
                return .eq(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule13(lhs: lhs, rhs: rhs))
            }
        case 14: /* expr ::= expr(lhs) LESS_GREATER expr(rhs) */
            func codeBlockForRule14(lhs: Expr, rhs: Expr) throws -> Expr {
                return .not(op: .eq(lhs: lhs, rhs: rhs))
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule14(lhs: lhs, rhs: rhs))
            }
        case 15: /* expr ::= expr(lhs) LESS expr(rhs) */
            func codeBlockForRule15(lhs: Expr, rhs: Expr) throws -> Expr {
                return .not(op: .le(lhs: rhs, rhs: lhs))
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule15(lhs: lhs, rhs: rhs))
            }
        case 16: /* expr ::= expr(lhs) GREATER expr(rhs) */
            func codeBlockForRule16(lhs: Expr, rhs: Expr) throws -> Expr {
                return .not(op: .le(lhs: lhs, rhs: rhs))
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule16(lhs: lhs, rhs: rhs))
            }
        case 17: /* expr ::= expr(lhs) LESS_EQUAL expr(rhs) */
            func codeBlockForRule17(lhs: Expr, rhs: Expr) throws -> Expr {
                return .le(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule17(lhs: lhs, rhs: rhs))
            }
        case 18: /* expr ::= expr(lhs) GREATER_EQUAL expr(rhs) */
            func codeBlockForRule18(lhs: Expr, rhs: Expr) throws -> Expr {
                return .le(lhs: rhs, rhs: lhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule18(lhs: lhs, rhs: rhs))
            }
        case 19: /* expr ::= IF expr(a) THEN expr(b) ELSE expr(c) */
            func codeBlockForRule19(a: Expr, b: Expr, c: Expr) throws -> Expr {
                return .if(cond: a, ifTrue: b, ifFalse: c)
            }
            if case let .yy28(a) = yySymbolOnStack(distanceFromTop: 4),
                case let .yy28(b) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(c) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule19(a: a, b: b, c: c))
            }
        case 20: /* expr ::= F_MINUS expr(e) */
            func codeBlockForRule20(e: Expr) throws -> Expr {
                return .fneg(op: e)
            }
            if case let .yy28(e) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule20(e: e))
            }
        case 21: /* expr ::= expr(lhs) F_ADD expr(rhs) */
            func codeBlockForRule21(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fadd(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule21(lhs: lhs, rhs: rhs))
            }
        case 22: /* expr ::= expr(lhs) F_SUB expr(rhs) */
            func codeBlockForRule22(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fsub(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule22(lhs: lhs, rhs: rhs))
            }
        case 23: /* expr ::= expr(lhs) F_MUL expr(rhs) */
            func codeBlockForRule23(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fmul(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule23(lhs: lhs, rhs: rhs))
            }
        case 24: /* expr ::= expr(lhs) F_DIV expr(rhs) */
            func codeBlockForRule24(lhs: Expr, rhs: Expr) throws -> Expr {
                return .fdiv(lhs: lhs, rhs: rhs)
            }
            if case let .yy28(lhs) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(rhs) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule24(lhs: lhs, rhs: rhs))
            }
        case 25: /* expr ::= LET IDENTIFIER(a) EQUAL expr(b) IN expr(c) */
            func codeBlockForRule25(a: Token, b: Expr, c: Expr) throws -> Expr {
                return .let(name: TypedVar(name: a.asID()), bind: b, body: c)
            }
            if case let .yy0(a) = yySymbolOnStack(distanceFromTop: 4),
                case let .yy28(b) = yySymbolOnStack(distanceFromTop: 2),
                case let .yy28(c) = yySymbolOnStack(distanceFromTop: 0) {
                return .yy28(try codeBlockForRule25(a: a, b: b, c: c))
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
        if case let .yy28(result) = symbol {
            return result
        } else {
            fatalError("Unexpected mismatch in result type")
        }
    }
}
