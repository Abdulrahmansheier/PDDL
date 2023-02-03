;Header and description

(define (domain doungen)

;remove requirements that are not needed
(:requirements :typing)

  (:types         
    room locatable - object
		hero monster - locatable
  )


; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
(on ?hero - hero ?room1 - room)
(path ?room1 - room ?room2 - room ?room3 - room ?room4 - room ?room5 - room ?room6 - room)
)


(:functions ;todo: define numeric functions here
)

;define actions here
  (:action move
    :parameters
     (?hero - hero
      ?from - room
      ?to - room)
    :precondition
     (and 
      (on ?hero ?from) 
      (path ?from ?to)
     )
    :effect
     (and 
      (not (on ?hero ?from))
      (on ?hero ?to)
     )
  )


)


