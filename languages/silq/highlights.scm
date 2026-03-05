; Keywords
[
  "def"
  "if"
  "else"
  "while"
  "for"
  "in"
  "return"
  "import"
  "discard"
  "qfree"
  "mfree"
] @keyword

; Conditionals/loops
[
  "if"
  "else"
] @keyword.conditional

; Function declaration
(function_declaration 
  "def" @keyword.function
  (identifier) @function
)

; Variables
(simple_identifier) @variable

; Booleans
[
  "true"
  "false"
] @boolean

; Types (builtins)
[
  "𝔹"    "ℚᵇ"    "ℕ"    "ℤ"    "ℚ"    "ℝ"
  "int"  "uint"
] @type.builtin

(type_identifier) @type

; Classical annotation
"!" @keyword.modifier.classical

; Operators
[
  ":="  "+"  "-"  "*"  "/"  "^"  ">"  "<"  ">="  "<="  "=="  "!="
  "&&"  "||"  "->"  "as"   "="
] @operator

; Strings
(string) @string

; Comments (already handled by config.toml)

; Numbers
(number) @number

; Punctuation
[
  "(" ")" "[" "]" "{" "}" 
  "." "," ";" ":" "::"
] @punctuation.delimiter

; Function calls
(function_call 
  (identifier) @function.call)
