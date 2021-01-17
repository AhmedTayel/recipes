# README

This application is in still in development. 

* Uses mysql for a relational database model.

Copy and paste any recipe URL from allrecipes.com into new and it the recipe should be added to the databse and viewed with all ingredients and instructions in its own page.

* Views are rendered at the serverside.


To start the app, cd into the folder and create the database using ```rails db:create```, then migrate ```rails db:migrate```, you can seed 
the recipe database with dummy recipes using ```rails db:seed```.

Run ```rails server``` to run the app and go to the hosted server at '/recipes'.