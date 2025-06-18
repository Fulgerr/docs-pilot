# HTML Pages: Extract and Manipulate
    Information

The example below explains how to automate the action of browsing a web page, extract
      information and use it for creating a new, local HTML page. It presents activities such as
        , , , and . You can find these
      activities in the UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Open Internet Explorer and navigate
        to www.goodreads.com .
3. Drag a Flowchart container in the
            Workflow Designer. Create the following variables:Variable NameVariable TypeDefault ValuebookFoundStringbookNameGenericValue
4. Drag an Input Dialog activity
          inside the Flowchart container and connect it to the Start node. Double-click the activity in order to
            open it. Add the expression "Book
              Name:" in the Title field.Add the expression "Enter the
              name of a book you read:" in the Label field.In the Properties panel, add the
            variable bookName in the Result field.The activity should look like in the
              following screenshot:
5. Return to the Flowchart screen.
6. Drag a Sequence container and
          connect it to the Input Dialog activity. This is used for creating a new
            .html file. Create the following variable:Variable NameVariable TypeDefault ValuefileExistsBoolean
7. Double-click the Sequence
          container to open it and drag a Path Exists activity inside it. Select the File option from the
              Path Type drop-down list.Add the expression
              "books.html" in the Path field.In the Properties panel, add the
            variable fileExists in the Exists field.
8. Drag an If activity below the
            Path Exists activity. Add the variable
              fileExists in the Condition field.
9. Place a Write Text File activity
          in the Else field. Add the expression
              "books.html" in the FileName field.Add the code below in the
                Text field.<html> <head>
                <title>Books</title> </head> <body> </body>
                </html> The activity should look like in the
              following screenshot:
10. Return to the Flowchart screen.
11. Drag an Open Browser activity and
          connect it to the Sequence container. Double-click the activity in order to
            open it. In the Properties panel, select
            the IE option from the BrowserType drop-down list.Add the expression
              "https://www.goodreads.com/search" in the Url field. This
            opens the specified website.Select the check box for the
              NewSession option. This opens a new session of the selected browser.
12. Select the Do container from
          inside the Open Browser activity and create the following variable: Variable NameVariable TypeDefault ValuenoResultsGenericValue
13. Drag a Type Into activity inside
          the Do sequence. Inside the activity, click the
              Indicate element inside browser option. Now you can select the desired
            application. The GIF below shows all the steps you need to follow: Add the variable
              bookName in the Text field.
14. Place a Click activity below the
            Type Into activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the desired
            application. The GIF below shows all the steps you need to follow: In the Properties panel, add the
            value 1000 in the DelayBefore field. A delay of one second
            happens before performing any operation.
15. Drag a Get Text activity below
          the Click 'INPUT' activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the desired
            application. The GIF below shows all the steps you need to follow: In the Properties panel, add the
            variable noResults in the Value field.
16. Drag an If activity below the
            Get Text 'H3' activity. Add the expression
              noResults.toLower.Trim.Contains("no results") in the Condition
            field.
17. Place a Sequence container inside
        the Then field.
18. Drag a Message Box activity
          inside the Sequence container. Add the message "Book not
              found. Please search another one." in the Text field. If no result is
            available, then this message is displayed.
19. Drag a Close Tab activity below the Message Box activity. This closes the tab open in the web browser.
20. Place a Sequence container inside
        the Else field.
21. Drag a Get Text activity inside
          the Sequence container. Inside the activity, click the
              Indicate element inside browser option. Now you can select the desired
            application. The GIF below shows all the steps you need to follow: In the Properties panel, add the
            variable bookFound in the Value field.
22. Drag an If activity below the
            Get Text 'SPAN' activity. Add the expression
              bookFound.ToLower.Trim.Contains(bookName.ToLower.Trim) in the
              Condition field.
23. Drag a Sequence container inside
          the Then field and create the following variable: Variable NameVariable TypeDefault ValuerealNameString
24. Place a Click activity inside the
            Sequence container. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow:
25. Drag another Sequence container
          below the Click 'SPAN' activity, name it Get book Details and
          create the following variables: Variable NameVariable TypeDefault ValuedescriptionGenericValueauthorGenericValuebooksContentStringalreadyExistsBoolean
