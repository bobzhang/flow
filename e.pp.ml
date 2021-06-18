[@@@ocaml.ppx.context
  {
    tool_name = "ppxlib_driver";
    include_dirs = [];
    load_path = [];
    open_modules = [];
    for_package = None;
    debug = false;
    use_threads = false;
    use_vmthreads = false;
    recursive_types = false;
    principal = false;
    transparent_modules = false;
    unboxed_types = false;
    unsafe_string = false;
    cookies = [("sedlex.regexps", ([%regexps ]))]
  }]
let __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_1 =
  Landmark.register ~location:"src/parser/parser_flow.ml:21"
    "Src/parser/parser_flow.compare"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_2 =
  Landmark.register ~location:"src/parser/parser_flow.ml:53"
    "Src/parser/parser_flow.Parse.identifier"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_3 =
  Landmark.register ~location:"src/parser/parser_flow.ml:79"
    "Src/parser/parser_flow.Parse.program"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_4 =
  Landmark.register ~location:"src/parser/parser_flow.ml:129"
    "Src/parser/parser_flow.Parse.module_item"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_5 =
  Landmark.register ~location:"src/parser/parser_flow.ml:146"
    "Src/parser/parser_flow.Parse.module_body_with_directives"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_6 =
  Landmark.register ~location:"src/parser/parser_flow.ml:161"
    "Src/parser/parser_flow.Parse.statement_list_with_directives"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_7 =
  Landmark.register ~location:"src/parser/parser_flow.ml:177"
    "Src/parser/parser_flow.Parse.statement_list_item"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_8 =
  Landmark.register ~location:"src/parser/parser_flow.ml:194"
    "Src/parser/parser_flow.Parse.statement"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_9 =
  Landmark.register ~location:"src/parser/parser_flow.ml:264"
    "Src/parser/parser_flow.Parse.expression"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_10 =
  Landmark.register ~location:"src/parser/parser_flow.ml:271"
    "Src/parser/parser_flow.Parse.expression_or_pattern"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_11 =
  Landmark.register ~location:"src/parser/parser_flow.ml:313"
    "Src/parser/parser_flow.Parse.block_body"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_12 =
  Landmark.register ~location:"src/parser/parser_flow.ml:334"
    "Src/parser/parser_flow.Parse.function_block_body"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_13 =
  Landmark.register ~location:"src/parser/parser_flow.ml:373"
    "Src/parser/parser_flow.do_parse"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_14 =
  Landmark.register ~location:"src/parser/parser_flow.ml:381"
    "Src/parser/parser_flow.with_eof"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_15 =
  Landmark.register ~location:"src/parser/parser_flow.ml:386"
    "Src/parser/parser_flow.parse_statement"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_16 =
  Landmark.register ~location:"src/parser/parser_flow.ml:388"
    "Src/parser/parser_flow.parse_expression"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_17 =
  Landmark.register ~location:"src/parser/parser_flow.ml:390"
    "Src/parser/parser_flow.parse_program"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_18 =
  Landmark.register ~location:"src/parser/parser_flow.ml:394"
    "Src/parser/parser_flow.program"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_19 =
  Landmark.register ~location:"src/parser/parser_flow.ml:397"
    "Src/parser/parser_flow.program_file"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_20 =
  Landmark.register ~location:"src/parser/parser_flow.ml:402"
    "Src/parser/parser_flow.json_file"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_21 =
  Landmark.register ~location:"src/parser/parser_flow.ml:439"
    "Src/parser/parser_flow.string_is_valid_identifier_name"
and __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_22 =
  Landmark.register ~location:"src/parser/parser_flow.ml:8"
    "load(src/parser/parser_flow)"
let () =
  Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_22
module Ast = Flow_ast
open Token
open Parser_env
open Parser_common
let filter_duplicate_errors =
  let module PrintableErrorSet =
    (Set.Make)(struct
                 type t = (Loc.t * Parse_error.t)
                 let compare (a_loc, a_error) (b_loc, b_error) =
                   let loc = Loc.compare a_loc b_loc in
                   if loc = 0
                   then Parse_error.compare a_error b_error
                   else loc
                 include
                   struct
                     [@@@ocaml.warning "-32"]
                     let compare __x0 __x1 =
                       Landmark.enter
                         __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_1;
                       (let r =
                          try (compare __x0) __x1
                          with
                          | e ->
                              (Landmark.exit
                                 __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_1;
                               Landmark.raise e) in
                        Landmark.exit
                          __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_1;
                        r)
                   end
               end) in
    fun errs ->
      let errs = List.rev errs in
      let (_, deduped) =
        List.fold_left
          (fun (set, deduped) ->
             fun err ->
               if PrintableErrorSet.mem err set
               then (set, deduped)
               else ((PrintableErrorSet.add err set), (err :: deduped)))
          (PrintableErrorSet.empty, []) errs in
      List.rev deduped
