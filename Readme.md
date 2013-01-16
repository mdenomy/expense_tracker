# Expense Tracker
Expense Tracker allows a user to keep track of personal expenses

#Description
Expense Tracker is an application I developed to demonstrate Test Driven Development in Rails for the Boston Ruby Beginner's Study Group.  It is intended to show the developer workflow using TDD and Red-Green-Refactor.

The application is developed in an iterative and incremental manner.  The GIT repository contains a series of branches that show different stages of the development process.  Branches exist that show each of the phases of the Red-Green-Refactor cycle over the course of development.

**NOTE: I am not advocating commiting changes with failing tests as part of your normal development practices.  I did it for this repository to be able to switch to different parts of the Red-Green-Refactor cycle quickly in the course of a presentation**

To get the code for a particular branch or tag, run the following command

git checkout <branch or tag name>

e.g. 'git checkout 2-4-passing-index'

I intentionally avoid using the Rails scaffolding generator, although I do use the individual generators for model, controller, and database migrations.

#Iterations
##Iteration 0
Set up a bare bones Rails project to use rspec.  Rspec is configured to display colors and provide the documentation output.

The database is postgres, but that can be changed if needed.

I use rspec as my test framework, so I created the application by running

**rails new expense_tracker --skip-test-unit**

to avoid creating test-unit tests, and then ran 

**rails generate rspec:install**

to configure the application to generate rspec tests.
 
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

##Iteration 3
Add a new expense.

This iteration also brings us our first integration test using Capybara

###Branches
  * 3-1-failing-new-action
  * 3-2-passing-new-action
  * 3-3-failing-new-view
  * 3-4-passing-new-view
  * 3-5-first-integration-test
  * 3-6-add-new-expense
  
Note that in branch 3-6 I added a series of tags that show the step by step progression.  You can check out a tag just like a branch with 

'git checkout <tag>'
e.g. 'git checkout 3-6-3'

###Tags
  * 3-6-1
  * 3-6-2
  * 3-6-3
  * 3-6-4
  * 3-6-5
  * 3-6-6
  * 3-6-7
  * 3-6-8
  * 3-6-9
  * 3-6-10

##Iteration 4
TDD doesn't mean you will never have a bug, but the first step in fixing a bug is to write a test that exposes the bug.

In this iteration we will fix a few bugs
  * The new form uses a number type that prevents us from entering decimal places
  * The index page does not properly format the currency, if a whole number is entered for the amount, e.g. 12, it is dislayed as 12.0
  
When we change the new form to use a string, we will need to handle the case where the user enters commas and dollar signs.

This iteration also brings in our first helper, along with tests for the helper.

###Branches
  * 4-1-cost-as-string
  * 4-2-enter-cost-as-string
  * 4-3-format-currency
  
Note that in this iteration I added a series of tags that show the step by step progression.  You can check out a tag just like a branch with 

'git checkout <tag>'
e.g. 'git checkout 3-6-3'

###Tags
  * 4-1-1
  * 4-1-2
  * 4-1-3
  * 4-1-4
  * 4-1-5
  * 4-2-1
  * 4-3-1
  * 4-3-2



