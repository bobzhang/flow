Call graph './src/parser/bench/bench.exe':
------------------------------------------
[    2.73M cycles in  1 calls ]     - 55.17% : load(src/parser/comment_attachment)
[    1.05M cycles in  1 calls ]     - 21.27% : load(src/parser/bench/bench)
[    1.05M cycles in  1 calls ]     |   - 99.60% : Src/parser/parser_flow.program_file
[    1.05M cycles in  1 calls ]     |   |   - 99.63% : Src/parser/parser_flow.parse_program
[    1.02M cycles in  1 calls ]     |   |   |   - 97.29% : Src/parser/parser_flow.do_parse
[    1.01M cycles in  1 calls ]     |   |   |   |   - 99.79% : Src/parser/parser_flow.Parse.program
[  724.73K cycles in  5 calls ]     |   |   |   |   |   - 71.40% : Src/parser/parser_common.with_loc
[  641.36K cycles in  1 calls ]     |   |   |   |   |   |   - 88.50% : Src/parser/parser_flow.Parse.expression
[  622.65K cycles in  1 calls ]     |   |   |   |   |   |   |   - 97.08% : Src/parser/expression_parser.Expression.assignment
[  599.58K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 96.30% : Src/parser/parser_env.Try.to_parse
[  137.92K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   - 23.00% : Src/parser/parser_common.identifier_name
[   66.32K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 48.09% : Src/parser/parser_env.Eat.trailing_comments
[   39.98K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 60.28% : Src/parser/parser_env.Peek.loc
[   39.10K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 97.81% : Src/parser/parser_env.Peek.ith_loc
[   33.21K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 84.93% : Src/parser/parser_env.lookahead
[   32.31K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 97.30% : Src/parser/parser_env.Lookahead.peek
[   31.45K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 97.33% : Src/parser/parser_env.Lookahead.lex_until
[   29.62K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 94.20% : Src/parser/parser_env.Lookahead.lex
[   10.96K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 37.00% : Src/parser/flow_lexer.loc_of_token
[   10.06K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.77% : Src/parser/flow_lexer.loc_of_lexbuf
[    9.18K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.25% : Src/parser/flow_lexer.loc_of_offsets
[    2.98K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 32.43% : Src/parser/flow_lexer.pos_at_offset
[  344.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 11.56% : Src/parser/lex_env.line
[  306.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 10.28% : Src/parser/lex_env.bol_offset
[  180.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.96% : Src/parser/lex_env.source
[    9.27K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 31.28% : Src/parser/flow_lexer.token
[  116.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.25% : Src/parser/lex_env.is_in_comment_syntax
[    1.29K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  4.36% : Src/parser/flow_lexer.get_result_and_clear_state
[  188.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 14.55% : Src/parser/lex_env.get_and_clear_state
[  318.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.07% : Src/parser/lex_env.clone
[   12.94K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 19.51% : Src/parser/parser_env.Peek.token
[   12.06K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 93.15% : Src/parser/parser_env.Peek.ith_token
[    6.38K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 52.89% : Src/parser/parser_env.lookahead
[    5.49K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 86.14% : Src/parser/parser_env.Lookahead.peek
[    1.07K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 19.48% : Src/parser/parser_env.Lookahead.lex_until
[  194.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 18.13% : Src/parser/parser_env.Lookahead.grow
[  156.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.29% : Src/parser/lex_result.token
[    9.40K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 14.17% : Src/parser/parser_env.Peek.comments
[    8.52K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 90.68% : Src/parser/parser_env.Peek.ith_comments
[    2.80K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 32.89% : Src/parser/parser_env.lookahead
[    1.95K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 69.74% : Src/parser/parser_env.Lookahead.peek
[    1.05K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 53.94% : Src/parser/parser_env.Lookahead.lex_until
[  166.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 15.75% : Src/parser/parser_env.Lookahead.grow
[  172.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  2.02% : Src/parser/lex_result.comments
[   29.21K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 21.18% : Src/parser/parser_env.Eat.token
[    9.75K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 33.37% : Src/parser/parser_env.Peek.errors
[    4.68K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 47.97% : Src/parser/parser_env.Peek.ith_errors
[    2.76K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 58.98% : Src/parser/parser_env.lookahead
[    1.87K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 67.95% : Src/parser/parser_env.Lookahead.peek
[    1.03K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 54.96% : Src/parser/parser_env.Lookahead.lex_until
[  216.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 20.97% : Src/parser/parser_env.Lookahead.grow
[  224.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  4.79% : Src/parser/lex_result.errors
[    7.50K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 25.67% : Src/parser/parser_env.lookahead
[    2.79K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 37.26% : Src/parser/parser_env.Lookahead.peek
[    1.60K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 57.19% : Src/parser/parser_env.Lookahead.lex_until
[  364.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 22.78% : Src/parser/parser_env.Lookahead.grow
[    3.47K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 11.87% : Src/parser/parser_env.Peek.lex_env
[    2.64K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 76.24% : Src/parser/parser_env.Peek.ith_lex_env
[    1.82K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 68.76% : Src/parser/parser_env.Lookahead.lex_env
[  976.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 53.69% : Src/parser/parser_env.Lookahead.lex_until
[  162.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 16.60% : Src/parser/parser_env.Lookahead.grow
[    1.93K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  6.60% : Src/parser/parser_env.Lookahead.junk
[    1.04K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 53.84% : Src/parser/parser_env.Lookahead.lex_until
[  212.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 20.42% : Src/parser/parser_env.Lookahead.grow
[   12.98K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   -  9.41% : Src/parser/parser_env.Peek.token
[   12.07K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 92.99% : Src/parser/parser_env.Peek.ith_token
[    6.29K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 52.15% : Src/parser/parser_env.lookahead
[    5.41K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 86.01% : Src/parser/parser_env.Lookahead.peek
[    4.62K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 85.33% : Src/parser/parser_env.Lookahead.lex_until
[  176.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  3.81% : Src/parser/parser_env.Lookahead.grow
[  162.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  1.34% : Src/parser/lex_result.token
[    9.76K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   -  7.08% : Src/parser/parser_env.Peek.comments
[    8.89K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 91.10% : Src/parser/parser_env.Peek.ith_comments
[    2.69K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 30.24% : Src/parser/parser_env.lookahead
[    1.88K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 70.01% : Src/parser/parser_env.Lookahead.peek
[    1.06K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 56.32% : Src/parser/parser_env.Lookahead.lex_until
[  166.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 15.66% : Src/parser/parser_env.Lookahead.grow
[  198.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  2.23% : Src/parser/lex_result.comments
[    9.69K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   -  7.03% : Src/parser/parser_env.Peek.loc
[    8.80K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 90.84% : Src/parser/parser_env.Peek.ith_loc
[    6.85K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 77.81% : Src/parser/parser_env.lookahead
[    6.04K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 88.23% : Src/parser/parser_env.Lookahead.peek
[    5.24K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 86.63% : Src/parser/parser_env.Lookahead.lex_until
[  174.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  3.32% : Src/parser/parser_env.Lookahead.grow
[  186.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  2.11% : Src/parser/lex_result.loc
[  121.61K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 20.28% : Src/parser/parser_flow.Parse.identifier
[  108.00K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 88.81% : Src/parser/parser_common.identifier_name
[   46.17K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 42.75% : Src/parser/parser_env.Eat.trailing_comments
[   27.38K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 59.30% : Src/parser/parser_env.Peek.loc
[   26.65K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 97.36% : Src/parser/parser_env.Peek.ith_loc
[   25.15K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 94.34% : Src/parser/parser_env.lookahead
[   20.77K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 82.61% : Src/parser/parser_env.Lookahead.peek
[   20.10K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 96.76% : Src/parser/parser_env.Lookahead.lex_until
[   18.70K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 93.04% : Src/parser/parser_env.Lookahead.lex
[    9.35K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 50.02% : Src/parser/flow_lexer.loc_of_token
[    8.59K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.85% : Src/parser/flow_lexer.loc_of_lexbuf
[    7.90K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.92% : Src/parser/flow_lexer.loc_of_offsets
[    2.22K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 28.11% : Src/parser/flow_lexer.pos_at_offset
[  222.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 10.00% : Src/parser/lex_env.line
[  206.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  9.28% : Src/parser/lex_env.bol_offset
[  148.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.87% : Src/parser/lex_env.source
[    4.10K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 21.92% : Src/parser/lex_env.clone
[    1.08K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  5.79% : Src/parser/flow_lexer.token
[  836.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  4.47% : Src/parser/flow_lexer.get_result_and_clear_state
[  144.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 17.22% : Src/parser/lex_env.get_and_clear_state
[    7.98K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 17.28% : Src/parser/parser_env.Peek.token
[    7.30K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.45% : Src/parser/parser_env.Peek.ith_token
[    1.94K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 26.56% : Src/parser/parser_env.lookahead
[    1.29K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 66.36% : Src/parser/parser_env.Lookahead.peek
[  696.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 54.12% : Src/parser/parser_env.Lookahead.lex_until
[  106.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 15.23% : Src/parser/parser_env.Lookahead.grow
[  106.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.45% : Src/parser/lex_result.token
[    7.70K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 16.68% : Src/parser/parser_env.Peek.comments
[    7.08K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.92% : Src/parser/parser_env.Peek.ith_comments
[    2.04K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 28.82% : Src/parser/parser_env.lookahead
[    1.42K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 69.80% : Src/parser/parser_env.Lookahead.peek
[  760.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 53.37% : Src/parser/parser_env.Lookahead.lex_until
[   96.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 12.63% : Src/parser/parser_env.Lookahead.grow
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.44% : Src/parser/lex_result.comments
[   28.75K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 26.62% : Src/parser/parser_env.Eat.token
[    8.34K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 29.02% : Src/parser/parser_env.Peek.errors
[    7.69K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 92.11% : Src/parser/parser_env.Peek.ith_errors
[    6.18K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 80.41% : Src/parser/parser_env.lookahead
[    5.53K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 89.55% : Src/parser/parser_env.Lookahead.peek
[  680.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 12.29% : Src/parser/parser_env.Lookahead.lex_until
[   90.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 13.24% : Src/parser/parser_env.Lookahead.grow
[  110.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.43% : Src/parser/lex_result.errors
[    6.67K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 23.19% : Src/parser/parser_env.Peek.lex_env
[    5.97K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 89.56% : Src/parser/parser_env.Peek.ith_lex_env
[    5.31K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 88.95% : Src/parser/parser_env.Lookahead.lex_env
[  734.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 13.82% : Src/parser/parser_env.Lookahead.lex_until
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 13.90% : Src/parser/parser_env.Lookahead.grow
[    6.42K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 22.34% : Src/parser/parser_env.lookahead
[    5.59K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 86.99% : Src/parser/parser_env.Lookahead.peek
[    4.79K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 85.65% : Src/parser/parser_env.Lookahead.lex_until
[  170.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  3.55% : Src/parser/parser_env.Lookahead.grow
[    1.36K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  4.73% : Src/parser/parser_env.Lookahead.junk
[  694.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 51.03% : Src/parser/parser_env.Lookahead.lex_until
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 14.41% : Src/parser/parser_env.Lookahead.grow
[    8.23K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  7.62% : Src/parser/parser_env.Peek.comments
[    7.62K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 92.52% : Src/parser/parser_env.Peek.ith_comments
[    2.04K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 26.73% : Src/parser/parser_env.lookahead
[    1.33K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 65.13% : Src/parser/parser_env.Lookahead.peek
[  716.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 54.00% : Src/parser/parser_env.Lookahead.lex_until
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 14.25% : Src/parser/parser_env.Lookahead.grow
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.31% : Src/parser/lex_result.comments
[    7.92K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  7.34% : Src/parser/parser_env.Peek.token
[    7.32K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 92.38% : Src/parser/parser_env.Peek.ith_token
[    5.94K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 81.20% : Src/parser/parser_env.lookahead
[    1.38K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 23.25% : Src/parser/parser_env.Lookahead.peek
[  740.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 53.55% : Src/parser/parser_env.Lookahead.lex_until
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 13.78% : Src/parser/parser_env.Lookahead.grow
[   92.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.26% : Src/parser/lex_result.token
[    7.70K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  7.13% : Src/parser/parser_env.Peek.loc
[    7.08K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 91.85% : Src/parser/parser_env.Peek.ith_loc
[    1.94K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 27.39% : Src/parser/parser_env.lookahead
[    1.32K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 68.11% : Src/parser/parser_env.Lookahead.peek
[  710.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 53.79% : Src/parser/parser_env.Lookahead.lex_until
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 14.08% : Src/parser/parser_env.Lookahead.grow
[   98.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.38% : Src/parser/lex_result.loc
[    8.14K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  6.69% : Src/parser/parser_env.Peek.token
[    7.52K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 92.46% : Src/parser/parser_env.Peek.ith_token
[    2.01K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 26.74% : Src/parser/parser_env.lookahead
[    1.40K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 69.48% : Src/parser/parser_env.Lookahead.peek
[  748.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 53.51% : Src/parser/parser_env.Lookahead.lex_until
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 13.64% : Src/parser/parser_env.Lookahead.grow
[  104.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  1.38% : Src/parser/lex_result.token
[    2.18K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.79% : Src/parser/parser_env.token_is_reserved
[  462.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 21.19% : Src/parser/parser_env.is_keyword
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  4.68% : Src/parser/parser_env.is_future_reserved
[   94.80K cycles in 11 calls ]     |   |   |   |   |   |   |   |   |   - 15.81% : Src/parser/parser_env.Peek.loc
[   91.94K cycles in 11 calls ]     |   |   |   |   |   |   |   |   |   |   - 96.99% : Src/parser/parser_env.Peek.ith_loc
[   82.33K cycles in 11 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 89.55% : Src/parser/parser_env.lookahead
[   79.51K cycles in 11 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 96.57% : Src/parser/parser_env.Lookahead.peek
[   76.71K cycles in 11 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 96.48% : Src/parser/parser_env.Lookahead.lex_until
[   72.20K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 94.12% : Src/parser/parser_env.Lookahead.lex
[   51.51K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 71.34% : Src/parser/flow_lexer.token
[   10.45K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 20.30% : Src/parser/flow_lexer.loc_of_lexbuf
[    9.48K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 90.70% : Src/parser/flow_lexer.loc_of_offsets
[    3.18K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 33.58% : Src/parser/flow_lexer.pos_at_offset
[  346.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 10.87% : Src/parser/lex_env.line
[  318.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  9.99% : Src/parser/lex_env.bol_offset
[  216.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  2.28% : Src/parser/lex_env.source
[   10.92K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 15.13% : Src/parser/flow_lexer.loc_of_token
[    9.92K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 90.84% : Src/parser/flow_lexer.loc_of_lexbuf
[    9.12K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 91.90% : Src/parser/flow_lexer.loc_of_offsets
[    6.90K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 75.72% : Src/parser/flow_lexer.pos_at_offset
[  294.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  4.26% : Src/parser/lex_env.line
[  292.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  4.23% : Src/parser/lex_env.bol_offset
[  180.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.97% : Src/parser/lex_env.source
[    1.28K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.77% : Src/parser/flow_lexer.get_result_and_clear_state
[  212.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 16.59% : Src/parser/lex_env.get_and_clear_state
[  870.00  cycles in 11 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  1.13% : Src/parser/parser_env.Lookahead.grow
[   59.83K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   -  9.98% : Src/parser/parser_env.Peek.token
[   54.88K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   |   - 91.72% : Src/parser/parser_env.Peek.ith_token
[   35.38K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 64.46% : Src/parser/parser_env.lookahead
[   30.47K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 86.14% : Src/parser/parser_env.Lookahead.peek
[   21.56K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 70.76% : Src/parser/parser_env.Lookahead.lex_until
[    1.67K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  7.75% : Src/parser/parser_env.Lookahead.grow
[    1.70K cycles in 22 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  3.09% : Src/parser/lex_result.token
[   37.96K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   -  6.33% : Src/parser/parser_env.Eat.token
[   11.89K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 31.31% : Src/parser/parser_env.Peek.lex_env
[    7.05K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 59.31% : Src/parser/parser_env.Peek.ith_lex_env
[    6.04K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 85.73% : Src/parser/parser_env.Lookahead.lex_env
[    5.14K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 85.08% : Src/parser/parser_env.Lookahead.lex_until
[  178.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  3.46% : Src/parser/parser_env.Lookahead.grow
[    9.24K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 24.33% : Src/parser/parser_env.Peek.errors
[    8.24K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 89.22% : Src/parser/parser_env.Peek.ith_errors
[    6.31K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 76.53% : Src/parser/parser_env.lookahead
[    5.48K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 86.81% : Src/parser/parser_env.Lookahead.peek
[    1.07K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 19.50% : Src/parser/parser_env.Lookahead.lex_until
[  180.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 16.85% : Src/parser/parser_env.Lookahead.grow
[  172.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  2.09% : Src/parser/lex_result.errors
[    7.92K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   - 20.85% : Src/parser/parser_env.lookahead
[    6.68K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 84.44% : Src/parser/parser_env.Lookahead.peek
[    5.55K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 83.06% : Src/parser/parser_env.Lookahead.lex_until
[  302.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  5.44% : Src/parser/parser_env.Lookahead.grow
[    1.88K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   -  4.96% : Src/parser/parser_env.Lookahead.junk
[  984.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 52.28% : Src/parser/parser_env.Lookahead.lex_until
[  156.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 15.85% : Src/parser/parser_env.Lookahead.grow
[   21.12K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   -  3.52% : Src/parser/parser_env.Peek.is_identifier
[   20.03K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 94.84% : Src/parser/parser_env.Peek.ith_is_identifier
[    8.65K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 43.17% : Src/parser/parser_env.Peek.ith_token
[    2.79K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 32.32% : Src/parser/parser_env.lookahead
[    1.85K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 66.36% : Src/parser/parser_env.Lookahead.peek
[    1.02K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 55.02% : Src/parser/parser_env.Lookahead.lex_until
[  202.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 19.80% : Src/parser/parser_env.Lookahead.grow
[  154.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  1.78% : Src/parser/lex_result.token
[   14.53K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   -  2.42% : Src/parser/parser_env.Peek.is_function
[    5.36K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 36.88% : Src/parser/parser_env.Peek.token
[    4.48K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 83.66% : Src/parser/parser_env.Peek.ith_token
[    2.62K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 58.43% : Src/parser/parser_env.lookahead
[    1.84K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 70.38% : Src/parser/parser_env.Lookahead.peek
[    1.04K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 56.29% : Src/parser/parser_env.Lookahead.lex_until
[  170.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 16.38% : Src/parser/parser_env.Lookahead.grow
[  204.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  4.55% : Src/parser/lex_result.token
[   10.90K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   -  1.82% : Src/parser/parser_env.Peek.is_line_terminator
[   10.15K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 93.16% : Src/parser/parser_env.Peek.ith_is_line_terminator
[    7.95K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 78.31% : Src/parser/parser_env.Peek.ith_loc
[    6.46K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 81.21% : Src/parser/parser_env.lookahead
[    5.85K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 90.55% : Src/parser/parser_env.Lookahead.peek
[  802.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 13.71% : Src/parser/parser_env.Lookahead.lex_until
[  128.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 15.96% : Src/parser/parser_env.Lookahead.grow
[   98.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  1.23% : Src/parser/lex_result.loc
[  802.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  7.90% : Src/parser/parser_env.last_loc
[  130.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 16.21% : Src/parser/lex_result.loc
[    9.31K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   -  1.55% : Src/parser/parser_env.Peek.comments
[    4.99K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 53.65% : Src/parser/parser_env.Peek.ith_comments
[    2.79K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 55.83% : Src/parser/parser_env.lookahead
[    1.88K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 67.58% : Src/parser/parser_env.Lookahead.peek
[    1.03K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 54.67% : Src/parser/parser_env.Lookahead.lex_until
[  188.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 18.25% : Src/parser/parser_env.Lookahead.grow
[  166.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  3.32% : Src/parser/lex_result.comments
[   11.08K cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  1.78% : Src/parser/parser_env.Peek.is_identifier
[   10.36K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 93.52% : Src/parser/parser_env.Peek.ith_is_identifier
[    7.19K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 69.35% : Src/parser/parser_env.Peek.ith_token
[    5.84K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 81.27% : Src/parser/parser_env.lookahead
[    5.23K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 89.55% : Src/parser/parser_env.Lookahead.peek
[    4.63K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 88.53% : Src/parser/parser_env.Lookahead.lex_until
[  106.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  2.29% : Src/parser/parser_env.Lookahead.grow
[   94.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  1.31% : Src/parser/lex_result.token
[  108.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.04% : Src/parser/parser_env.is_strict_reserved
[  108.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.04% : Src/parser/parser_env.is_restricted
[  104.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.00% : Src/parser/parser_env.is_future_reserved
[    7.94K cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  1.27% : Src/parser/parser_env.Peek.token
[    7.28K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 91.66% : Src/parser/parser_env.Peek.ith_token
[    5.91K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 81.17% : Src/parser/parser_env.lookahead
[    5.25K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 88.96% : Src/parser/parser_env.Lookahead.peek
[    4.65K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 88.47% : Src/parser/parser_env.Lookahead.lex_until
[  108.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  2.32% : Src/parser/parser_env.Lookahead.grow
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.40% : Src/parser/lex_result.token
[    8.19K cycles in  1 calls ]     |   |   |   |   |   |   |   -  1.28% : Src/parser/parser_env.Peek.loc
[    7.50K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 91.62% : Src/parser/parser_env.Peek.ith_loc
[    6.12K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 81.63% : Src/parser/parser_env.lookahead
[    5.50K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 89.84% : Src/parser/parser_env.Lookahead.peek
[    4.85K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 88.18% : Src/parser/parser_env.Lookahead.lex_until
[  108.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  2.23% : Src/parser/parser_env.Lookahead.grow
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   -  1.36% : Src/parser/lex_result.loc
[    7.78K cycles in  1 calls ]     |   |   |   |   |   |   |   -  1.21% : Src/parser/parser_env.Peek.token
[    7.13K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 91.65% : Src/parser/parser_env.Peek.ith_token
[    5.62K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 78.77% : Src/parser/parser_env.lookahead
[    1.42K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 25.28% : Src/parser/parser_env.Lookahead.peek
[  736.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 51.83% : Src/parser/parser_env.Lookahead.lex_until
[  108.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 14.67% : Src/parser/parser_env.Lookahead.grow
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   -  1.40% : Src/parser/lex_result.token
[   37.09K cycles in  1 calls ]     |   |   |   |   |   |   -  5.12% : Src/parser/statement_parser.Statement.semicolon
[   27.24K cycles in  1 calls ]     |   |   |   |   |   |   |   - 73.46% : Src/parser/parser_env.Eat.trailing_comments
[    8.12K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 29.80% : Src/parser/parser_env.Peek.loc
[    7.47K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 92.02% : Src/parser/parser_env.Peek.ith_loc
[    6.04K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 80.84% : Src/parser/parser_env.lookahead
[    1.42K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 23.51% : Src/parser/parser_env.Lookahead.peek
[  770.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 54.23% : Src/parser/parser_env.Lookahead.lex_until
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 12.99% : Src/parser/parser_env.Lookahead.grow
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.34% : Src/parser/lex_result.loc
[    8.09K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 29.69% : Src/parser/parser_env.Peek.comments
[    7.47K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 92.34% : Src/parser/parser_env.Peek.ith_comments
[    5.91K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 79.09% : Src/parser/parser_env.lookahead
[    5.27K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 89.20% : Src/parser/parser_env.Lookahead.peek
[    4.67K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 88.61% : Src/parser/parser_env.Lookahead.lex_until
[  106.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  2.27% : Src/parser/parser_env.Lookahead.grow
[  128.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.71% : Src/parser/lex_result.comments
[    8.07K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 29.61% : Src/parser/parser_env.Peek.token
[    7.43K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 92.09% : Src/parser/parser_env.Peek.ith_token
[    6.03K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 81.18% : Src/parser/parser_env.lookahead
[    5.43K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 90.05% : Src/parser/parser_env.Lookahead.peek
[  790.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 14.55% : Src/parser/parser_env.Lookahead.lex_until
[  112.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 14.18% : Src/parser/parser_env.Lookahead.grow
[   96.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   -  1.29% : Src/parser/lex_result.token
[    7.97K cycles in  1 calls ]     |   |   |   |   |   |   |   - 21.49% : Src/parser/parser_env.Peek.token
[    7.29K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 91.45% : Src/parser/parser_env.Peek.ith_token
[    5.86K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 80.33% : Src/parser/parser_env.lookahead
[    1.42K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 24.32% : Src/parser/parser_env.Lookahead.peek
[  728.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 51.12% : Src/parser/parser_env.Lookahead.lex_until
[  104.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 14.29% : Src/parser/parser_env.Lookahead.grow
[   94.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   -  1.29% : Src/parser/lex_result.token
[    7.72K cycles in  1 calls ]     |   |   |   |   |   |   -  1.06% : Src/parser/parser_env.Peek.comments
[    7.07K cycles in  1 calls ]     |   |   |   |   |   |   |   - 91.63% : Src/parser/parser_env.Peek.ith_comments
[    5.45K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 77.06% : Src/parser/parser_env.lookahead
[    4.84K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 88.91% : Src/parser/parser_env.Lookahead.peek
[    4.22K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 87.12% : Src/parser/parser_env.Lookahead.lex_until
[    3.55K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 84.22% : Src/parser/parser_env.Lookahead.grow
[  102.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  1.44% : Src/parser/lex_result.comments
[    7.69K cycles in  1 calls ]     |   |   |   |   |   |   -  1.06% : Src/parser/parser_env.Peek.loc
[    7.07K cycles in  1 calls ]     |   |   |   |   |   |   |   - 91.96% : Src/parser/parser_env.Peek.ith_loc
[    5.58K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 78.95% : Src/parser/parser_env.lookahead
[    4.97K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 89.07% : Src/parser/parser_env.Lookahead.peek
[    4.37K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 87.89% : Src/parser/parser_env.Lookahead.lex_until
[  108.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  2.47% : Src/parser/parser_env.Lookahead.grow
[  106.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  1.50% : Src/parser/lex_result.loc
[    7.65K cycles in  1 calls ]     |   |   |   |   |   |   -  1.06% : Src/parser/parser_env.Peek.token
[    7.01K cycles in  1 calls ]     |   |   |   |   |   |   |   - 91.73% : Src/parser/parser_env.Peek.ith_token
[    5.59K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 79.67% : Src/parser/parser_env.lookahead
[    5.01K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 89.62% : Src/parser/parser_env.Lookahead.peek
[  774.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 15.46% : Src/parser/parser_env.Lookahead.lex_until
[  106.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 13.70% : Src/parser/parser_env.Lookahead.grow
[   96.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  1.37% : Src/parser/lex_result.token
[  145.51K cycles in  1 calls ]     |   |   |   |   |   - 14.34% : Src/parser/parser_env.Eat.program_comments
[  137.88K cycles in  1 calls ]     |   |   |   |   |   |   - 94.76% : Src/parser/parser_env.Peek.comments
[  136.98K cycles in  1 calls ]     |   |   |   |   |   |   |   - 99.35% : Src/parser/parser_env.Peek.ith_comments
[  125.15K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 91.37% : Src/parser/parser_env.lookahead
[  121.00K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 96.68% : Src/parser/parser_env.Lookahead.peek
[  120.28K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 99.41% : Src/parser/parser_env.Lookahead.lex_until
[  117.57K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 97.75% : Src/parser/parser_env.Lookahead.lex
[   95.93K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 81.59% : Src/parser/flow_lexer.token
[    5.37K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   -  5.59% : Src/parser/flow_lexer.loc_of_lexbuf
[    4.69K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 87.36% : Src/parser/flow_lexer.loc_of_offsets
[    2.73K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 58.32% : Src/parser/flow_lexer.pos_at_offset
[  184.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  6.73% : Src/parser/lex_env.bol_offset
[  170.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  6.22% : Src/parser/lex_env.line
[  112.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  2.39% : Src/parser/lex_env.source
[    4.96K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   -  4.22% : Src/parser/flow_lexer.loc_of_token
[    4.20K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   - 84.67% : Src/parser/flow_lexer.loc_of_lexbuf
[    3.53K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 84.18% : Src/parser/flow_lexer.loc_of_offsets
[    2.02K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   - 57.27% : Src/parser/flow_lexer.pos_at_offset
[  166.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  8.20% : Src/parser/lex_env.line
[  166.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  8.20% : Src/parser/lex_env.bol_offset
[  134.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   -  3.79% : Src/parser/lex_env.source
[   37.46K cycles in  1 calls ]     |   |   |   |   |   -  3.69% : Src/parser/parser_env.Expect.token
[   28.08K cycles in  1 calls ]     |   |   |   |   |   |   - 74.96% : Src/parser/parser_env.Eat.token
[    5.71K cycles in  1 calls ]     |   |   |   |   |   |   |   - 20.34% : Src/parser/parser_env.Lookahead.junk
[  820.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 14.36% : Src/parser/parser_env.Lookahead.lex_until
[  132.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 16.10% : Src/parser/parser_env.Lookahead.grow
[    4.09K cycles in  1 calls ]     |   |   |   |   |   |   |   - 14.56% : Src/parser/parser_env.Peek.errors
[    3.46K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 84.54% : Src/parser/parser_env.Peek.ith_errors
[    1.95K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 56.37% : Src/parser/parser_env.lookahead
[    1.32K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 67.76% : Src/parser/parser_env.Lookahead.peek
[  706.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 53.48% : Src/parser/parser_env.Lookahead.lex_until
[  104.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   |   - 14.73% : Src/parser/parser_env.Lookahead.grow
[  138.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   -  3.99% : Src/parser/lex_result.errors
[    2.79K cycles in  2 calls ]     |   |   |   |   |   |   |   -  9.93% : Src/parser/parser_env.lookahead
[    1.91K cycles in  2 calls ]     |   |   |   |   |   |   |   |   - 68.44% : Src/parser/parser_env.Lookahead.peek
[  980.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   - 51.36% : Src/parser/parser_env.Lookahead.lex_until
[  172.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 17.55% : Src/parser/parser_env.Lookahead.grow
[    2.72K cycles in  1 calls ]     |   |   |   |   |   |   |   -  9.69% : Src/parser/parser_env.Peek.lex_env
[    2.06K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 75.53% : Src/parser/parser_env.Peek.ith_lex_env
[    1.34K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 65.37% : Src/parser/parser_env.Lookahead.lex_env
[  682.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 50.74% : Src/parser/parser_env.Lookahead.lex_until
[   94.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 13.78% : Src/parser/parser_env.Lookahead.grow
[    7.89K cycles in  1 calls ]     |   |   |   |   |   |   - 21.07% : Src/parser/parser_env.Peek.token
[    7.28K cycles in  1 calls ]     |   |   |   |   |   |   |   - 92.30% : Src/parser/parser_env.Peek.ith_token
[    5.93K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 81.41% : Src/parser/parser_env.lookahead
[    5.29K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 89.24% : Src/parser/parser_env.Lookahead.peek
[    4.67K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 88.25% : Src/parser/parser_env.Lookahead.lex_until
[  138.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   -  2.96% : Src/parser/parser_env.Lookahead.grow
[   94.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  1.29% : Src/parser/lex_result.token
[   18.01K cycles in  1 calls ]     |   |   |   |   |   -  1.77% : Src/parser/parser_env.Peek.is_identifier
[   12.39K cycles in  1 calls ]     |   |   |   |   |   |   - 68.81% : Src/parser/parser_env.Peek.ith_is_identifier
[    3.45K cycles in  1 calls ]     |   |   |   |   |   |   |   - 27.87% : Src/parser/parser_env.Peek.ith_token
[    1.99K cycles in  1 calls ]     |   |   |   |   |   |   |   |   - 57.73% : Src/parser/parser_env.lookahead
[    1.38K cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   - 69.31% : Src/parser/parser_env.Lookahead.peek
[  772.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   - 55.86% : Src/parser/parser_env.Lookahead.lex_until
[  100.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 12.95% : Src/parser/parser_env.Lookahead.grow
[   92.00  cycles in  1 calls ]     |   |   |   |   |   |   |   |   -  2.66% : Src/parser/lex_result.token
[  332.00  cycles in  1 calls ]     |   |   |   |   |   |   |   -  2.68% : Src/parser/parser_env.is_strict_reserved
[  288.00  cycles in  1 calls ]     |   |   |   |   |   |   |   -  2.32% : Src/parser/parser_env.is_restricted
[  190.00  cycles in  1 calls ]     |   |   |   |   |   |   |   -  1.53% : Src/parser/parser_env.is_future_reserved
[   15.84K cycles in  6 calls ]     |   |   |   |   |   -  1.56% : Src/parser/parser_env.Peek.token
[    9.82K cycles in  6 calls ]     |   |   |   |   |   |   - 62.00% : Src/parser/parser_env.Peek.ith_token
[    6.00K cycles in  6 calls ]     |   |   |   |   |   |   |   - 61.10% : Src/parser/parser_env.lookahead
[    4.22K cycles in  6 calls ]     |   |   |   |   |   |   |   |   - 70.30% : Src/parser/parser_env.Lookahead.peek
[    2.39K cycles in  6 calls ]     |   |   |   |   |   |   |   |   |   - 56.71% : Src/parser/parser_env.Lookahead.lex_until
[  500.00  cycles in  6 calls ]     |   |   |   |   |   |   |   |   |   |   - 20.90% : Src/parser/parser_env.Lookahead.grow
[  482.00  cycles in  6 calls ]     |   |   |   |   |   |   |   -  4.91% : Src/parser/lex_result.token
[   15.25K cycles in  2 calls ]     |   |   |   |   |   -  1.50% : Src/parser/parser_env.Peek.is_class
[   13.52K cycles in  2 calls ]     |   |   |   |   |   |   - 88.68% : Src/parser/parser_env.Peek.token
[   12.46K cycles in  2 calls ]     |   |   |   |   |   |   |   - 92.16% : Src/parser/parser_env.Peek.ith_token
[   10.47K cycles in  2 calls ]     |   |   |   |   |   |   |   |   - 84.00% : Src/parser/parser_env.lookahead
[    9.53K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   - 91.04% : Src/parser/parser_env.Lookahead.peek
[    1.20K cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   - 12.63% : Src/parser/parser_env.Lookahead.lex_until
[  230.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 19.10% : Src/parser/parser_env.Lookahead.grow
[  176.00  cycles in  2 calls ]     |   |   |   |   |   |   |   |   -  1.41% : Src/parser/lex_result.token
[   13.39K cycles in  2 calls ]     |   |   |   |   |   -  1.32% : Src/parser/parser_env.Peek.is_function
[   11.92K cycles in  4 calls ]     |   |   |   |   |   |   - 89.02% : Src/parser/parser_env.Peek.token
[    6.60K cycles in  4 calls ]     |   |   |   |   |   |   |   - 55.32% : Src/parser/parser_env.Peek.ith_token
[    4.03K cycles in  4 calls ]     |   |   |   |   |   |   |   |   - 61.13% : Src/parser/parser_env.lookahead
[    2.78K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   - 68.85% : Src/parser/parser_env.Lookahead.peek
[    1.50K cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   - 54.03% : Src/parser/parser_env.Lookahead.lex_until
[  294.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   |   |   |   - 19.60% : Src/parser/parser_env.Lookahead.grow
[  292.00  cycles in  4 calls ]     |   |   |   |   |   |   |   |   -  4.43% : Src/parser/lex_result.token
[   22.75K cycles in  1 calls ]     |   |   |   -  2.18% : Src/parser/parser_env.init_env
[    1.27K cycles in  1 calls ]     |   |   |   |   -  5.59% : Src/parser/parser_env.Lookahead.create
[  406.00  cycles in  1 calls ]     |   |   |   |   |   - 31.92% : Src/parser/lex_env.clone
[  692.81K cycles in  1 calls ]     - 13.99% : load(src/parser/flow_ast_mapper)
[  104.69K cycles in  1 calls ]     -  2.11% : load(src/parser/parser_flow)

Note: Nodes accounting for less than 1.00% of their parent have been ignored.

Aggregated table:
----------------
                                              Name;                            Filename;    Calls;     Time
                                              ROOT;                     src/landmark.ml;        0;    4.95M
               load(src/parser/comment_attachment);  src/parser/comment_attachment.ml:8;        1;    2.73M
                      load(src/parser/bench/bench);         src/parser/bench/bench.ml:5;        1;    1.05M
               Src/parser/parser_flow.program_file;       src/parser/parser_flow.ml:397;        1;    1.05M
              Src/parser/parser_flow.parse_program;       src/parser/parser_flow.ml:390;        1;    1.05M
                   Src/parser/parser_flow.do_parse;       src/parser/parser_flow.ml:373;        1;    1.02M
              Src/parser/parser_flow.Parse.program;        src/parser/parser_flow.ml:79;        1;    1.01M
                 Src/parser/parser_common.with_loc;     src/parser/parser_common.ml:176;        5;  724.73K
                  load(src/parser/flow_ast_mapper);     src/parser/flow_ast_mapper.ml:8;        1;  692.81K
           Src/parser/parser_flow.Parse.expression;       src/parser/parser_flow.ml:264;        1;  641.36K
Src/parser/expression_parser.Expression.assignment; src/parser/expression_parser.ml:204;        1;  622.65K
                Src/parser/parser_env.Try.to_parse;       src/parser/parser_env.ml:1145;        1;  599.58K
                   Src/parser/parser_env.lookahead;        src/parser/parser_env.ml:360;      104;  496.39K
              Src/parser/parser_env.Lookahead.peek;        src/parser/parser_env.ml:110;      104;  429.37K
         Src/parser/parser_env.Lookahead.lex_until;        src/parser/parser_env.ml:104;      116;  364.80K
          Src/parser/parser_common.identifier_name;      src/parser/parser_common.ml:77;        3;  245.92K
               Src/parser/parser_env.Lookahead.lex;         src/parser/parser_env.ml:88;        6;  238.10K
                    Src/parser/parser_env.Peek.loc;        src/parser/parser_env.ml:627;       21;  211.00K
                Src/parser/parser_env.Peek.ith_loc;        src/parser/parser_env.ml:613;       22;  210.39K
                  Src/parser/parser_env.Peek.token;        src/parser/parser_env.ml:625;       49;  203.73K
               Src/parser/parser_env.Peek.comments;        src/parser/parser_env.ml:640;       11;  198.08K
              Src/parser/parser_env.Peek.ith_token;        src/parser/parser_env.ml:611;       53;  197.21K
           Src/parser/parser_env.Peek.ith_comments;        src/parser/parser_env.ml:617;       11;  188.62K
                       Src/parser/flow_lexer.token;        src/parser/flow_lexer.ml:593;        6;  157.79K
        Src/parser/parser_env.Eat.program_comments;       src/parser/parser_env.ml:1009;        1;  145.51K
       Src/parser/parser_env.Eat.trailing_comments;        src/parser/parser_env.ml:981;        4;  139.73K
                   Src/parser/parser_env.Eat.token;        src/parser/parser_env.ml:921;        6;  124.00K
           Src/parser/parser_flow.Parse.identifier;        src/parser/parser_flow.ml:53;        1;  121.61K
                      load(src/parser/parser_flow);         src/parser/parser_flow.ml:8;        1;  104.69K
          Src/parser/parser_env.Peek.is_identifier;        src/parser/parser_env.ml:859;        4;   50.21K
               Src/parser/flow_lexer.loc_of_lexbuf;        src/parser/flow_lexer.ml:184;        9;   48.59K
              Src/parser/flow_lexer.loc_of_offsets;        src/parser/flow_lexer.ml:169;        9;   43.90K
      Src/parser/parser_env.Peek.ith_is_identifier;        src/parser/parser_env.ml:674;        4;   42.79K
                Src/parser/parser_env.Expect.token;       src/parser/parser_env.ml:1058;        1;   37.46K
   Src/parser/statement_parser.Statement.semicolon;  src/parser/statement_parser.ml:152;        1;   37.09K
                Src/parser/flow_lexer.loc_of_token;        src/parser/flow_lexer.ml:189;        6;   36.19K
                 Src/parser/parser_env.Peek.errors;        src/parser/parser_env.ml:638;        6;   31.42K
            Src/parser/parser_env.Peek.is_function;        src/parser/parser_env.ml:865;        3;   27.93K
                Src/parser/parser_env.Peek.lex_env;        src/parser/parser_env.ml:648;        6;   24.74K
             Src/parser/parser_env.Peek.ith_errors;        src/parser/parser_env.ml:615;        6;   24.06K
                    Src/parser/parser_env.init_env;        src/parser/parser_env.ml:206;        1;   22.75K
               Src/parser/flow_lexer.pos_at_offset;        src/parser/flow_lexer.ml:166;       18;   20.04K
            Src/parser/parser_env.Peek.ith_lex_env;        src/parser/parser_env.ml:623;        6;   17.72K
               Src/parser/parser_env.Peek.is_class;        src/parser/parser_env.ml:871;        2;   15.25K
              Src/parser/parser_env.Lookahead.grow;         src/parser/parser_env.ml:75;      116;   14.74K
           Src/parser/parser_env.Lookahead.lex_env;        src/parser/parser_env.ml:117;        6;   14.52K
                       load(src/parser/parser_env);          src/parser/parser_env.ml:8;        1;   14.27K
     Src/parser/parser_env.Peek.is_line_terminator;        src/parser/parser_env.ml:662;        1;   10.90K
              Src/parser/parser_env.Lookahead.junk;        src/parser/parser_env.ml:125;        6;   10.88K
 Src/parser/parser_env.Peek.ith_is_line_terminator;        src/parser/parser_env.ml:651;        1;   10.15K
                       load(src/parser/flow_lexer);          src/parser/flow_lexer.ml:8;        1;    9.12K
                    Src/parser/parser_env.last_loc;        src/parser/parser_env.ml:400;        6;    7.55K
                          Src/parser/lex_env.clone;            src/parser/lex_env.ml:46;        7;    5.43K
                    load(src/parser/object_parser);       src/parser/object_parser.ml:8;        1;    5.37K
                       Src/parser/lex_result.token;         src/parser/lex_result.ml:15;       56;    4.68K
               load(src/parser/declaration_parser);  src/parser/declaration_parser.ml:8;        1;    4.56K
  Src/parser/flow_lexer.get_result_and_clear_state;        src/parser/flow_lexer.ml:197;        6;    4.54K
                 load(src/parser/statement_parser);    src/parser/statement_parser.ml:8;        1;    4.34K
                      load(src/parser/enum_parser);         src/parser/enum_parser.ml:8;        1;    4.14K
                   load(src/parser/flow_ast_utils);      src/parser/flow_ast_utils.ml:8;        1;    3.91K
                        Src/parser/flow_lexer.wrap;       src/parser/flow_lexer.ml:1770;        5;    3.90K
         Src/parser/parser_env.with_error_callback;        src/parser/parser_env.ml:395;        1;    3.73K
                         load(src/parser/file_key);            src/parser/file_key.ml:8;        1;    3.26K
                         Src/parser/lex_result.loc;         src/parser/lex_result.ml:17;       28;    2.49K
           Src/parser/parser_env.token_is_reserved;        src/parser/parser_env.ml:572;        1;    2.18K
                  Src/parser/parser_env.last_token;        src/parser/parser_env.ml:405;        3;    1.73K
                    Src/parser/lex_result.comments;         src/parser/lex_result.ml:19;       17;    1.66K
                           Src/parser/lex_env.line;            src/parser/lex_env.ml:66;       18;    1.54K
                     Src/parser/lex_env.bol_offset;            src/parser/lex_env.ml:68;       18;    1.47K
            Src/parser/parser_env.Lookahead.create;         src/parser/parser_env.ml:61;        1;    1.27K
                         Src/parser/lex_env.source;            src/parser/lex_env.ml:62;        9;  970.00 
         Src/parser/flow_ast_utils.mk_comments_opt;     src/parser/flow_ast_utils.ml:83;        5;  946.00 
                 Src/parser/parser_env.Try.success;       src/parser/parser_env.ml:1141;        1;  920.00 
            Src/parser/lex_env.get_and_clear_state;            src/parser/lex_env.ml:50;        6;  748.00 
                               Src/parser/loc.btwn;                src/parser/loc.ml:27;        8;  686.00 
                  Src/parser/parser_env.error_list;        src/parser/parser_env.ml:398;        6;  666.00 
          Src/parser/parser_env.is_strict_reserved;        src/parser/parser_env.ml:520;        4;  650.00 
                      Src/parser/lex_result.errors;         src/parser/lex_result.ml:21;        6;  644.00 
                              load(src/parser/loc);                 src/parser/loc.ml:9;        1;  562.00 
               Src/parser/parser_env.parse_options;        src/parser/parser_env.ml:292;        4;  508.00 
               Src/parser/parser_env.is_restricted;        src/parser/parser_env.ml:548;        3;  502.00 
          Src/parser/parser_env.is_future_reserved;        src/parser/parser_env.ml:508;        4;  494.00 
      Src/parser/parser_env.consume_comments_until;        src/parser/parser_env.ml:357;        4;  478.00 
        Src/parser/parser_env.with_allow_directive;        src/parser/parser_env.ml:375;        2;  464.00 
                  Src/parser/parser_env.is_keyword;        src/parser/parser_env.ml:428;        1;  462.00 
      Src/parser/pattern_cover.Cover.as_expression;      src/parser/pattern_cover.ml:25;        3;  394.00 
              Src/parser/parser_env.Try.save_state;       src/parser/parser_env.ml:1103;        1;  368.00 
                      load(src/parser/enum_common);         src/parser/enum_common.ml:8;        1;  358.00 
                  Src/parser/parser_env.with_no_in;        src/parser/parser_env.ml:383;        1;  334.00 
                      load(src/parser/parse_error);         src/parser/parse_error.ml:8;        1;  292.00 
                     Src/parser/parser_env.no_call;        src/parser/parser_env.ml:282;        3;  230.00 
                    load(src/parser/parser_common);       src/parser/parser_common.ml:8;        1;  192.00 
                    Src/parser/lex_env.new_lex_env;            src/parser/lex_env.ml:33;        1;  186.00 
        Src/parser/parser_env.Try.reset_token_sink;       src/parser/parser_env.ml:1122;        1;  170.00 
                          load(src/parser/lex_env);             src/parser/lex_env.ml:8;        1;  164.00 
                 Src/parser/parser_env.with_no_new;        src/parser/parser_env.ml:387;        1;  144.00 
                    Src/parser/parser_env.comments;        src/parser/parser_env.ml:260;        1;  140.00 
                   load(src/parser/pattern_parser);      src/parser/pattern_parser.ml:8;        1;  140.00 
 Src/parser/parser_env.Lookahead.next_power_of_two;         src/parser/parser_env.ml:65;        1;  138.00 
         Src/parser/parser_env.error_on_decorators;        src/parser/parser_env.ml:908;        1;  134.00 
                            load(src/parser/token);               src/parser/token.ml:8;        1;  130.00 
                load(src/parser/expression_parser);   src/parser/expression_parser.ml:8;        1;  118.00 
           Src/parser/lex_env.is_in_comment_syntax;            src/parser/lex_env.ml:70;        1;  116.00 
                       load(src/parser/lex_result);          src/parser/lex_result.ml:8;        1;  116.00 
                      load(src/parser/type_parser);         src/parser/type_parser.ml:8;        1;  114.00 
                    load(src/parser/pattern_cover);       src/parser/pattern_cover.ml:8;        1;  110.00 
                      Src/parser/parser_env.errors;        src/parser/parser_env.ml:290;        1;  108.00 
                      Src/parser/parser_env.no_new;        src/parser/parser_env.ml:288;        1;  102.00 
                       load(src/parser/jsx_parser);          src/parser/jsx_parser.ml:8;        1;  100.00 