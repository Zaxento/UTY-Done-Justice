[Debug Features]

(1) sets you to the UNDERTALE Scenario.
(2) sets you to the YELLOW Scenario and gives you the appropriate starting equipment.
(3) teleports you to the test room.
(4) sets you to the Wonders of Patience Scenario.
other stuff exists too but me sleepy

[How do I make bullets?]

Bullets are pretty standalone. Monsters spawn them around where 'if (global.mnfight == 2)' is located (without quotation marks).
I'd suggest copy-pasting a Monster, and switching out one of the 'gen = OBJECT' for whatever bullet you want to experiment with. I'd suggest copy-pasting a bullet for experimentation purposes too.

[Door Tip]

When placing doors, where do they take you? Well, you can set this in the creation code! Here is a basic example you can copy-paste and then edit.

next_x = 700
next_y = 140
next_room = room_ruins3

[Scenarios Tip]

Because of this Engine being used for multiple games, there is a variable used for determining which Game Scenario is being played.