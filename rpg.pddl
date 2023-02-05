(define (domain domain1)


(:requirements:typing :negative-preconditions)
  (:types         
    room  - object
    movable - object
    hero - movable
    monster - movable
    sword - movable
    trap - movable
  )




(:predicates ;todo: define predicates here
(on ?h - movable ?room1 - room)
(path ?r1 - room ?r2 - room)
(live ?h - hero)
(vacant ?r - room) ;empty room
(destroy ?r - room)
(empty-hand ?h - hero)
(lock ?r - room)


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
      (not (empty-hand ?h))
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
      (empty-hand ?h)

     )
    :effect
     (and 
      (not (empty-hand ?h))
      
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
      (live ?h)
     )
    :effect
     (and 
      (not (on ?h ?from))
      (on ?h ?to)
      (destroy ?from)
     )
  )

    (:action destroy_sword
    :parameters
     (?h - hero
      ?to - room
      ?s - sword
      )
    :precondition
    (and 
      (on ?h ?to)
      (not (empty-hand ?h))
      (live ?h)
      (vacant ?to)
     )
    :effect
     (and 
      (empty-hand ?h)
     )

    )

    (:action move_trap
    :parameters
     (?h - hero
      ?p - trap
      ?from - room
      ?to - room
      )
    :precondition
    (and 
      (on ?h ?from)
      (on ?p ?to) 
      (path ?from ?to)
      (live ?h)
      (not (destroy ?to))
      (empty-hand ?h)
     )
    :effect
     (and 
      (not (on ?h ?from))
      (on ?h ?to)
      (destroy ?from)
     )
    )

    (:action disarm_trap
    :parameters
     (?h - hero
      ?to - room
      ?p - trap
      )
    :precondition
    (and 
      (on ?h ?to)
      (on ?p ?to)
      (live ?h)
      (lock ?to)
     )
    :effect
     (not (lock ?to))
    )

     (:action trap_goal
    :parameters
     (?h - hero
      ?from - room
      ?to - room
      ?p - trap
      )
    :precondition
     (and 
      (on ?h ?from) 
      (path ?from ?to)
      (live ?h)
      (not (destroy ?to))
      (on ?p ?from)
      (not (lock ?to))
     )
    :effect
     (and 
      (not (on ?h ?from))
      (on ?h ?to)
      (destroy ?from)
      
     )
  )

    

)
