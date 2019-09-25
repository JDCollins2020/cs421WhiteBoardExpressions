#lang racket
#|
 write a map "class"(really a library of functions) in scheme
 put, get , contains, put-all, keys, values, size
 ( ( key1 value1 ) ( key2 value2 ) ... ( keyn valuen ) )
--> invalid ( '( ) ) not a pair
--> valid (  ( '() . '() )  )
( (a 1) (b 2) )
easier to do
( (b 2) (a 1) )
-->insert a 3
overwrite ( (b 2) (a 3) )
insert in front ( (a 3) (b 2) (a 1) )
-fast insert but memory heavy
--> delete b
|#

( define ( map-create ) '() )

( define ( map-put map key value )
   ( cons (list key value) map)
)


( map-put (map-create) 'a 1 )
