# skills-challenge

For question related to programming problems using C, I used Visual Studio Code to implement it. It was possible to test, after installing an appropriate compiler.

For SQL implementation problemss, I used the online tool [https://sqliteonline.com](https://sqliteonline.com).

## Question 2
Consider the following problem:

Write a C/C++ or Java program that prints each number from 1 to 100 on a new line.
* For each multiple of 3, print "Foo" instead of the number.
* For each multiple of 5, print "Baa" instead of the number.
* For multiple numbers simultaneously of 3 and 5, print "FooBaa", instead of the number.

Your solution should be using as few lines of code as possible, but you should produce efficient code.

Solution: [foo-baa.c](https://github.com/aliicecosta/skills-challenge/blob/main/foo-baa.c).


## Question 3
Consider a string containing lowercase characters from the Portuguese alphabet. You can perform two types of operations on this string:
1. Concat a lowercase character from the Portuguese alphabet at the end of the string.
2. Remove the last character from the string. If the string is empty, it will remain empty.

Given an integer k and two strings s and t, determine if you can convert s to t using exactly k operations described above on s. If possible, the program prints 'yes', otherwise it prints 'no'.

Solution: [removeConcat.c](https://github.com/aliicecosta/skills-challenge/blob/main/concat-remove.c).


## Question 4
Write an Unit Test using C/C++ or Java for the function ConcatRemove(s,t,k)

Solution: I couldn't implement this issue. I only used Unit Test in Python, using pytest. I have only basic knowledge in this topic.


## Question 5
Consider the following problem: 

Two tables are provided: Students and Notes. Students contains three columns: ID, Name and Value.

Coluna  | Tipo
:-----: | :-----:
ID      | Integer
Name    | String
Value   | Integer

The table Notes contains three Integers columns: Grade, Min_Value and Max_Value filled according example bellow:

Grade | Min_Value | Max_Value
:----:|:---------:|:------:
1     | 0         |  9
2     | 10        | 19
3     | 20        | 29
4     | 30        | 39
5     | 40        | 49
6     | 50        | 59
7     | 60        | 69
8     | 70        | 79
9     | 80        | 89
10    | 90        | 100          

Joana gives Eva the task of generating a report containing three columns: Name, Grade and Value. Joana does not want the names of students who received a grade lower than 8. The report must be in descending order by grade, that is, the highest grades are inserted first. If there are more than one student with the same grade (8-10) assigned to them, sort those students in particular by their names in alphabetical order. Finally, if the grade is less than 8, use "NULL" as the name and list them in grades in descending order. If there are more than one student with the same grade (1-7) assigned to them, sort those students in particular by their grades in ascending order.

> Obs: The question asked:
>1. Students's names with grade bigger than 8, in descending order (DSC - highest grades first).
>2. For students with the same grade, order them in alphabetical order (that means, ASC)
>3. For grades lower than 8, use 'NULL' as the name, in descending order (DSC - highest grades first).
>4. For students with the same grade (and less than 8), order them in ascendin order (ASC).

>The question gave the following output as example:

    Maria 10 99

    Marcela 9 88

    Julia 9 81

    Andreia 8 78

    NULL 7 63

    NULL 7 68

>But, as Marcela and Julia has the same grade, they shoud be order by the alphabetical order. So, the right output should be:

    Maria 10 99

    Julia 9 81

    Marcela 9 88

    Andreia 8 78

    NULL 7 63

    NULL 7 68

Solution: [students-notes.c](https://github.com/aliicecosta/skills-challenge/blob/main/students-notes.sql)

## Question 7
Information about pets is kept in two separate tables:

TABLE dogs
id INTEGER NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL

TABLE cats
id INTEGER NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL

Write an SQL query that select all distinct pet names.

Solution: [dogs-cats.sql](https://github.com/aliicecosta/skills-challenge/blob/main/dogs-cats.sql)

## Question 8
Consider a software utility called ‘bq’ that allows the user to read runtime, persistent data structures.

Commands | Description
-------- | --------
bq       | Starts utility from linux command prompt
rel <relation name> | Specify which data structure, also known as a relation, to access
di       | Display data structure of relation identified                         
key <key values> | Request system to prompt for key values for the relation identified, or specify the key to  read
re k     | Read the record associated with the key value identified
re f     | Read the first record
re l     | Read the last record
re n     | Read the next record
re p     | Read the previous record
x        | Exit the utility

Upload into your Github / Gitlab or Bitbucket account a solution for the following problems:

* Problem #1
I have a relation ABC. 

What are the sequence of commands to determine its structure?

* Problem #2

I have a relation XYZ.                          
Its structure is noted below:    

XYZ =  { file (B1) of } record
  B1   : integer;     { block number   B1
  Name : Char8;       { B1 name
end;   

What are the sequence of commands to read the first and last records of relation XYZ?

* Problem #3
Continuing with relation XYZ

What are the sequences of commands to read key value 10 and the next 2 records?

Solution: [software-utility-bq.sh](https://github.com/aliicecosta/skills-challenge/blob/main/software-utility-bq.sh)

## Question 9
Make a program in C/C++ or Java language that calculates the length of a string informed by the user (do not use any pre-existing function or method for this, such as len(), count(), strlen() or lenght()).

Solution: [string-lenght.c](https://github.com/aliicecosta/skills-challenge/blob/main/string-lenght.c)

## Question 10
Make a program in C/C++ or Java language that reverses a string informed by the user without using any temporary variable, buffer or any pre-existing function or method for this.

Solution: [reverse-string.c](https://github.com/aliicecosta/skills-challenge/blob/main/reverse-string.c)