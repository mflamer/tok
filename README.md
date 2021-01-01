# tok
 ascii token processor

- 16 bit ALU
- 8 bit ASCII bytecodes
- 2 stack architecture. (A)rgument stack & (C)ontrol stack. 
- Binary instructions operate on A and (S)econd slot on stack. 
- Hardware symbol table (Open addressing, linear probing hash table).


-Instructions-
- 0-9, A-F:  shift in 4 bits of constant
- a-z:       hash each letter for symbol lookup
- !:         Set table slot of symb A = S.
- @:         Swap val in table slot of symb A onto A.
- ~:          call to addr in table slot of symb A.
- {:          push tc on C_stk for loops
- }:          pop C_stk to tc
- ?:          pop C_stk to tc if A != 0
- (:          store tc in table, skip until ) function def.
- ):          if executing, pop C_stk to tc function ret. 
