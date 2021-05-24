type token =
  | IF of (Support.Error.info)
  | THEN of (Support.Error.info)
  | ELSE of (Support.Error.info)
  | TRUE of (Support.Error.info)
  | FALSE of (Support.Error.info)
  | SUCC of (Support.Error.info)
  | PRED of (Support.Error.info)
  | ISZERO of (Support.Error.info)
  | UCID of (string Support.Error.withinfo)
  | LCID of (string Support.Error.withinfo)
  | INTV of (int Support.Error.withinfo)
  | FLOATV of (float Support.Error.withinfo)
  | STRINGV of (string Support.Error.withinfo)
  | SWITCH of (Support.Error.info)
  | CASE of (Support.Error.info)
  | AND of (Support.Error.info)
  | OR of (Support.Error.info)
  | APOSTROPHE of (Support.Error.info)
  | DQUOTE of (Support.Error.info)
  | ARROW of (Support.Error.info)
  | BANG of (Support.Error.info)
  | BARGT of (Support.Error.info)
  | BARRCURLY of (Support.Error.info)
  | BARRSQUARE of (Support.Error.info)
  | COLON of (Support.Error.info)
  | COLONCOLON of (Support.Error.info)
  | COLONEQ of (Support.Error.info)
  | COLONHASH of (Support.Error.info)
  | COMMA of (Support.Error.info)
  | DARROW of (Support.Error.info)
  | DDARROW of (Support.Error.info)
  | DOT of (Support.Error.info)
  | EOF of (Support.Error.info)
  | EQ of (Support.Error.info)
  | EQEQ of (Support.Error.info)
  | EXISTS of (Support.Error.info)
  | GT of (Support.Error.info)
  | HASH of (Support.Error.info)
  | LCURLY of (Support.Error.info)
  | LCURLYBAR of (Support.Error.info)
  | LEFTARROW of (Support.Error.info)
  | LPAREN of (Support.Error.info)
  | LSQUARE of (Support.Error.info)
  | LSQUAREBAR of (Support.Error.info)
  | LT of (Support.Error.info)
  | RCURLY of (Support.Error.info)
  | RPAREN of (Support.Error.info)
  | RSQUARE of (Support.Error.info)
  | SEMI of (Support.Error.info)
  | SLASH of (Support.Error.info)
  | STAR of (Support.Error.info)
  | TRIANGLE of (Support.Error.info)
  | USCORE of (Support.Error.info)
  | VBAR of (Support.Error.info)

open Parsing;;
let _ = parse_error;;
# 7 "parser.mly"
open Support.Error
open Support.Pervasive
open Syntax
# 64 "parser.ml"
let yytransl_const = [|
    0|]