module rec Parse:PARSER =
  struct
    module Type = (Type_parser.Type)(Parse)
    module Declaration = ((Declaration_parser.Declaration)(Parse))(Type)
    module Pattern_cover = (Pattern_cover.Cover)(Parse)
    module Expression =
      ((((((Expression_parser.Expression)(Parse))(Type))(Declaration))(Pattern_cover))
      [@landmark "expression_parser"])
    module Object =
      (((((Object_parser.Object)(Parse))(Type))(Declaration))(Expression))(Pattern_cover)
    module Statement =
      (((((Statement_parser.Statement)(Parse))(Type))(Declaration))(Object))(Pattern_cover)
    module Pattern = ((Pattern_parser.Pattern)(Parse))(Type)
    module JSX = (Jsx_parser.JSX)(Parse)
    let identifier ?restricted_error  env =
      (match Peek.token env with
       | T_LET when in_strict_mode env ->
           error env Parse_error.StrictReservedWord
       | T_LET when no_let env -> error_unexpected env
       | T_LET -> ()
       | T_AWAIT when allow_await env ->
           error env Parse_error.UnexpectedReserved
       | T_AWAIT -> ()
       | T_YIELD when allow_yield env ->
           error env Parse_error.UnexpectedReserved
       | T_YIELD when in_strict_mode env ->
           error env Parse_error.StrictReservedWord
       | T_YIELD -> ()
       | t when token_is_strict_reserved t ->
           strict_error env Parse_error.StrictReservedWord
       | t when token_is_reserved t -> error_unexpected env
       | t ->
           (match restricted_error with
            | Some err when token_is_restricted t -> strict_error env err
            | _ -> ()));
      identifier_name env
    include
      struct
        [@@@ocaml.warning "-32"]
        let identifier ?restricted_error:__x0  __x1 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_2;
          (let r =
             try (identifier ?restricted_error:__x0) __x1
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_2;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_2;
           r)
      end
    let rec program env =
      let leading = Eat.program_comments env in
      let stmts = module_body_with_directives env (fun _ -> false) in
      let end_loc = Peek.loc env in
      Expect.token env T_EOF;
      (let loc =
         match stmts with
         | [] -> end_loc
         | _ ->
             Loc.btwn (fst (List.hd stmts)) (fst (List.hd (List.rev stmts))) in
       let all_comments = List.rev (comments env) in
       (loc,
         {
           Ast.Program.statements = stmts;
           comments = (Flow_ast_utils.mk_comments_opt ~leading ());
           all_comments
         }))
    and directives =
      let check env token =
        match token with
        | T_STRING (loc, _, _, octal) ->
            if octal
            then strict_error_at env (loc, Parse_error.StrictOctalLiteral)
        | _ -> failwith ("Nooo: " ^ ((token_to_string token) ^ "\n")) in
      let rec statement_list env term_fn item_fn (string_tokens, stmts) =
        match Peek.token env with
        | T_EOF -> (env, string_tokens, stmts)
        | t when term_fn t -> (env, string_tokens, stmts)
        | T_STRING _ as string_token ->
            let possible_directive = item_fn env in
            let stmts = possible_directive :: stmts in
            (match possible_directive with
             | (_, Ast.Statement.Expression
                { Ast.Statement.Expression.directive = Some raw;_}) ->
                 let strict = (in_strict_mode env) || (raw = "use strict") in
                 let string_tokens = string_token :: string_tokens in
                 statement_list (env |> (with_strict strict)) term_fn item_fn
                   (string_tokens, stmts)
             | _ -> (env, string_tokens, stmts))
        | _ -> (env, string_tokens, stmts) in
      fun env ->
        fun term_fn ->
          fun item_fn ->
            let env = with_allow_directive true env in
            let (env, string_tokens, stmts) =
              statement_list env term_fn item_fn ([], []) in
            let env = with_allow_directive false env in
            List.iter (check env) (List.rev string_tokens); (env, stmts)
    and module_item env =
      let decorators = Object.decorator_list env in
      match Peek.token env with
      | T_EXPORT -> Statement.export_declaration ~decorators env
      | T_IMPORT ->
          (error_on_decorators env decorators;
           (let statement =
              match Peek.ith_token ~i:1 env with
              | T_LPAREN -> Statement.expression env
              | _ -> Statement.import_declaration env in
            statement))
      | T_DECLARE when (Peek.ith_token ~i:1 env) = T_EXPORT ->
          (error_on_decorators env decorators;
           Statement.declare_export_declaration env)
      | _ -> statement_list_item env ~decorators
    and module_body_with_directives env term_fn =
      let (env, directives) = directives env term_fn module_item in
      let stmts = module_body ~term_fn env in
      List.fold_left (fun acc -> fun stmt -> stmt :: acc) stmts directives
    and module_body =
      let rec module_item_list env term_fn acc =
        match Peek.token env with
        | T_EOF -> List.rev acc
        | t when term_fn t -> List.rev acc
        | _ -> module_item_list env term_fn ((module_item env) :: acc) in
      fun ~term_fn -> fun env -> module_item_list env term_fn []
    and statement_list_with_directives ~term_fn  env =
      let (env, directives) = directives env term_fn statement_list_item in
      let stmts = statement_list ~term_fn env in
      let stmts =
        List.fold_left (fun acc -> fun stmt -> stmt :: acc) stmts directives in
      (stmts, (in_strict_mode env))
    and statement_list =
      let rec statements env term_fn acc =
        match Peek.token env with
        | T_EOF -> List.rev acc
        | t when term_fn t -> List.rev acc
        | _ -> statements env term_fn ((statement_list_item env) :: acc) in
      fun ~term_fn -> fun env -> statements env term_fn []
    and statement_list_item ?(decorators= [])  env =
      if not (Peek.is_class env) then error_on_decorators env decorators;
      (let open Statement in
         match Peek.token env with
         | T_LET -> let_ env
         | T_CONST -> const env
         | _ when Peek.is_function env -> Declaration._function env
         | _ when Peek.is_class env -> class_declaration env decorators
         | T_INTERFACE -> interface env
         | T_DECLARE -> declare env
         | T_TYPE -> type_alias env
         | T_OPAQUE -> opaque_type env
         | T_ENUM when (parse_options env).enums ->
             Declaration.enum_declaration env
         | _ -> statement env)
    and statement env =
      let open Statement in
        match Peek.token env with
        | T_EOF ->
            (error_unexpected ~expected:"the start of a statement" env;
             ((Peek.loc env),
               (Ast.Statement.Empty { Ast.Statement.Empty.comments = None })))
        | T_SEMICOLON -> empty env
        | T_LCURLY -> block env
        | T_VAR -> var env
        | T_BREAK -> break env
        | T_CONTINUE -> continue env
        | T_DEBUGGER -> debugger env
        | T_DO -> do_while env
        | T_FOR -> for_ env
        | T_IF -> if_ env
        | T_RETURN -> return env
        | T_SWITCH -> switch env
        | T_THROW -> throw env
        | T_TRY -> try_ env
        | T_WHILE -> while_ env
        | T_WITH -> with_ env
        | T_ELSE -> if_ env
        | T_COLON|T_RPAREN|T_RCURLY|T_RBRACKET|T_COMMA|T_PERIOD
          |T_PLING_PERIOD|T_ARROW|T_IN|T_INSTANCEOF|T_CATCH|T_FINALLY|T_CASE
          |T_DEFAULT|T_EXTENDS|T_STATIC|T_EXPORT|T_ELLIPSIS ->
            (error_unexpected ~expected:"the start of a statement" env;
             Eat.token env;
             statement env)
        | _ when Peek.is_function env ->
            let func = Declaration._function env in
            (function_as_statement_error_at env (fst func); func)
        | T_LET when (Peek.ith_token ~i:1 env) = T_LBRACKET ->
            let loc = Loc.btwn (Peek.loc env) (Peek.ith_loc ~i:1 env) in
            (error_at env (loc, Parse_error.AmbiguousLetBracket);
             Statement.expression env)
        | _ when Peek.is_identifier env -> maybe_labeled env
        | _ when Peek.is_class env ->
            (error_unexpected env; Eat.token env; Statement.expression env)
        | _ -> Statement.expression env
    and expression env =
      let start_loc = Peek.loc env in
      let expr = Expression.assignment env in
      match Peek.token env with
      | T_COMMA -> Expression.sequence env ~start_loc [expr]
      | _ -> expr
    and expression_or_pattern env =
      let start_loc = Peek.loc env in
      let expr_or_pattern = Expression.assignment_cover env in
      match Peek.token env with
      | T_COMMA ->
          let expr = Pattern_cover.as_expression env expr_or_pattern in
          let seq = Expression.sequence env ~start_loc [expr] in
          Cover_expr seq
      | _ -> expr_or_pattern
    and conditional = Expression.conditional
    and assignment = Expression.assignment
    and left_hand_side = Expression.left_hand_side
    and object_initializer = Object._initializer
    and object_key = Object.key
    and class_declaration = Object.class_declaration
    and class_expression = Object.class_expression
    and is_assignable_lhs = Expression.is_assignable_lhs
    and number = Expression.number
    and identifier_with_type =
      let with_loc_helper no_optional restricted_error env =
        let name = identifier ~restricted_error env in
        let optional = (not no_optional) && ((Peek.token env) = T_PLING) in
        if optional
        then
          (if not (should_parse_types env)
           then error env Parse_error.UnexpectedTypeAnnotation;
           Expect.token env T_PLING);
        (let annot = Type.annotation_opt env in
         let open Ast.Pattern.Identifier in { name; optional; annot }) in
      fun env ->
        fun ?(no_optional= false) ->
          fun restricted_error ->
            with_loc (with_loc_helper no_optional restricted_error) env
    and block_body env =
      let start_loc = Peek.loc env in
      let leading = Peek.comments env in
      Expect.token env T_LCURLY;
      (let term_fn t = t = T_RCURLY in
       let body = statement_list ~term_fn env in
       let end_loc = Peek.loc env in
       let internal = if body = [] then Peek.comments env else [] in
       Expect.token env T_RCURLY;
       (let trailing = Eat.trailing_comments env in
        ((Loc.btwn start_loc end_loc),
          {
            Ast.Statement.Block.body = body;
            comments =
              (Flow_ast_utils.mk_comments_with_internal_opt ~leading
                 ~trailing ~internal)
          })))
    and function_block_body ~expression  env =
      let start_loc = Peek.loc env in
      let leading = Peek.comments env in
      Expect.token env T_LCURLY;
      (let term_fn t = t = T_RCURLY in
       let (body, strict) = statement_list_with_directives ~term_fn env in
       let end_loc = Peek.loc env in
       let internal = if body = [] then Peek.comments env else [] in
       Expect.token env T_RCURLY;
       (let trailing =
          match (expression, (Peek.token env)) with
          | (true, _)|(_, (T_RCURLY|T_EOF)) -> Eat.trailing_comments env
          | _ when Peek.is_line_terminator env ->
              Eat.comments_until_next_line env
          | _ -> [] in
        ((Loc.btwn start_loc end_loc),
          {
            Ast.Statement.Block.body = body;
            comments =
              (Flow_ast_utils.mk_comments_with_internal_opt ~leading
                 ~trailing ~internal)
          }, strict)))
    and jsx_element_or_fragment = JSX.element_or_fragment
    and pattern = Pattern.pattern
    and pattern_from_expr = Pattern.from_expr
    include
      struct
        [@@@ocaml.warning "-32"]
        let program __x0 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_3;
          (let r =
             try program __x0
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_3;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_3;
           r)
        and module_item __x0 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_4;
          (let r =
             try module_item __x0
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_4;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_4;
           r)
        and module_body_with_directives __x0 __x1 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_5;
          (let r =
             try (module_body_with_directives __x0) __x1
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_5;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_5;
           r)
        and statement_list_with_directives ~term_fn:__x0  __x1 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_6;
          (let r =
             try (statement_list_with_directives ~term_fn:__x0) __x1
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_6;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_6;
           r)
        and statement_list_item ?decorators:__x0  __x1 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_7;
          (let r =
             try (statement_list_item ?decorators:__x0) __x1
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_7;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_7;
           r)
        and statement __x0 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_8;
          (let r =
             try statement __x0
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_8;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_8;
           r)
        and expression __x0 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_9;
          (let r =
             try expression __x0
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_9;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_9;
           r)
        and expression_or_pattern __x0 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_10;
          (let r =
             try expression_or_pattern __x0
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_10;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_10;
           r)
        and block_body __x0 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_11;
          (let r =
             try block_body __x0
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_11;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_11;
           r)
        and function_block_body ~expression:__x0  __x1 =
          Landmark.enter
            __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_12;
          (let r =
             try (function_block_body ~expression:__x0) __x1
             with
             | e ->
                 (Landmark.exit
                    __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_12;
                  Landmark.raise e) in
           Landmark.exit
             __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_12;
           r)
      end
  end

