# Project 2
First foray into building a full-stack application from the ground up.

Objective: Build a game that motivates people to take more steps with steps tracker.

Idea: A user starts off with a basic weapon and duals other users. In order to make their weapons better, and have a better chance of winning in a dual, they must purchase upgrades. Money, for upgrades, is earned by getting steps with your steps tracker (like a Fitbit or Jawbone). The more steps you have, the more money you have to spend on upgrades.


## Technologies used:
- HTML
- CSS/SASS
- Bootstrap
- Ruby
- Ruby on Rails
- Postgresql


## Approach Taken:
- Make an ERD
  - Learned I might have a many-to-many relationship
- Make wireframe
- Make user stories.
- Add models and migrations.
- Add Routes
- Add Controllers.
- Add views for homepage and make sure links work on that page.
- Add views for profile page and make sure links work.
- Add sign in, up, and out functionality.
- Add many-to-many relationship.
- Add ability for new users to add a weapon.  


## To install on local computer:
- Install Rails and Ruby Gems
```
http://guides.rubyonrails.org/getting_started.html
```
- Install and set up Git:
```
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
```
- Install Postgresql
```
http://www.postgresql.org/download/
```
- Create Github account (and it is recommended that you set up SSH).
- On this page, at the top of the screen, click the fork button, to fork this repository.
- From the terminal on your computer, in folder you want repository to be in, type:

```
git clone git@github.com:SuperJones/project2.git
```
- From the terminal, in your main folder you should now be able to
```
$ bundle install
$ rake db:drop
$ rake db:create
$ rake db:migrate
$ rake db:seed

```
- Finally you should be able to run the rails server
```
$ rails s
```
and see the current application in your browser

```
localhost:3000
```

## Unsolved Problems:
- The model should not be a many-to-many relationship
    - In retrospect a User has one Inventory and and Inventory has many Weapons.
- User do not have the ability to battle other users yet.
    - An algorithm should be created to decide the winner, based off weapon hp (hitpoints), and a dice roll.
    - Later armor (defense) and potions (hp & defense increase) will be added and should be taken into account.
- Devise was not implemented, so user sign in could be more secure
- Steps should be pulled from a tracker and the leader board should only show steps, and battle wins should determine ranking.
- Search button is not functional.
- A steps-to-coins conversion system should be implemented.
