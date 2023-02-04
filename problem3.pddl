(define (problem problem3)
	(:domain domain1)
	(:objects
	hero1 - hero
    room1_1 - room
    room1_2 - room
    room1_3 - room
    room2_1 - room
    room2_2 - room
    room2_3 - room
    room2_4 - room
    monster_1 - monster
    monster_2 - monster
    sword1 - sword
    trap1 - trap
	)

	(:init
        (live hero1)
		(on hero1 room1_1)
        (on monster_1 room1_2)
        (on monster_2 room2_2)
        (path room1_1 room2_1) 
        (path room1_1 room1_2) 
        (path room1_2 room2_2)
        (path room1_2 room1_3) 
        (path room1_3 room1_2)
        (path room2_1 room1_1) 
        (path room2_1 room2_2)
        (path room2_2 room1_2) 
        (path room2_2 room2_1)
        (path room2_2 room2_3) 
        (path room2_3 room1_3)
        (path room1_3 room2_3)
        (path room2_3 room2_2)
        (path room2_3 room2_4)
        (path room2_4 room2_3)
        (vacant room1_3)
        (on trap1 room2_3)
        (on sword1 room2_1)
        (lock room2_3)
        (empty-hand hero1)


        
	)
	(:goal 
		(and (on hero1 room2_4) 
		
	)
)
)
