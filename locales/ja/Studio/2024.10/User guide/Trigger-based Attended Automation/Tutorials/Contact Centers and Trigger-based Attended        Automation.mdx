# Contact Centers and Trigger-based Attended
        Automation

This tutorial demonstrates how to work with multiple
                instances of the same form, at the same time. The scenario presented involves a
                contact center agent that operates with multiple customer phone calls coming in at
                the same time. In this scenario, forms and triggers help in displaying information
                about the customer the contact center agent is currently talking to, while being
                able to perform different actions for a customer, such as: change their account
                password, update their licensing plan, or delay their payment.This automation process streamlines the customer service experience by monitoring
                incoming calls and providing contact center agents with all the necessary
                information about the customer. The process retrieves customer data from a Data
                Service entity and displays it in a form, which remains open after the call ends so
                that agents can revisit it and perform additional actions. The process also
                prioritizes customers who have been put on hold for more than 25 seconds, displaying
                a form that prompts agents to either switch to that customer or ignore their call.
                By enabling agents to handle multiple calls simultaneously, this process optimizes
                efficiency and enhances the overall quality of customer service.

PrerequisitesInstall Form.Activities
                        23.4.3Install System.Activities
                        23.4.2Install
                        UIAutomation.Activities 23.4.5

# Sample app

If you want to try out this tutorial with the same
                contact center agent application, you can download the sample app here.

# Sample workflows

To follow the steps and test out the idea yourself, download the sample project here.

![cc_agent_incoming_call=GUID-34DAA6B4-817E-4D7D-AD59-9AA8DBB09A6F=1=en=Default](/images/cc_agent_incoming_call=GUID-34DAA6B4-817E-4D7D-AD59-9AA8DBB09A6F=1=en=Default.png)

The sample project contains the following files:WorkflowTutorialMain.xaml (entry point)Customer Data.uiformon incoming call.xamlon current call.xamlon ignore click.xamlon resume click.xamlToo long to hold.uiformcheck on hold times.xamlon ignore clicked.xamlon switch cliked.xaml

### Step 1: Create the Main workflow

This workflow represents the project’s entry point, and the workflow that starts all
                triggers.

Add a Build Data Table activity, and build a table with the following
                    columns:Caller (String) – to store the customers phone
                            numbers.Since (DateTime) – to store the time when you
                            answer a customer call.Ignore (Boolean) - to record if the customer
                            call was ignored.Store the Data Table inside a global variable named
                    callersAdd a Run Local Triggers activity, to start all the triggers inside the
                    project at the same time.


### Step 2: Create customer data form

Create a form to fetch and display information about the customer that’s calling or
                the customer the contact center agent is talking to (Customer Data)

Create a new Form file from the Studio design ribbon. Name it
                        Customer Data. Add three Label/Header components that hold the name, Id, and payment
                    status of the customer that is calling. Edit them as follows:First Label/Header - Type Loading… in the Content
                            field and set the property name as customerName, in
                            the Property Name field.Second Label/Header - Type Caller ID: in the
                                Content field. Set the property name as
                                callerId, in the Property Name field.Third Label/Header – Type Payment Status: Loading… in the
                                Content field and set the property name as
                                paymentStatus.Add six Button components, that trigger certain action events. For this
                    example, create buttons for the following action events (using the Action
                    dropdown):Change passwordReset 5GService requestUpdate planAddress ChangeDelay payment


### Step 3: Create workflow for incoming call

This workflow represents the scenario when there’s an
            incoming customer call (on incoming call.xaml).

Add an Application Event Trigger for the incoming call app event. Event type – AppearedScheduling mode – SequentialAdd a Use Application/Browser activity to focus on the Contact Center
                    agent app and fetch information about the customer.Add a Get Text activity and indicate the phone number. Save it
                            to a global variable named incomingCaller. Add a Show Form activity to display the Customer Data
                            form using the information that you previously fetched. Set the
                                Instance Name as incomingCaller. In the
                                Arguments collection, pass in the customer’s phone
                            number:For this example, query additional client data from a Data Service entity. Save
                    the queried data inside a local variable named
                    clientData.Add a Set Form Values activity, to add the previously fetched client
                    data to the same Customer Data form instance. For this example, pass
                    arguments for name, invoice number, and payment status. To personalize the form instance, change its title based on the queried client
                    data, at runtime, by adding a Change Form Properties activity.Select Form – Customer DataTitle – clientData.FullName


### Step 4: Create workflow for current call

