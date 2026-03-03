
(simple_identifier) @variable



;;; types

(type_identifier) @type

((type_identifier) @type.builtin
    (#anyof? @type.builtin
        "B"
        "1"
        "N"
        "Z"
        "Q"
        "R"
        "int[n]"
        "uint[n]"
    )


;;; Keywords
[
    "if"
    "else"
    "while"
    "for"
    "in"
    "import"
] @keyword


;;; Operators & Punctuation
[
    ":="
    "+"
    "*"
    "-"
    "/"
    "xorb"
    "div"
    "sin"
    "asin"
    "cos"
    "acos"
    "tan"
    "atan"
    "ceil"
    "floor"
    "round"
    ">"
    "<"
    ">="
    "<="
    "!="
    "=="
    "&&"
    "||"
    "->"
    "sqrt"
    "exp"
    "log"
    "abs"
    "min"
    "max"
    "!"
    "qfree"
    "mfree"
    "const"
    "lifted"
    "^"
    "as"
] @operator

[
    "(" ")"
    "[" "]"
    "{" "}"
] @punctuation.bracket

[
  "."
  ","
  ";"
  ":"
  "::"
] @punctuation.delimiter