let do_parse env parser fail =
  let ast = parser env in
  let error_list = filter_duplicate_errors (errors env) in
  if fail && (error_list <> []) then raise (Parse_error.Error error_list);
  (ast, error_list)
include
  struct
    [@@@ocaml.warning "-32"]
    let do_parse __x0 __x1 __x2 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_13;
      (let r =
         try ((do_parse __x0) __x1) __x2
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_13;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_13;
       r)
  end
let with_eof parser env = let ast = parser env in Expect.token env T_EOF; ast
include
  struct
    [@@@ocaml.warning "-32"]
    let with_eof __x0 __x1 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_14;
      (let r =
         try (with_eof __x0) __x1
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_14;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_14;
       r)
  end
let parse_statement env fail =
  do_parse env (with_eof Parse.statement_list_item) fail
include
  struct
    [@@@ocaml.warning "-32"]
    let parse_statement __x0 __x1 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_15;
      (let r =
         try (parse_statement __x0) __x1
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_15;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_15;
       r)
  end
let parse_expression env fail = do_parse env (with_eof Parse.expression) fail
include
  struct
    [@@@ocaml.warning "-32"]
    let parse_expression __x0 __x1 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_16;
      (let r =
         try (parse_expression __x0) __x1
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_16;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_16;
       r)
  end
