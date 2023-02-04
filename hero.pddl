

(define (domain domain1)


(:requirements:typing)
  (:types         
    room  sword  - object
    movable - object
    hero monster - movable
  )




(:predicates ;todo: define predicates here
(on ?h - movable ?room1 - room)
(path ?r1 - room ?r2 - room)
(live ?h - hero)
; (vacant ?r - room) ;empty room
(destroy ?r - room)

)



  (:action move
    :parameters
     (?h - hero
      ?from - room
      ?to - room
      )
    :precondition
     (and 
      (on ?h ?from) 
      (path ?from ?to)
      (live ?h)
     )
    :effect
     (and 
      (not (on ?h ?from))
      (on ?h ?to)
      (destroy ?from)
     )
  )
  (:action move_monster
    :parameters
     (?h - hero
      ?m - monster
      ?from - room
      ?to - room
      )
    :precondition
    (and 
      (on ?h ?from)
      (on ?m ?to) 
      (path ?from ?to)
      ;(sword ?h)
      ;(fixed ?from)
      (live ?h)
      (not (destroy ?to))
      
     )
    :effect
     (and 
      (not (live ?h))
     )
    )
  
)
