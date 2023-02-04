(define (domain domain1)


(:requirements:typing :negative-preconditions)
  (:types         
    room    - object
    movable - object
    hero monster sword - movable
  )




(:predicates ;todo: define predicates here
(on ?h - movable ?room1 - room)
(path ?r1 - room ?r2 - room)
(live ?h - hero)
(vacant ?r - room) ;empty room
(destroy ?r - room)
(hassword ?h - hero)


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
      (not (destroy ?to))
      (vacant ?to)
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
      (hassword ?h)
      (live ?h)
      (not (destroy ?to))


      
     )
    :effect
     (and 
      (not (on ?h ?from))
      (on ?h ?to)
      (destroy ?from)
     )
    )

    (:action pickup_sword
    :parameters
     (?h - hero
      ?to - room
      ?s - sword
      )
    :precondition
    (and 
      (on ?h ?to)
      (on ?s ?to)
      (not (hassword ?h))

     )
    :effect
     (and 
      (hassword ?h)
      
     )

    )
    (:action move_sword
    :parameters
     (?h - hero
      ?from - room
      ?to - room
      ?s - sword
      )
    :precondition
     (and 
      (on ?h ?from) 
      (path ?from ?to)
      (on ?s ?to)
      (not (destroy ?to))

     )
    :effect
     (and 
      (not (on ?h ?from))
      (on ?h ?to)
      (destroy ?from)
     )
  )

)
