let input = "1 + 2 * 3"
let expr = try! Expr.parser.run(sourceName: "main", input: input)
let output = CodeGen().gen(expr: expr)
print(output)