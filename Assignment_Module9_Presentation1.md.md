Developing Data Products Courser Project
========================================================
author: A.Selvakumar
date:  2 March 2016

Introduction
========================================================
This presentation is part of the Course Project for the Coursera Developing Data Products class. The peer assessed assignment has two parts. First, we need to create a Shiny application and deploy it on R studio's servers. Second, we should use Slidify or R studio Presenter to prepare a reproducible pitch presentation about the application. This presentation adresses the second part of the course project. App Name : The computer guesses an Integer Number

Guess the Number
========================================================
- This application helps to guess the number entered within the range of input.
- Selection of number between 1 to 100
- Apps will display message between range of number
- Very simple and self explained User interface



Display Method
========================================================
number <- floor(runif(1,1,101))

numberGuessed <- function(guess, number) {

  returnValue <- "Nothing entered yet."
  
  if (guess > 100) {
    
    returnValue <- 'Above 100.\nPlease make a selection between 1 and 100.'
  }
  else if (guess < 1) {
    
    returnValue <- 'Below 1.\nPlease make a selection between 1 and 100.'
  }
  else if (guess > number) {
    returnValue <- 'Higher than the number.'
  }
  else if (guess < number) {
    returnValue <- 'Lower than the number.'
  }
  else if (guess == number) {
    returnValue <- 'Correct!'
  }
  returnValue
}

Summary
========================================================

Easy to use Apps

Scope of this Project is to guess the number within the range



