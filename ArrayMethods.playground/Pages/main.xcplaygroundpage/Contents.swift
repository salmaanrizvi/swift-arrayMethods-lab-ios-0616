/*: Outline
 
 
 # Array Methods
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 * [Array Methods](https://github.com/learn-co-curriculum/swift-arrayMethods-readme)
 

 */
/*: question1
 ### 1. Create a changeable list for the five days of the week called 'daysOfTheWeek' and print each one by using a loop.
 */
// write your code here

var daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

for days in daysOfTheWeek {
    print(days)
}




/*: question2
 ### 2. Create an unchanging list for the five days of the week called 'numDaysOfTheWeek' and print each one by using a loop, prefixed by the position of the day of the week.
 */
// write your code here

let numDaysOfTheWeek = daysOfTheWeek

for (position, day) in numDaysOfTheWeek.enumerate() {
    print("\(position + 1). \(day)")
}





/*: question3
 ### 3. Create an empty array of strings called 'emptyArray' and check to see if it's empty, printing appropriate messages.
 */
// write your code here

let emptyArray : [String] = []

if emptyArray.isEmpty {
    print("empty")
}


/*: question4
 ### 4.  Create an empty array of strings called 'reverseEmptyArray' and check to see if it's empty, printing appropriate messages. Use reversed logic from question 3.
 */
// write your code here


let reverseEmptyArray : [String] = []

if !reverseEmptyArray.isEmpty {
    print("not empty")
}
else {
    print("empty")
}


/*: question5
 ### 5. Find out the size of the 'daysOfTheWeek' array created earlier, and print it to the screen.
 */
// write your code here

print(daysOfTheWeek.count)


/*: question6
 ### 6. Add the two days of the weekend to the 'daysOfTheWeek array and create an enumerated loop to print the values.
 */
// write your code here

daysOfTheWeek.append("Saturday")
daysOfTheWeek.append("Sunday")

for (number, day) in daysOfTheWeek.enumerate() {
    print("\(number + 1). \(day)")
}


/*: question7
 ### 7. Some people start the week on a Sunday. Remove Sunday from the end of the 'daysOfTheWeek' array and then re-add it to the beginning of the array.
 */
// write your code here

daysOfTheWeek.insert(daysOfTheWeek.removeAtIndex(daysOfTheWeek.count - 1), atIndex: 0)


/*: question8
 ### 8. Loop through the 'daysofTheWeek' array and change each value to lower case.
 */
// write your code here

for (index, day) in daysOfTheWeek.enumerate() {
    daysOfTheWeek[index] = day.uppercaseString
}

print(daysOfTheWeek)


/*: question9
 ### 9. Check to see if the size of the array is greater than 5, i.e. contains the days of the weekend. If so, remove the days of the weekend from the array.
 */
// write your code here

if daysOfTheWeek.count > 5 {
    if let weekendDayOne = daysOfTheWeek.indexOf("SATURDAY") {
        daysOfTheWeek.removeAtIndex(weekendDayOne)
    }
    if let weekendDayTwo = daysOfTheWeek.indexOf("SUNDAY") {
        daysOfTheWeek.removeAtIndex(weekendDayTwo)
    }
}

print(daysOfTheWeek)


//: Check here on the solution branch for a link to the solutions