let parse_program fail ?(token_sink= None)  ?(parse_options= None)  filename
  content =
  let env = init_env ~token_sink ~parse_options filename content in
  do_parse env Parse.program fail
include
  struct
    [@@@ocaml.warning "-32"]
    let parse_program __x0 ?token_sink:__x1  ?parse_options:__x2  __x3 __x4 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_17;
      (let r =
         try
           ((((parse_program __x0) ?token_sink:__x1) ?parse_options:__x2)
              __x3) __x4
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_17;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_17;
       r)
  end
let program ?(fail= true)  ?(token_sink= None)  ?(parse_options= None) 
  content = parse_program fail ~token_sink ~parse_options None content
include
  struct
    [@@@ocaml.warning "-32"]
    let program ?fail:__x0  ?token_sink:__x1  ?parse_options:__x2  __x3 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_18;
      (let r =
         try
           (((program ?fail:__x0) ?token_sink:__x1) ?parse_options:__x2) __x3
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_18;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_18;
       r)
  end
let program_file ?(fail= true)  ?(token_sink= None)  ?(parse_options= None) 
  content filename =
  parse_program fail ~token_sink ~parse_options filename content
include
  struct
    [@@@ocaml.warning "-32"]
    let program_file ?fail:__x0  ?token_sink:__x1  ?parse_options:__x2  __x3
      __x4 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_19;
      (let r =
         try
           ((((program_file ?fail:__x0) ?token_sink:__x1) ?parse_options:__x2)
              __x3) __x4
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_19;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_19;
       r)
  end
