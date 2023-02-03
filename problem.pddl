(define (problem pb1)
	(:domain doungen)
	(:objects
	hero1 - hero
    room1_1 - room
    room1_2 - room
    room1_3 - room
    room2_1 - room
    room2_2 - room
    room2_3 - room
    monster_1 - monster
    monster_2 - monster
	)

	(:init
		(on hero1 room1_1)
        (on monster_1 room1_1)
        (path room1_1 room1_2 room1_3 room2_1 room2_2 room2_3)
	)
	(:goal 
		(on hero1 room2_3)
	)
)
