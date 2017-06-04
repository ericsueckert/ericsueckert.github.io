---
title: "Projects"
runtime: shiny
output: html_document
---

### Programming projects
You can find a summary of my github account [here](githubReport.html). It contains most of the projects I have done both in class and independantly. I've had experience programming in various contexts. [Here](https://github.com/ericsueckert) is the link to my actual Github profile.

<!--html_preserve--><div id="htmlwidget-8990" style="width:504px;height:504px;" class="plotly"></div>
<script type="application/json" data-for="htmlwidget-8990">{"x":{"data":[{"type":"bar","inherit":true,"x":["C","HTML","Java","JavaScript","Lua","Matlab","Perl","PHP","PLSQL","Python","R","Racket","Ruby",null],"y":[1,4,3,3,1,1,1,1,1,1,9,1,1,2],"colorbar":{"title":"total_repos"},"colorscale":[[0,"#440154"],[0.111111111111111,"#482878"],[0.222222222222222,"#3E4A89"],[0.333333333333333,"#31688E"],[0.444444444444444,"#26838E"],[0.555555555555556,"#1F9D89"],[0.666666666666667,"#35B779"],[0.777777777777778,"#6CCE59"],[0.888888888888889,"#B4DD2C"],[1,"#FDE725"]]}],"layout":{"xaxis":{"title":"Language"},"yaxis":{"title":"Number of Repositories"},"margin":{"b":40,"l":60,"t":25,"r":10}},"url":null,"width":null,"height":null,"base_url":"https://plot.ly","layout.1":{"xaxis":{"title":"Language"},"yaxis":{"title":"Number of Repositories"}},"filename":"Language vs. Number of Repositories"},"evals":[]}</script><!--/html_preserve-->


---

#### Flight Book
One of the later projects in my Database Management class. This was the first instance of creating a real application that uses SQL to communicate with a database. 

From earlier in the quarter I had ingested some data of flights in 2015 (about 1 million lines) into Microsoft Azure. Additionally, I added tables to represent users of the application, as well as what flights they had "reserved". Then, provided with a program skeleton, I wrote a Java application that would connect to this database. The user would be able to search for flights with multiple parameters for origin, destination, date, direct flight or transfer, and number of results. In order to book a flight, the user has to log in. The program will check the username and password against the user table in the database. If loggd in, the user may perform other actions. If a search had been made, the user may specify which itinerary to book, and if there are no date conflicts, may book that itinerary. The user may also view his reservations, and cancel them. All queries were submitted using prepared statements to prevent code injection. Transactions were used wherever necessary to ensure no errors occured during any processes.

You can view the repository [here](https://github.com/ericsueckert/flight-book).

---

#### Calculator Compiler
Simple calculator compiler written in Ruby. Calculator language supports addition, subtraction, multiplication, division, power, and square root. Can store values in variables, also had commands to clear and list variable assignments, and quit. The calculator can be run directly in the terminal by running the script, or may be run with a parameter text file containing a script, which will then be executed. Scanner and parser are implemented separately, and the parser leverages left-hand recursive parsing.

The repository is available [here](https://github.com/ericsueckert/calc_compiler)

---

#### Text Associator
Uses a hash table to store data from a thesaurus, which contains words from the english language. Each word has a list of words that are related, or associated, with that word. 

In this project I wrote a class that would store this data, and methods that would alter it. This was accomplished by hashing each word with the built in hash function and storing it in the table. The value mapped to each has would be a set of all the words associated with the hashed word. The class contains elements to add and remove words, as well as add and remove word associations. The size of the table will change dynamically based on load factor. I used separate chaining in order to prevent collision. The purpose of this implementation was to have a runtime of O(1).

You can view the repository [here](https://github.com/ericsueckert/text-associator).

---

#### College Admissions Data Visualization
The final project my group did for the class Info 498F. We were allowed full freedom on what to build. The only guidelines were: The project had to take a rich data set and present the data in a matter that would provide insight and perspective using the skills we learned throughout the course.

When I was a junior and senior in high school, I remembered how lost I felt during the college admission process. There are thousands of colleges in the United States alone, and a student needs to eventually decide on one. The data set we decided on was data on college admission statistics from colleges across the United States. We decided to use this data to provide insight for prospective college students so they may have a better grasp of which schools they would want to target. 

The application was built using the Shiny platform, which was designed exclusively for web applications written in R. Other resources we used include the library "dplyr", which contains many functions to make data wrangling simpler and more robust, and "plotly", which is a library that allows for easy generation of streamlined, rich, and aesthetic plots. Because there were 4 group members, this project was good practice in using source control with multiple contributors, especially resolving conflicts.

The application itself may be viewed [here](https://ericsueckert.shinyapps.io/college_admissions_app/). It may take a minute or two to load in order to activate the application if no one has visited it recently.

The repository may be viewed [here](https://github.com/ericsueckert/Final-Project-X).

Although the project was turned in earlier this year, I may have plans to continue working on it. As such, you may find minor bugs in the application. Please let me know if you notice something!


---

#### Text Based Game
Summer of 2014, I had just finished my first year of undergraduate study, and my friend Thomas and I had nothing to do. Thomas came up with the idea to make a text based game, a simple type of game that has a player influenced storyline. A typical text game consists of many scenarios with a text description of what currently happened, then lists a few choices for what to do next that the player may choose from. Once the player makes a choice, the story progresses. 

We programmed a basic application in Java to implement this sort of game based on a decision tree. In addition to the most basic feature of choosing story direction, we added items that the player can pick up, drop, or use as "keys" for certain story choices. We also added checkpoint resets in case the player was not satisfied with the choices he made and wanted to start over. The game was programmed with a simple GUI that had the appropriate buttons and fields for file loading and gameplay.

The game data was stored in a text file, and read into the tree using recursion. At this time I had not learned about any other ways of storing data. In retrospect, it probably would have been far easier to store game data in Json or XML format, which might also have negated the need for using recursion to read in the data.


You can view the repository for this application [here](https://github.com/ericsueckert/Text-based-game).


---

### Info 498F
Winter 2015 I took the experimental class Info 498F, "Technical Foundations". I picked up many useful skills in the class, including how to properly use source control (GitHub) individually and in a team setting. I also learned how to write in R, more specifically data wranglign and visualization, and utilizing certain web service APIs. This portfolio page was made using the skills I learned. Here are some of the projects I made in this class:



[Github Report](https://ericsueckert.github.io/githubReport.html):
This page was linked at the top of my portfolio as well. It uses GitHub's web service API to query data on a user, in this case me, and displays certain data. On this page you may see various statistics regarding my repositories.

[Iris Flowers](https://ericsueckert.shinyapps.io/a8-building-applications/):
A basic Shiny web application that uses a data set of three species of Iris and their Sepal and Petal dimensions, and displays two dimesions in a graph. Simple widgets allow for changing of species, dimensions, and color.

[Shooting Map](https://ericsueckert.github.io/mappingshooting.html):
An R markdown page that provides insight into shooting statistics in the United States using a data set of all US shootings in 2015. Includes an aggregate summary of all incidents, summary of incidents by state, an interactive map plot of all shootings, and an interactive graph of all shootings.

[Info 498 Students](https://ericsueckert.github.io/info498.html):
An R markdown page that provides simple statistics on the students enrolled in the Info 498F class. Although very straightforward, this was the first group project, and practice in using source control with multiple contributors (int this case four). 