This workflow represents the scenario when you answer a customer call and you’re currently
        talking to them (on current call.xaml).

Add an Application Event Trigger activity for the current call event.Event type – AppearedScheduling mode – ConcurrentAdd a Use Application/Browser activity to focus on the Contact Center agent app
          and fetch information about the customer.Add a Get Text activity and indicate the phone number. Save it to a global
              variable named caller.Add the customer that is currently on call to the callers global
              variable, where the Data table from the Main workflow
              is stored.Add a Bring Form to Foreground activity to bring the Customer Data
              form to the front, so you can focus on the customer that you’re talking to. Add  a
              global variable named caller as the Instance Name of the
              form.


### Step 5: Create workflow to ignore customer call

This workflow represents the scenario when the contact
            center agent clicks Ignore on an incoming call from a customer (on ignore
            call).

Add a Click Trigger activity for the Ignore button.Mouse button – LeftTrigger mode – DownScheduling mode – ConcurrentAdd a Close Form activity, to close the customer form assigned to the
                    customer, whose call you ignored.


### Step 6: Create workflow to resume customer call

This workflow represents the scenario where the contact center agent resumes the call
      with a customer that was put on hold (on resume click).

Add a Click Trigger activity, for the Resume button.Mouse button – LeftTrigger mode – DownScheduling mode – ConcurrentAdd a Use Application/Browser activity, activity to focus on the Contact Center
          agent app and fetch information about the customer that you resumed the call for.Add a Get Text activity, to fetch the phone number.Add a Bring Form to Foreground activity to bring back to front the assigned
                Customer Data form. Set as the Instance Name the
                caller global variable.


### Step 7: Create form when customer is on hold
    for too long

This workflow represents the scenario where the contact center agent keeps a customer
      on hold for too long (Too long on hold.uiform).

Create a new Form file from the Studio design ribbon. Name it Too long to
            hold. The Form Builder opens in the Designer panel.Add a Label/Header component to display a message for when a customer stays on
          hold for too long. Set the Property Name to message.Add two Button components to allow the contact center agent to switch to the
          customer that was held too much on hold, or ignore the customer call.First Button – set the Label as Switch, and the Action
              to event.Second Button – set the Label as Ignore, and the Action
              to event.Add a Hidden component, and set the Property Name to
            caller. That’s where we’ll show the phone number of the customer that
          stayed on hold for too long.


### Step 8: Create workflow to check Hold
        time

This workflow tracks the time a customer stays on
            hold.

Add a Repeat Trigger activity to constantly check the time customers are
                    on hold. For this example, set the Interval to 5 seconds.Search for the time a customer was on hold in the caller
                    global variable, that you usedto store data about the customer. For this
                    example, if a customer was on hold for more than 25 seconds, then the Too
                        long on hold form appears.


### Step 9: Create workflow for ignoring call on hold

This workflow represents the scenario where the contact center agent clicks
                Ignore in the Too long to hold form.

Add a Form Event Trigger activity, to trigger other activities when the
                        Ignore button is clicked.Select Form – Too long to hold.Event – Ignore clicked.Add a Get Form Values activity, to fetch the phone number of the
                    customer that stayed too long on hold.Add the phone number of the customer that you fetched at step 2, in the
                        callers data table.Add a Close Form activity to close the Too long on hold form
                    after the Ignore button is clicked.


### Step 10: Create workflow for switching to call
        on hold

This workflow represents the scenario when the contact
            center agent clicks Switch in the Too long to hold form.

Add a Form Event Trigger activity, to trigger other activities when the
                        Switch button is clicked.Select Form – Too long on holdEvent – Switch clickedAdd a Get Form Values activity, to fetch the phone number of the
                    customer that stayed too long on hold.Add a Close Form activity, to close the Too long on hold
                    form.Add a Use Application/Browser activity to focus on the contact center
                    agent app and resume the call with the customer from the Too long on hold
                    form.Add an If  activity that:Clicks Resume in the contact center agent app if the
                                    customer on hold is available in the contact center agent app,
                                    using a Click activity.Selects the phone number of the customer you want to switch to,
                                    using a Select Item activity.


### Result

The result of this automation is:Display forms on all customers
                    that are calling the contact center at the same time.Display actionable forms. For
                    example, these could allow the contact center agent to delay a payment or change
                    the address for a specific customer. Display forms based on the
                    customer that's currently on call. This involves bringing to front the form on
                    that specific customer.Keep displaying form files, even
                    if the customers hung up. This prevents the loss of any customer data.To see the behavior of this automation, check out the video below:

