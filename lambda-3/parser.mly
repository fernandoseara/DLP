
%{
  open Lambda;;
%}

%token LAMBDA
%token TRUE
%token FALSE
%token IF
%token THEN
%token ELSE
%token SUCC
%token PRED
%token ISZERO
%token CONCAT
%token LET
%token LETREC
%token IN
%token BOOL
%token NAT
%token STR
%token LPAREN
%token RPAREN
%token LKEY
%token RKEY
%token COMMA
%token DOT
%token SEMICOLON
%token EQ
%token COLON
%token ARROW
%token EOF

%token <int> INTV
%token <string> STRINGV
%token <string> STRING

%start s
%type <Lambda.command> s

%%

s :
   STRINGV EQ term EOF
     {Bind ($1, $3) }
 | term EOF
      { Eval $1 }

term :
    appTerm
      { $1 }
  | IF term THEN term ELSE term
      { TmIf ($2, $4, $6) }
  | LAMBDA STRINGV COLON ty DOT term
      { TmAbs ($2, $4, $6) }
  | LET STRINGV EQ term IN term
      { TmLetIn ($2, $4, $6) }
  | LETREC STRINGV COLON ty EQ term IN term
      { TmLetIn ($2, TmFix (TmAbs ($2, $4, $6)), $8) }

appTerm :
    pathTerm
      { $1 }
  | SUCC pathTerm
      { TmSucc $2 }
  | PRED pathTerm
      { TmPred $2 }
  | ISZERO pathTerm
      { TmIsZero $2 }
  | CONCAT pathTerm pathTerm
      { TmConcat ($2, $3) }
  | appTerm pathTerm
      { TmApp ($1, $2) }

pathTerm :
    pathTerm DOT STRINGV
      { TmProj ($1, $3) }
  | pathTerm DOT INTV
      { TmProj ($1, string_of_int $3) }
  | atomicTerm
      { $1 }

atomicTerm :
    LPAREN term RPAREN
      { $2 }
  | TRUE
      { TmTrue }
  | FALSE
      { TmFalse }
  | STRINGV
      { TmVar $1 }
  | INTV
      { let rec f = function
            0 -> TmZero
          | n -> TmSucc (f (n-1))
        in f $1 }
  | STRING
      { TmStr $1 }
  | LKEY tupleFields RKEY
       {TmTuple $2  }
  | LKEY recordFields RKEY
       {TmRecord $2  }

tupleFields :
    term
      { [$1] }
  | term COMMA tupleFields
      { $1 :: $3 }

recordFields :
    /* empty */
      { [] }
  | notEmptyRecordFields
      { $1 }

notEmptyRecordFields :
    notEmptyRecordField
      { [$1] }
  | notEmptyRecordField COMMA notEmptyRecordFields
      { $1 :: $3 }

notEmptyRecordField :
    STRINGV EQ term
      { ($1, $3) }


ty :
    atomicTy
      { $1 }
  | atomicTy ARROW ty
      { TyArr ($1, $3) }

atomicTy :
    LPAREN ty RPAREN  
      { $2 } 
  | BOOL
      { TyBool }
  | NAT
      { TyNat }
  | STR
      { TyStr }
  | LKEY tupleFieldTypes RKEY
      { TyTuple $2 }
  | LKEY recordFieldTypes RKEY
      { TyRecord $2 }

tupleFieldTypes :
    ty
      { [$1] }
  | ty COMMA tupleFieldTypes
      { $1 :: $3 }

recordFieldTypes :
    /* empty */
      { [] }
  | notEmptyRecordFieldTypes
      { $1 }

notEmptyRecordFieldTypes :
    notEmptyRecordFieldType
      { [$1] }
  | notEmptyRecordFieldType COMMA notEmptyRecordFieldTypes
      { $1 :: $3 }

notEmptyRecordFieldType :
    STRINGV COLON ty
      { ($1, $3) }