let json_file ?(fail= true)  ?(token_sink= None)  ?(parse_options= None) 
  content filename =
  let env = init_env ~token_sink ~parse_options filename content in
  match Peek.token env with
  | T_LBRACKET|T_LCURLY|T_STRING _|T_NUMBER _|T_TRUE|T_FALSE|T_NULL ->
      do_parse env Parse.expression fail
  | T_MINUS ->
      (match Peek.ith_token ~i:1 env with
       | T_NUMBER _ -> do_parse env Parse.expression fail
       | _ ->
           (error_unexpected ~expected:"a number" env;
            raise (Parse_error.Error (errors env))))
  | _ ->
      let errs =
        match errors env with
        | [] ->
            (error_unexpected ~expected:"a valid JSON value" env; errors env)
        | errs -> errs in
      raise (Parse_error.Error errs)
include
  struct
    [@@@ocaml.warning "-32"]
    let json_file ?fail:__x0  ?token_sink:__x1  ?parse_options:__x2  __x3
      __x4 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_20;
      (let r =
         try
           ((((json_file ?fail:__x0) ?token_sink:__x1) ?parse_options:__x2)
              __x3) __x4
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_20;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_20;
       r)
  end
let jsx_pragma_expression =
  let left_hand_side env =
    let ast = Parse.left_hand_side (with_no_new true env) in
    Expect.token env T_EOF; ast in
  fun content ->
    fun filename ->
      let env =
        init_env ~token_sink:None ~parse_options:None filename content in
      do_parse env left_hand_side true
let string_is_valid_identifier_name str =
  let lexbuf = Sedlexing.Utf8.from_string str in
  Flow_lexer.is_valid_identifier_name lexbuf
include
  struct
    [@@@ocaml.warning "-32"]
    let string_is_valid_identifier_name __x0 =
      Landmark.enter __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_21;
      (let r =
         try string_is_valid_identifier_name __x0
         with
         | e ->
             (Landmark.exit
                __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_21;
              Landmark.raise e) in
       Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_21;
       r)
  end
let () =
  Landmark.exit __generated_landmark_579bbcc4f0b81d90c9e3454eabb5ed13_22
File "src/parser/parser_flow.ml", line 1:
Error: Unbound module Landmark
