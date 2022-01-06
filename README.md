#Card Game Exercise

##Rules

- There is 1 dealer
- There are 5 players
- There is 1 standard 52 card deck (no jokers)
- Deal 2 cards per player in a round robin manner
- Between hands, all cards return to the deck, which must be then shuffled
- It is players vs dealer
- The highest hand wins
- The winner is announced at the end of each hand

###NOTE:
I assumed the following mapping for card rank:
- Ace: 1
- 2-10: 2-10
- Jack: 11
- Queen: 12
- King: 13

##How to play

Run:
ruby play.rb

##How to run a test file

Run:
rspec spec/SPECFILENAME.rb

##Ruby version used
ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [x86_64-linux]