26. Drag a Get Text activity inside
          the Sequence container. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow: In the Properties panel, add the
            variable realName in the Value field.
27. Place an Assign activity below
          the Get Text 'H1 bookTitle' activity. Add the variable
              realName in the To field. Add the expression
              realName.Replace(":","").Replace("'","").Trim in the Value
            field.
28. Add a Path Exists activity below
          the Assign activity. Select the File option from the
              PathType drop-down list. Add the expression
              Environment.CurrentDirectory+"\"+realName+".jpg" in the Path
            field. In the Properties panel, add the
            variable alreadyExists in the Exists field.
29. Drag another If activity below
          the Path Exists activity. Add the variable
              alreadyExists in the Condition field.
30. Place a Sequence container inside
        the Then field.
31. Drag a Message Box activity
          inside the Sequence container. Add the message "Book already
              added." in the Text field. In the Properties panel, select
            the Ok option from the Buttons drop-down menu.
32. Drag a Close Tab activity below the Message Box activity. This closes the tab opened in the web browser.
33. Place a Sequence container inside
        the Else field.
34. Place another Sequence container
        inside the previous one.
35. Drag a Get Text activity inside
          the Sequence container. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow: In the Properties panel, add the
            variable description in the Value field.
36. Drag a Get Text activity below
          the getDescription activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow: In the Properties panel, add the
            variable author in the Value field.
37. Drag a Click activity below the
            getAuthor activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow: In the Properties panel, select
            the BTN_RIGHT option from the MouseButton drop-down list. This action
            right clicks on the image and a menu is displayed. Add the value 89 in
            the OffsetX field. Add the value 22 in
            the OffsetY field. Select the TopLeft option from
            the Position drop-down list.
38. Drag a Delay activity below the
            Click 'IMG coverImage' activity. In the Properties panel, add the
            value 00:00:02 in the Duration field. This provides a two-second
            delay.
39. Place a new Click activity below
          the Delay activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow:
40. Drag a Type Into activity below
          the Click 'menu item' activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow: In the Properties panel, add the
            expression Environment.CurrentDirectory+"\"+realName+".jpg" in the
              Text field.
41. Place a Click activity below the
            Type Into 'Edit' activity. Inside the activity, click the
              Indicate element inside browser option. Now you can select the book's title.
            The GIF below shows all the steps you need to follow:
42. Drag a Write Text File activity
          underneath the Click 'Button' activity. Add the expression
              realName+".html" in the FileName field. Add the below code in the
                Text field."<html>
  <head>
    <title>"+realName+"</title>
  </head>
  <body>
    <a href='books.html'>BACK</a>
    <h1>"+realName+"</h1>
    <h2>by "+author+"</h2>
      <img href='"+realName+".jpg'>
    <h3>"+description+"</h3>
   </body>
 </html>"
43. Place a Read Text File activity
          below the Write Text File activity. Add the expression
              "books.html" in the FileName field. Add the variable
              booksContent in the Content field.
44. Drag another Write Text File
          activity underneath the Read Text File activity. Add the expression
              "books.html" in the FileName field. Add string
              booksContent.Replace("</body></html>","<h1><a
              href='"+realName+".html'>"+realName+"</h1></body></html>")
            in the Text field.
45. Add a Close Tab activity below the Write Text File activity.
46. Drag an Open Browser activity
          below the Close Tab activity. This opens the newly created .html
          file. Select the IE option from the
              BrowserType drop-down list. Add the expression
              "file:\\\"+Environment.CurrentDirectory+"\books.html" in the
              Url field.
47. Return to the initial If activity
        and add a Sequence container inside the Else field.
48. Drag a Message Box activity
          inside the Sequence container. Add the expression "Book not
              found. Please check the name and try again" in the Text field.
49. Add a Close Tab activity below the Write Text File activity.
50. Run the workflow. The automation process
        requests a book name, searches it on www.goodreads.com, retrieves information about the
        book, creates a basic .html page, and populates it with the retrieved
        information.

Download example
