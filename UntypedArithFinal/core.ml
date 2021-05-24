open Format
open Syntax
open Support.Error
open Support.Pervasive

(* ------------------------   EVALUATION  ------------------------ *)

exception NoRuleApplies

let rec isnumericval t = match t with
    TmZero(_) -> true
  | TmSucc(_,t1) -> isnumericval t1
  | _ -> false

let rec isval t = match t with
    TmTrue(_)  -> true
  | TmFalse(_) -> true
  | t when isnumericval t  -> true
  | _ -> false
  
let isValZero t = match t with 
    TmZero(_)              -> true
  | _                      -> false
  

let isValBool t = match t with 
    TmTrue(_)              -> true
  | TmFalse(_)             -> true
  | _                      -> false

let isValSuccZero t = match t with 
    TmSucc(_,t1) when isValZero t1 -> true
  | _                              -> false

let rec eval1 t = match t with
    TmIf(_,TmTrue(_),t2,t3) ->
      t2
  | TmIf(_,TmFalse(_),t2,t3) ->
      t3
  | TmIf(fi,t1,t2,t3) ->
      let t1' = eval1 t1 in
      TmIf(fi, t1', t2, t3)
  | TmSucc(fi,t1) ->
      let t1' = eval1 t1 in
      TmSucc(fi, t1')
  | TmPred(_,TmZero(_)) ->
      TmZero(dummyinfo)
  | TmPred(_,TmSucc(_,nv1)) when (isnumericval nv1) ->
      nv1
  | TmPred(fi,t1) ->
      let t1' = eval1 t1 in
      TmPred(fi, t1')
  | TmIsZero(_,TmZero(_)) ->
      TmTrue(dummyinfo)
  | TmIsZero(_,TmSucc(_,nv1)) when (isnumericval nv1) ->
      TmFalse(dummyinfo)
  | TmIsZero(fi,t1) ->
      let t1' = eval1 t1 in
      TmIsZero(fi, t1')
	  
	(* ----------------------------EVALUATION FOR AND---------------------------------- *)
  | TmAnd(fi,TmTrue(_),v2) when isValBool v2 ->
      v2
  | TmAnd(fi,TmFalse(_),v2) when isValBool v2 ->
      TmFalse(dummyinfo)
  | TmAnd(fi,v1,TmTrue(_)) when isValBool v1 ->
      v1
  | TmAnd(fi,v1,TmFalse(_)) when isValBool v1 ->
      TmFalse(dummyinfo)
  | TmAnd(fi,v1,t2) when isValBool v1 ->
      let t2' = eval1 t2 in
      TmAnd(fi,v1,t2')
  | TmAnd(fi,t1,t2) ->
      let t1' = eval1 t1 in
      TmAnd(fi,t1',t2)
  (* -------------------------------------------------------------------------------- *)

   (* ----------------------------EVALUATION FOR OR---------------------------------- *)
  | TmOr(fi,TmTrue(_),v2) when isValBool v2 ->
      TmTrue(dummyinfo)
  | TmOr(fi,TmFalse(_),v2) when isValBool v2 ->
      v2
  | TmOr(fi,v1,t2) when isValBool v1 ->
      let t2' = eval1 t2 in
      TmOr(fi,v1,t2')
  | TmOr(fi,t1,t2) ->
      let t1' = eval1 t1 in
      TmOr(fi,t1',t2)
  (* -------------------------------------------------------------------------------- *)
	  
  (* ----------------------------EVALUATION FOR SWITCH---------------------------------- *)
  | TmSwitch(_,t1,t2,t3) when isValZero t1 ->
      t2
  | TmSwitch(_,t1,t2,t3) when isValSuccZero t1 ->
      t3
  | TmSwitch(fi,t1,t2,t3) ->
      let t1' = eval1 t1 in
      TmSwitch(fi,t1',t2,t3)
	  
  | _ -> 
      raise NoRuleApplies

let rec eval t =
  try let t' = eval1 t
      in eval t'
  with NoRuleApplies -> t