let yytransl_block = [|
  257 (* IF *);
  258 (* THEN *);
  259 (* ELSE *);
  260 (* TRUE *);
  261 (* FALSE *);
  262 (* SUCC *);
  263 (* PRED *);
  264 (* ISZERO *);
  265 (* UCID *);
  266 (* LCID *);
  267 (* INTV *);
  268 (* FLOATV *);
  269 (* STRINGV *);
  270 (* SWITCH *);
  271 (* CASE *);
  272 (* AND *);
  273 (* OR *);
  274 (* APOSTROPHE *);
  275 (* DQUOTE *);
  276 (* ARROW *);
  277 (* BANG *);
  278 (* BARGT *);
  279 (* BARRCURLY *);
  280 (* BARRSQUARE *);
  281 (* COLON *);
  282 (* COLONCOLON *);
  283 (* COLONEQ *);
  284 (* COLONHASH *);
  285 (* COMMA *);
  286 (* DARROW *);
  287 (* DDARROW *);
  288 (* DOT *);
    0 (* EOF *);
  289 (* EQ *);
  290 (* EQEQ *);
  291 (* EXISTS *);
  292 (* GT *);
  293 (* HASH *);
  294 (* LCURLY *);
  295 (* LCURLYBAR *);
  296 (* LEFTARROW *);
  297 (* LPAREN *);
  298 (* LSQUARE *);
  299 (* LSQUAREBAR *);
  300 (* LT *);
  301 (* RCURLY *);
  302 (* RPAREN *);
  303 (* RSQUARE *);
  304 (* SEMI *);
  305 (* SLASH *);
  306 (* STAR *);
  307 (* TRIANGLE *);
  308 (* USCORE *);
  309 (* VBAR *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\003\000\003\000\003\000\005\000\004\000\
\004\000\004\000\004\000\006\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\001\000\003\000\001\000\001\000\006\000\011\000\001\000\001\000\
\002\000\002\000\002\000\003\000\001\000\001\000\001\000\003\000\
\003\000\003\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\013\000\014\000\000\000\000\000\000\000\
\015\000\000\000\000\000\000\000\001\000\000\000\021\000\000\000\
\003\000\004\000\008\000\000\000\009\000\010\000\011\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\016\000\017\000\
\012\000\002\000\000\000\007\000\000\000\000\000\000\000\005\000\
\000\000\000\000\000\000\000\000\000\000\006\000"

let yydgoto = "\002\000\
\015\000\016\000\017\000\018\000\037\000\019\000"

let yysindex = "\002\000\
\001\000\000\000\008\255\000\000\000\000\016\255\016\255\016\255\
\000\000\008\255\016\255\016\255\000\000\008\255\000\000\210\254\
\000\000\000\000\000\000\002\255\000\000\000\000\000\000\246\254\
\016\255\016\255\216\254\001\000\008\255\253\254\000\000\000\000\
\000\000\000\000\007\255\000\000\248\254\008\255\008\255\000\000\
\003\255\017\255\253\254\004\255\008\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\003\000\000\000\253\255\000\000\241\255\033\000"

let yytablesize = 298
let yytable = "\020\000\
\013\000\028\000\001\000\029\000\030\000\033\000\024\000\036\000\
\003\000\038\000\027\000\004\000\005\000\006\000\007\000\008\000\
\039\000\042\000\009\000\004\000\005\000\010\000\043\000\011\000\
\012\000\035\000\009\000\044\000\045\000\000\000\034\000\011\000\
\012\000\000\000\040\000\041\000\000\000\000\000\021\000\022\000\
\023\000\046\000\000\000\025\000\026\000\000\000\000\000\000\000\
\014\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\014\000\031\000\032\000\000\000\000\000\000\000\000\000\000\000\
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
\000\000\003\000\000\000\000\000\004\000\005\000\006\000\007\000\
\008\000\000\000\000\000\009\000\000\000\000\000\010\000\000\000\
\011\000\012\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\014\000"

let yycheck = "\003\000\
\000\000\048\001\001\000\002\001\015\001\046\001\010\000\011\001\
\001\001\003\001\014\000\004\001\005\001\006\001\007\001\008\001\
\025\001\015\001\011\001\004\001\005\001\014\001\006\001\016\001\
\017\001\029\000\011\001\043\000\025\001\255\255\028\000\016\001\
\017\001\255\255\038\000\039\000\255\255\255\255\006\000\007\000\
\008\000\045\000\255\255\011\000\012\000\255\255\255\255\255\255\
\041\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\041\001\025\000\026\000\255\255\255\255\255\255\255\255\255\255\
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
\255\255\001\001\255\255\255\255\004\001\005\001\006\001\007\001\
\008\001\255\255\255\255\011\001\255\255\255\255\014\001\255\255\
\016\001\017\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\041\001"

let yynames_const = "\
  "

let yynames_block = "\
  IF\000\
  THEN\000\
  ELSE\000\
  TRUE\000\
  FALSE\000\
  SUCC\000\
  PRED\000\
  ISZERO\000\
  UCID\000\
  LCID\000\
  INTV\000\
  FLOATV\000\
  STRINGV\000\
  SWITCH\000\
  CASE\000\
  AND\000\
  OR\000\
  APOSTROPHE\000\
  DQUOTE\000\
  ARROW\000\
  BANG\000\
  BARGT\000\
  BARRCURLY\000\
  BARRSQUARE\000\
  COLON\000\
  COLONCOLON\000\
  COLONEQ\000\
  COLONHASH\000\
  COMMA\000\
  DARROW\000\
  DDARROW\000\
  DOT\000\
  EOF\000\
  EQ\000\
  EQEQ\000\
  EXISTS\000\
  GT\000\
  HASH\000\
  LCURLY\000\
  LCURLYBAR\000\
  LEFTARROW\000\
  LPAREN\000\
  LSQUARE\000\
  LSQUAREBAR\000\
  LT\000\
  RCURLY\000\
  RPAREN\000\
  RSQUARE\000\
  SEMI\000\
  SLASH\000\
  STAR\000\
  TRIANGLE\000\
  USCORE\000\
  VBAR\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 101 "parser.mly"
      ( [] )
# 313 "parser.ml"
               :  Syntax.command list ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'Command) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Syntax.command list ) in
    Obj.repr(
# 103 "parser.mly"
      ( let cmd = _1 in
          let cmds = _3 in
          cmd::cmds )
# 324 "parser.ml"
               :  Syntax.command list ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 110 "parser.mly"
      ( (let t = _1 in Eval(tmInfo t,t)) )
# 331 "parser.ml"
               : 'Command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AppTerm) in
    Obj.repr(
# 114 "parser.mly"
      ( _1 )
# 338 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'Term) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Term) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 116 "parser.mly"
      ( TmIf(_1, _2, _4, _6) )
# 350 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 10 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 9 : 'Term) in
    let _3 = (Parsing.peek_val __caml_parser_env 8 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 7 : 'Zero) in
    let _5 = (Parsing.peek_val __caml_parser_env 6 : Support.Error.info) in
    let _6 = (Parsing.peek_val __caml_parser_env 5 : 'Term) in
    let _7 = (Parsing.peek_val __caml_parser_env 4 : Support.Error.info) in
    let _8 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _9 = (Parsing.peek_val __caml_parser_env 2 : 'Zero) in
    let _10 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _11 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 119 "parser.mly"
      ( TmSwitch(_1, _2, _6, _11) )
# 367 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int Support.Error.withinfo) in
    Obj.repr(
# 124 "parser.mly"
       ( 
        let f n = match n with
              0           -> TmZero(_1.i)
            | _           -> TmFalse(_1.i)      (* ----JUST TO MAKE IT EXHAUSTIVE---- *)
        in f _1.v
       )
# 379 "parser.ml"
               : 'Zero))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 133 "parser.mly"
      ( _1 )
# 386 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 135 "parser.mly"
      ( TmSucc(_1, _2) )
# 394 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 137 "parser.mly"
      ( TmPred(_1, _2) )
# 402 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 139 "parser.mly"
      ( TmIsZero(_1, _2) )
# 410 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 144 "parser.mly"
      ( _2 )
# 419 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 146 "parser.mly"
      ( TmTrue(_1) )
# 426 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 148 "parser.mly"
      ( TmFalse(_1) )
# 433 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int Support.Error.withinfo) in
    Obj.repr(
# 150 "parser.mly"
      ( let rec f n = match n with
              0 -> TmZero(_1.i)
            | n -> TmSucc(_1.i, f (n-1))
          in f _1.v )
# 443 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'ATerm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 157 "parser.mly"
      ( TmAnd(_1, _2, _3) )
# 452 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'ATerm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 162 "parser.mly"
      ( TmOr(_1, _2, _3) )
# 461 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 168 "parser.mly"
      ( _2 )
# 470 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 170 "parser.mly"
      ( TmTrue(_1) )
# 477 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 172 "parser.mly"
      ( TmFalse(_1) )
# 484 "parser.ml"
               : 'ATerm))
(* Entry toplevel *)
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
let toplevel (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf :  Syntax.command list )
