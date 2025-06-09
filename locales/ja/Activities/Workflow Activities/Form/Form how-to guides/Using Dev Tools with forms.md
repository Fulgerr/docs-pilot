# Using Dev Tools with forms

You can experiment with your forms look or layout using
            Dev Tools. Whenever you run a form, if you right-click it, and then select
                Inspect, Dev Tools opens. This tutorial shows how to experiment with CSS
            styles in Dev Tools. This example shows how to change the color of all Text Field
            titles inside a Data Grid.The changes that you apply in Dev
                Tools are temporary. If you want to permanently apply them to the form, you have to
                input your custom CSS code inside the Custom CSS property field of the form,
                and then apply it for each component that you want to style, using the Custom CSS
                    Class property of a component.

Run a form that has a Data Grid with Text Field components inside
                    of it.Right-click inside the form, and then select Inspect.To focus on the exact element that you want to apply CSS styles to, select
                        , or press Ctrl + Shift + C. Now
                    you can select the title of the Text Field component.In the Styles section of Dev Tools, you can see various CSS classes. For
                    this example, find the .table class and change the
                        color property to violet.Now let's permanently apply this color to the Data Grid. In the
                        Properties panel of the form, input the following CSS class inside
                    the Custom CSS field:.color-change {
    color: violet
    }Edit a Text Field inside your form, and go to the Display
                    tab.In the Custom CSS Class input the custom CSS class you added at step
                    five.Save the component and check out the results.
