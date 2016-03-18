Event.create(
    name: 'Event 1',
    description: 'This is event 1',
    start_date: Date.today,
    end_date: Date.today + 7
    )

Event.create(
    name: 'Event 2',
    description: 'This is event 2',
    start_date: Date.today + 7,
    end_date: Date.today + 14
    )
    
Location.create(
    name: 'Location 1',
    description: 'This is location 1',
    tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
    coordinates: '36.110143, -115.141500'
    )

Location.create(
    name: 'Location 2',
    description: 'This is location 2',
    tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
    coordinates: '35.110143, -112.141500'
    )
    
User.create(
    first_name: 'User',
    last_name: '1',
    email: 'user1@unlv.nevada.edu'
    )
    
User.create(
    first_name: 'User',
    last_name: '2',
    email: 'user2@unlv.nevada.edu'
    )
    
user = User.find(1)
event1 = Event.find(1)
location1 = Location.find(1)
location2 = Location.find(2)

user1.owned_events << event1
user1.owned_locations << location1
user1.owned_locations << location2

event1.locations << location1 << location2

user2 = User.find(2)
user2.participating_events << event1
user2.visited_locations << location1