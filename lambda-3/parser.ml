type token =
  | LAMBDA
  | TRUE
  | FALSE
  | IF
  | THEN
  | ELSE
  | SUCC
  | PRED
  | ISZERO
  | CONCAT
  | LET
  | LETREC
  | IN
  | BOOL
  | NAT
  | STR
  | LPAREN
  | RPAREN
  | LKEY
  | RKEY
  | COMMA
  | DOT
  | SEMICOLON
  | EQ
  | COLON
  | ARROW
  | EOF
  | INTV of (int)
  | STRINGV of (string)
  | STRING of (string)

open Parsing;;
let _ = parse_error;;
# 3 "parser.mly"
  open Lambda;;
# 38 "parser.ml"
let yytransl_const = [|
  257 (* LAMBDA *);
  258 (* TRUE *);
  259 (* FALSE *);
  260 (* IF *);
  261 (* THEN *);
  262 (* ELSE *);
  263 (* SUCC *);
  264 (* PRED *);
  265 (* ISZERO *);
  266 (* CONCAT *);
  267 (* LET *);
  268 (* LETREC *);
  269 (* IN *);
  270 (* BOOL *);
  271 (* NAT *);
  272 (* STR *);
  273 (* LPAREN *);
  274 (* RPAREN *);
  275 (* LKEY *);
  276 (* RKEY *);
  277 (* COMMA *);
  278 (* DOT *);
  279 (* SEMICOLON *);
  280 (* EQ *);
  281 (* COLON *);
  282 (* ARROW *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  283 (* INTV *);
  284 (* STRINGV *);
  285 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\002\000\003\000\
\003\000\003\000\003\000\003\000\003\000\005\000\005\000\005\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\007\000\007\000\008\000\008\000\009\000\009\000\010\000\004\000\
\004\000\011\000\011\000\011\000\011\000\011\000\011\000\012\000\
\012\000\013\000\013\000\014\000\014\000\015\000\000\000"

let yylen = "\002\000\
\004\000\002\000\001\000\006\000\006\000\006\000\008\000\001\000\
\002\000\002\000\002\000\003\000\002\000\003\000\003\000\001\000\
\003\000\001\000\001\000\001\000\001\000\001\000\003\000\003\000\
\001\000\003\000\000\000\001\000\001\000\003\000\003\000\001\000\
\003\000\003\000\001\000\001\000\001\000\003\000\003\000\001\000\
\003\000\000\000\001\000\001\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\018\000\019\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\
\022\000\047\000\000\000\000\000\000\000\016\000\000\000\020\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\028\000\000\000\000\000\002\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\
\000\000\000\000\023\000\024\000\000\000\000\000\015\000\014\000\
\035\000\036\000\037\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\031\000\026\000\000\000\030\000\001\000\000\000\
\000\000\000\000\000\000\000\000\043\000\000\000\000\000\000\000\
\000\000\000\000\000\000\034\000\000\000\000\000\038\000\039\000\
\000\000\005\000\033\000\004\000\006\000\000\000\046\000\041\000\
\045\000\000\000\007\000"

let yydgoto = "\002\000\
\018\000\034\000\020\000\074\000\021\000\022\000\035\000\036\000\
\037\000\038\000\063\000\075\000\076\000\077\000\078\000"

let yysindex = "\255\255\
\061\255\000\000\242\254\000\000\000\000\096\255\093\255\093\255\
\093\255\093\255\244\254\003\255\096\255\125\255\000\000\023\255\
\000\000\000\000\042\000\093\255\029\255\000\000\027\255\000\000\
\053\255\029\255\029\255\029\255\001\255\035\255\041\255\042\255\
\050\255\054\255\057\255\059\255\000\000\063\255\096\255\000\000\
\029\255\018\255\124\255\096\255\029\255\096\255\124\255\000\000\
\096\255\096\255\000\000\000\000\064\255\082\000\000\000\000\000\
\000\000\000\000\000\000\124\255\021\255\069\255\067\255\088\255\
\098\255\085\255\000\000\000\000\050\255\000\000\000\000\099\255\
\091\255\097\255\110\255\111\255\000\000\126\255\096\255\124\255\
\096\255\096\255\096\255\000\000\124\255\124\255\000\000\000\000\
\117\255\000\000\000\000\000\000\000\000\133\255\000\000\000\000\
\000\000\096\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\128\255\000\000\114\000\
\000\000\000\000\000\000\119\000\001\000\000\000\000\000\000\000\
\000\000\021\000\041\000\061\000\000\000\000\000\000\000\000\000\
\005\255\129\255\000\000\000\000\000\000\130\255\000\000\000\000\
\081\000\000\000\000\000\000\000\101\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\131\255\000\000\247\254\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\135\255\000\000\000\000\000\000\136\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\004\000\000\000\215\255\047\000\000\000\107\000\000\000\
\105\000\000\000\000\000\073\000\000\000\071\000\000\000"

let yytablesize = 399
let yytable = "\001\000\
\008\000\062\000\004\000\005\000\019\000\066\000\020\000\020\000\
\032\000\025\000\032\000\032\000\032\000\023\000\032\000\030\000\
\032\000\013\000\072\000\014\000\009\000\020\000\042\000\020\000\
\020\000\020\000\020\000\015\000\024\000\017\000\031\000\020\000\
\020\000\020\000\057\000\058\000\059\000\060\000\091\000\061\000\
\010\000\040\000\054\000\095\000\055\000\056\000\039\000\064\000\
\073\000\065\000\042\000\043\000\067\000\026\000\027\000\028\000\
\029\000\044\000\046\000\048\000\011\000\003\000\004\000\005\000\
\006\000\047\000\041\000\007\000\008\000\009\000\010\000\011\000\
\012\000\049\000\050\000\045\000\051\000\013\000\052\000\014\000\
\013\000\071\000\090\000\053\000\092\000\093\000\094\000\015\000\
\016\000\017\000\079\000\069\000\080\000\081\000\004\000\005\000\
\003\000\004\000\005\000\006\000\012\000\099\000\007\000\008\000\
\009\000\010\000\011\000\012\000\083\000\013\000\082\000\014\000\
\013\000\020\000\014\000\085\000\084\000\086\000\003\000\015\000\
\024\000\017\000\015\000\024\000\017\000\003\000\004\000\005\000\
\006\000\087\000\088\000\007\000\008\000\009\000\010\000\011\000\
\012\000\057\000\058\000\059\000\060\000\013\000\061\000\014\000\
\073\000\098\000\089\000\027\000\025\000\029\000\042\000\015\000\
\033\000\017\000\040\000\044\000\068\000\070\000\096\000\097\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\008\000\008\000\000\000\008\000\008\000\000\000\
\000\000\000\000\000\000\000\000\000\000\008\000\000\000\000\000\
\000\000\008\000\008\000\008\000\008\000\008\000\009\000\009\000\
\000\000\009\000\009\000\008\000\008\000\008\000\000\000\000\000\
\000\000\009\000\000\000\000\000\000\000\009\000\009\000\009\000\
\009\000\009\000\010\000\010\000\000\000\010\000\010\000\009\000\
\009\000\009\000\000\000\000\000\000\000\010\000\000\000\000\000\
\000\000\010\000\010\000\010\000\010\000\010\000\011\000\011\000\
\000\000\011\000\011\000\010\000\010\000\010\000\000\000\000\000\
\000\000\011\000\000\000\000\000\000\000\011\000\011\000\011\000\
\011\000\011\000\013\000\013\000\000\000\013\000\013\000\011\000\
\011\000\011\000\000\000\000\000\000\000\013\000\000\000\000\000\
\000\000\013\000\013\000\013\000\013\000\013\000\012\000\012\000\
\000\000\012\000\012\000\013\000\013\000\013\000\000\000\000\000\
\000\000\012\000\000\000\020\000\020\000\012\000\012\000\012\000\
\012\000\012\000\000\000\003\000\003\000\000\000\000\000\012\000\
\012\000\012\000\020\000\003\000\020\000\000\000\000\000\020\000\
\003\000\000\000\003\000\003\000\020\000\020\000\020\000"

let yycheck = "\001\000\
\000\000\043\000\002\001\003\001\001\000\047\000\002\001\003\001\
\018\001\006\000\020\001\021\001\022\001\028\001\024\001\028\001\
\013\000\017\001\060\000\019\001\000\000\017\001\022\001\019\001\
\020\001\021\001\022\001\027\001\028\001\029\001\028\001\027\001\
\028\001\029\001\014\001\015\001\016\001\017\001\080\000\019\001\
\000\000\000\000\039\000\085\000\027\001\028\001\024\001\044\000\
\028\001\046\000\022\001\025\001\049\000\007\000\008\000\009\000\
\010\000\005\001\024\001\018\001\000\000\001\001\002\001\003\001\
\004\001\025\001\020\000\007\001\008\001\009\001\010\001\011\001\
\012\001\024\001\021\001\029\000\020\001\017\001\020\001\019\001\
\000\000\000\000\079\000\021\001\081\000\082\000\083\000\027\001\
\028\001\029\001\022\001\028\001\026\001\006\001\002\001\003\001\
\001\001\002\001\003\001\004\001\000\000\098\000\007\001\008\001\
\009\001\010\001\011\001\012\001\024\001\017\001\013\001\019\001\
\017\001\000\000\019\001\025\001\018\001\021\001\000\000\027\001\
\028\001\029\001\027\001\028\001\029\001\001\001\002\001\003\001\
\004\001\020\001\020\001\007\001\008\001\009\001\010\001\011\001\
\012\001\014\001\015\001\016\001\017\001\017\001\019\001\019\001\
\028\001\013\001\021\001\020\001\020\001\020\001\020\001\027\001\
\028\001\029\001\020\001\020\001\050\000\053\000\086\000\089\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\003\001\255\255\005\001\006\001\255\255\
\255\255\255\255\255\255\255\255\255\255\013\001\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\002\001\003\001\
\255\255\005\001\006\001\027\001\028\001\029\001\255\255\255\255\
\255\255\013\001\255\255\255\255\255\255\017\001\018\001\019\001\
\020\001\021\001\002\001\003\001\255\255\005\001\006\001\027\001\
\028\001\029\001\255\255\255\255\255\255\013\001\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\002\001\003\001\
\255\255\005\001\006\001\027\001\028\001\029\001\255\255\255\255\
\255\255\013\001\255\255\255\255\255\255\017\001\018\001\019\001\
\020\001\021\001\002\001\003\001\255\255\005\001\006\001\027\001\
\028\001\029\001\255\255\255\255\255\255\013\001\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\002\001\003\001\
\255\255\005\001\006\001\027\001\028\001\029\001\255\255\255\255\
\255\255\013\001\255\255\002\001\003\001\017\001\018\001\019\001\
\020\001\021\001\255\255\005\001\006\001\255\255\255\255\027\001\
\028\001\029\001\017\001\013\001\019\001\255\255\255\255\022\001\
\018\001\255\255\020\001\021\001\027\001\028\001\029\001"

let yynames_const = "\
  LAMBDA\000\
  TRUE\000\
  FALSE\000\
  IF\000\
  THEN\000\
  ELSE\000\
  SUCC\000\
  PRED\000\
  ISZERO\000\
  CONCAT\000\
  LET\000\
  LETREC\000\
  IN\000\
  BOOL\000\
  NAT\000\
  STR\000\
  LPAREN\000\
  RPAREN\000\
  LKEY\000\
  RKEY\000\
  COMMA\000\
  DOT\000\
  SEMICOLON\000\
  EQ\000\
  COLON\000\
  ARROW\000\
  EOF\000\
  "

let yynames_block = "\
  INTV\000\
  STRINGV\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 45 "parser.mly"
     (Bind (_1, _3) )
# 293 "parser.ml"
               : Lambda.command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 47 "parser.mly"
      ( Eval _1 )
# 300 "parser.ml"
               : Lambda.command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'appTerm) in
    Obj.repr(
# 51 "parser.mly"
      ( _1 )
# 307 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'term) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 53 "parser.mly"
      ( TmIf (_2, _4, _6) )
# 316 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'ty) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 55 "parser.mly"
      ( TmAbs (_2, _4, _6) )
# 325 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 57 "parser.mly"
      ( TmLetIn (_2, _4, _6) )
# 334 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'ty) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 59 "parser.mly"
      ( TmLetIn (_2, TmFix (TmAbs (_2, _4, _6)), _8) )
# 344 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'pathTerm) in
    Obj.repr(
# 63 "parser.mly"
      ( _1 )
# 351 "parser.ml"
               : 'appTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pathTerm) in
    Obj.repr(
# 65 "parser.mly"
      ( TmSucc _2 )
# 358 "parser.ml"
               : 'appTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pathTerm) in
    Obj.repr(
# 67 "parser.mly"
      ( TmPred _2 )
# 365 "parser.ml"
               : 'appTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pathTerm) in
    Obj.repr(
# 69 "parser.mly"
      ( TmIsZero _2 )
# 372 "parser.ml"
               : 'appTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'pathTerm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'pathTerm) in
    Obj.repr(
# 71 "parser.mly"
      ( TmConcat (_2, _3) )
# 380 "parser.ml"
               : 'appTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appTerm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pathTerm) in
    Obj.repr(
# 73 "parser.mly"
      ( TmApp (_1, _2) )
# 388 "parser.ml"
               : 'appTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pathTerm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 77 "parser.mly"
      ( TmProj (_1, _3) )
# 396 "parser.ml"
               : 'pathTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pathTerm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 79 "parser.mly"
      ( TmProj (_1, string_of_int _3) )
# 404 "parser.ml"
               : 'pathTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atomicTerm) in
    Obj.repr(
# 81 "parser.mly"
      ( _1 )
# 411 "parser.ml"
               : 'pathTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 85 "parser.mly"
      ( _2 )
# 418 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "parser.mly"
      ( TmTrue )
# 424 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parser.mly"
      ( TmFalse )
# 430 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 91 "parser.mly"
      ( TmVar _1 )
# 437 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 93 "parser.mly"
      ( let rec f = function
            0 -> TmZero
          | n -> TmSucc (f (n-1))
        in f _1 )
# 447 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 98 "parser.mly"
      ( TmStr _1 )
# 454 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'tupleFields) in
    Obj.repr(
# 100 "parser.mly"
       (TmTuple _2  )
# 461 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'recordFields) in
    Obj.repr(
# 102 "parser.mly"
       (TmRecord _2  )
# 468 "parser.ml"
               : 'atomicTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 106 "parser.mly"
      ( [_1] )
# 475 "parser.ml"
               : 'tupleFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'tupleFields) in
    Obj.repr(
# 108 "parser.mly"
      ( _1 :: _3 )
# 483 "parser.ml"
               : 'tupleFields))
; (fun __caml_parser_env ->
    Obj.repr(
# 112 "parser.mly"
      ( [] )
# 489 "parser.ml"
               : 'recordFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'notEmptyRecordFields) in
    Obj.repr(
# 114 "parser.mly"
      ( _1 )
# 496 "parser.ml"
               : 'recordFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'notEmptyRecordField) in
    Obj.repr(
# 118 "parser.mly"
      ( [_1] )
# 503 "parser.ml"
               : 'notEmptyRecordFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'notEmptyRecordField) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'notEmptyRecordFields) in
    Obj.repr(
# 120 "parser.mly"
      ( _1 :: _3 )
# 511 "parser.ml"
               : 'notEmptyRecordFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 124 "parser.mly"
      ( (_1, _3) )
# 519 "parser.ml"
               : 'notEmptyRecordField))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atomicTy) in
    Obj.repr(
# 129 "parser.mly"
      ( _1 )
# 526 "parser.ml"
               : 'ty))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'atomicTy) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ty) in
    Obj.repr(
# 131 "parser.mly"
      ( TyArr (_1, _3) )
# 534 "parser.ml"
               : 'ty))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'ty) in
    Obj.repr(
# 135 "parser.mly"
      ( _2 )
# 541 "parser.ml"
               : 'atomicTy))
; (fun __caml_parser_env ->
    Obj.repr(
# 137 "parser.mly"
      ( TyBool )
# 547 "parser.ml"
               : 'atomicTy))
; (fun __caml_parser_env ->
    Obj.repr(
# 139 "parser.mly"
      ( TyNat )
# 553 "parser.ml"
               : 'atomicTy))
; (fun __caml_parser_env ->
    Obj.repr(
# 141 "parser.mly"
      ( TyStr )
# 559 "parser.ml"
               : 'atomicTy))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'tupleFieldTypes) in
    Obj.repr(
# 143 "parser.mly"
      ( TyTuple _2 )
# 566 "parser.ml"
               : 'atomicTy))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'recordFieldTypes) in
    Obj.repr(
# 145 "parser.mly"
      ( TyRecord _2 )
# 573 "parser.ml"
               : 'atomicTy))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ty) in
    Obj.repr(
# 149 "parser.mly"
      ( [_1] )
# 580 "parser.ml"
               : 'tupleFieldTypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ty) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'tupleFieldTypes) in
    Obj.repr(
# 151 "parser.mly"
      ( _1 :: _3 )
# 588 "parser.ml"
               : 'tupleFieldTypes))
; (fun __caml_parser_env ->
    Obj.repr(
# 155 "parser.mly"
      ( [] )
# 594 "parser.ml"
               : 'recordFieldTypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'notEmptyRecordFieldTypes) in
    Obj.repr(
# 157 "parser.mly"
      ( _1 )
# 601 "parser.ml"
               : 'recordFieldTypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'notEmptyRecordFieldType) in
    Obj.repr(
# 161 "parser.mly"
      ( [_1] )
# 608 "parser.ml"
               : 'notEmptyRecordFieldTypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'notEmptyRecordFieldType) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'notEmptyRecordFieldTypes) in
    Obj.repr(
# 163 "parser.mly"
      ( _1 :: _3 )
# 616 "parser.ml"
               : 'notEmptyRecordFieldTypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ty) in
    Obj.repr(
# 167 "parser.mly"
      ( (_1, _3) )
# 624 "parser.ml"
               : 'notEmptyRecordFieldType))
(* Entry s *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let s (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Lambda.command)
