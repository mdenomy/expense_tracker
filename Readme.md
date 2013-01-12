# Expense Tracker
Expense Tracker allows a user to keep track of personal expenses

#Description
Expense Tracker is an application I developed to demonstrate Test Driven Development in Rails for the Boston Ruby Beginner's Study Group.

The application is developed in an iterative and incremental manner.  The GIT repository contains a series of branches that show different stages of the development process.  Branches exist that show each of the phases of the Red-Green-Refactor cycle

** NOTE: I am not advocating commiting changes with failing tests as part of your normal development practices.  I did it for this repository to be able to swithc to different parts of the Red-Green-Refactor cycle quickly in the course of a presentation **

I intentionally avoid using the Rails scaffolding generator, although I do use the individual generators for model, controller, and database migrations.

#Iterations
##Iteration 0
Set up a bare bones Rails project to use rspec.  Rspec is configured to display colors and provide the documentation output.

The database is postgres, but that can be changed if needed.
###Branches
None
   
##Iteration 1
Create a model for Expenses.  Each expense has an amount and a description.

Put basic validations on the the Expense model:

* Amounts must be greater than zero
* Must have a description

###Branches
* 1-1-failing-validations
* 1-2-passing-validations
* 1-3-refactor-validations
* 1-4-factory-girl

##Iteration 2
Show all expenses.  

Implement the index action for the ExpensesController and have a simple view that shows all the expenses in a table.

Added some seed data and absolutely minimal styling to keep it simple.

###Branches
  * 2-1-failing-index-route
  * 2-2-passing-index-route
  * 2-3-failing-index
  * 2-4-passing-index
  * 2-5-failing-view
  * 2-6-passing-view
  * 2-7-refactor-view
  * 2-8-seed-data-and-min-styling

