module.exports = grammar({
  name: 'silq',
  extras: $ => [ /\s+/ ],
  rules: {
    program: $ => repeat($.function_definition),
    
    function_definition: $ => seq(
      'def', 
      field('name', $.identifier),
      optional(seq('[', $.identifier, ']')),
      '(', 
      optional($.parameters), 
      ')', 
      ':', 
      field('return_type', $.type), 
      '{', 
      repeat($.statement), 
      '}'
    ),

    parameters: $ => seq(
      $.parameter,
      repeat(seq(',', $.parameter))
    ),

    parameter: $ => seq(
      optional('!'),
      field('name', $.identifier),
      ':',
      field('type', $.type)
    ),

    statement: $ => choice(
      $.return_statement,
      $.expression_statement,
      $.if_statement
    ),

    return_statement: $ => seq('return', $.expression, ';'),
    expression_statement: $ => seq($.expression, ';'),
    
    if_statement: $ => seq(
      'if', 
      $.expression, 
      '{', 
      repeat($.statement), 
      '}', 
      optional(seq('else', '{', repeat($.statement), '}'))
    ),

    expression: $ => choice(
      $.identifier,
      $.boolean,
      $.number,
      $.function_call,
      $.binary_expression,
      seq('(', $.expression, ')')
    ),

    function_call: $ => seq(
      $.identifier,
      '(', 
      optional($.expression), 
      ')'
    ),

    binary_expression: $ => prec.left(1, seq(
      field('left', $.expression),
      field('operator', $.operator),
      field('right', $.expression)
    )),

    identifier: $ => /[a-zA-Z_][a-zA-Z0-9_]*/,
    type: $ => choice($.identifier, $.builtin_type),
    builtin_type: $ => choice('𝔹', 'ℚᵇ', 'ℕ', 'ℤ', 'ℚ', 'ℝ', 'a'),
    boolean: $ => choice('true', 'false'),
    number: $ => /\d+/,
    operator: $ => choice('+', '-', '*', '/', ':=', '==', '>', '<')
  }
});
