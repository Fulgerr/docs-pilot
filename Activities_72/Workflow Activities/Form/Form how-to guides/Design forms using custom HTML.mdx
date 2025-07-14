# Design forms using custom HTML

Instead of creating forms with uiform files that
			you build in Studio, you can create custom forms, using HTML files that you upload
			inside your project. This tutorial demonstartes how to create and display a simple form
			using an HTML file. This form displays a short message, two buttons, and the live date
			and time when the user interacts with the form.You can apply these steps to create custom HTML callout files,
			too.

To build custom HTML forms that allow you to get and set
			form values, as well as trigger form events, you need to use specific UiPath APIs. The
			sample below contains three UiPath-specific APIs that you should integrate in your
			custom HTML forms:getValue: function
						(elementId) - allows you to retrieve form values.setValue: function
						(elementId, value) - allows you to set form values.sendMessage: function
						(id, value) - allows you to trigger a form event, such as
						Closed. Inside the Form trigger
						activity, whatever form event that you create using this API, can be
					accessed only as a Form message event.Add the sample APIs below in your custom HTML form
			files:<script type="text/javascript">
	var uiPathApi = {
		getValue: function (elementId) {
			// this is a callback, being called from the workflow
			// enter your own code to get element values
			var el = document.getElementById(elementId);
			if (el.value == undefined) {
				return el.innerHTML;
			} else {
				if (el.checked == undefined) {
					return el.value;
				} else {
					return el.checked;
				}
			}
		},

		setValue: function (elementId, value) {
			// this is a callback, being called from the workflow
			// enter your own code to set element values
			var el = document.getElementById(elementId);
			if (el.value == undefined) {
				el.innerHTML = value;
			} else {
				if (el.checked == undefined) {
					el.value = value;
				} else {
					el.checked = value;
				}
			}
		},

		// Call this to trigger a "Form Message" event
		// This function is set by the forms engine after the page loads,
		// but declaring it here as empty helps with code autocompletion
		sendMessage: function (id, value) { },
	};
</script>

Check out the result of this tutorial in the video
					below:

Workflow exampleTo follow the steps and try out the tutorial yourself, check out the sample project
					here.

### APIs for HTML forms and callouts

The table below outlines the UiPath-specific APIs that can be used when building custom
            HTML forms and callouts. These APIs can be used as standalone inside HTML forms,
            generating the resize of a form, or they can be used as messages to send back into
            Studio, so your trigger workflows can continue executing. These APIs are written as
            JavaScript.

# Forms and Callouts

The table below shows the APIs that you can use when building both forms and callouts
                in HTML.  The APIs can act as event listeners and trigger a callback function
                    e, that you can later use to access other properties of the
                form or callout, such as height, width, or top. Also you can test other properties
                by pressing inspect on the form and then writing the properties directly in the
                console.

You can also use APIs to get and set form values, and trigger form events.

APIDescriptionJavaScript exampleuiPath.form.isVisibleCheck whether the form is currently visible on the screen. It
                                returns a boolean value indicating whether the form is visible or
                                hidden.if (uiPath.form.isVisible === true){
    console.log("The form is visible");
} else {
    console.log("The form is not visible");
}uiPathApi.form.addEventListener("visibilityChanged", (e)
                                    => {})Set up an event listener to detect changes in the visibility
                                status of a form. When the visibility of the form changes, the
                                specified callback function is executed. This provides an
                                opportunity to perform actions or updates in response to the form
                                becoming visible or hidden. The e parameter in the
                                callback function represents the event, and you can access its
                                properties to determine the new visibility status, such as
                                    e.detail. uiPathApi.form.addEventListener("visibilityChanged", (e) => {
                    console.log("form visibility changed triggered: " + e.detail);
                });uiPathApi.form.addEventListener("locationChanged", (e) =>
                                    {})Set up an event listener that responds to changes in the position
                                of a form. When the form's location changes, the provided callback
                                function is executed. Inside the callback function, you have access
                                to the e parameter, which represents the event.
                                This event object contains information about the change in location,
                                such as the new left (e.detail.left) and top
                                coordinates (e.detail.top) of the form.uiPathApi.form.addEventListener("locationChanged", (e) => {
                    window.formLocationChangedArg = e.detail.left + " " + e.detail.top;
                    window.formLocationChangedCount++;
                    console.log("form location changed triggered: " + window.formLocationChangedArg);
                });getValue: function (elementId)Allows you to retrieve form values.getValue: function (elementId) {
                if (elementId == 'getArray') {
                    return [1, 2, 3];
                }setValue: function (elementId, value)Allows you to set form values.setValue: function (elementId, value) {
                // execute this to throw in case the form element does not exist
                $("#" + elementId).val().toString();
                $("#" + elementId).val(value);
            },sendMessage: function (id, value)Allows you to trigger a form event, such as Closed. Inside
                                the Form trigger activity, whatever form event
                                that you create using this API, can be accessed only as a Form
                                    message event.sendMessage: function (id, value) { }

# Callouts

The table below shows the APIs that you can use when building callouts in HTML. These
                APIs allow you to extract details about the target element that the callout binds
                to. The APIs act as event listeners and trigger a callback function
                    e, that you can later use to access other properties of the
                target, such as height, width, top. Also you can test other properties by pressing
                inspect on the callout and then writing the properties directly in the console.

APIDescriptionJavaScript exampleuiPathApi.target.visibileCheck whether the target element associated with a callout is
                                currently visible on the screen. It returns a boolean value
                                indicating whether the element is visible or hidden.if (uiPath.target.isVisible === true){
    console.log("The target is visible");
} else {
    console.log("The target is not visible");
}uiPathApi.target.addEventListener("visibilityChanged",
                                    (e) => {})Set up an event listener for changes in the visibility of the
                                target element. When the element's visibility changes, the specified
                                callback function  is executed. You can then get the details about
                                the visibility of the target using the callback function, and
                                configure a counter to track how many times did the visibility of
                                the target change.uiPathApi.target.addEventListener("visibilityChanged", (e) => {
                    console.log("target visibility changed triggered: " + e.detail);
                    window.targetVisibilityChangedArg = e.detail;
                    window.targetVisibilityChangedCount++;
                });uiPathApi.target.addEventListener("locationChanged", (e)
                                    => {})Set up an event listener that responds to changes in the position
                                (left or top) of the target element. When the element's position
                                changes, the provided callback function is executed. You can then
                                get the details about the current location of the target using the
                                callback function and configure a counter for it so you know how
                                many times did the location change.  uiPathApi.target.addEventListener("locationChanged", (e) => {
                    window.targetLocationChangedArg = e.detail.left + " " + e.detail.top;
                    window.targetLocationChangedCount++;
                    console.log("target location changed triggered: " + window.targetLocationChangedArg);
                });uiPathApi.target.addEventListener("sizeChanged", (e) =>
                                    {})Set up an event listener to detect changes in the size (width or
                                height) of the target element. When the element's size changes, the
                                specified callback function is executed. You can then get the width
                                and height of the target element and configure a counter to track
                                how many times did the size of the target change. uiPathApi.target.addEventListener("sizeChanged", (e) => {
                    window.targetSizeChangedArg = e.detail.width + " " + e.detail.height;
                    window.targetSizeChangedCount++;
                    console.log("target size changed triggered: " + window.targetSizeChangedArg);


### Creating the HTML form file

This part of the tutorial shows how to design a custom
            HTML form file, using the UiPath APIs.

Create an HTML file, and give the form a title, using the
                        <title> tag.For example, <title>My HTML
                    Form</title>Apply some styling to the form, based on your use case. For this example, CSS styling is applied, using the <style
                        type="text/css"> tag. After you apply styling, add the UiPath APIs as JavaScript inside your HTML
                    file, as follows:<script type="text/javascript">
			var uiPathApi = {
                getValue: function (elementId) {
                    // this is a callback, being called from the workflow
                    // enter your own code to get element values
                    var el = document.getElementById(elementId);
                    if (el.value == undefined) {
                        return el.innerHTML;
                    } else {
                        if (el.checked == undefined) {
                            return el.value;
                        } else {
                            return el.checked;
                        }
                    }
                },
        
                setValue: function (elementId, value) {
                    // this is a callback, being called from the workflow
                    // enter your own code to set element values
                    var el = document.getElementById(elementId);
                    if (el.value == undefined) {
                        el.innerHTML = value;
                    } else {
                        if (el.checked == undefined) {
                            el.value = value;
                        } else {
                            el.checked = value;
                        }
                    }
                },
        
                // Call this to trigger a "Form Message" event
                // This function is set by the forms engine after the page loads,
                // but declaring it here as empty helps with code autocompletion
                sendMessage: function (id, value) { },
			};
	</script>Create a form event for each button, using
                        uipathAPI.sendMessage, inside a
                        <script> tag.For this example, create an event for when the OK button is
                    clicked:function okClicked() {
			uiPathApi.sendMessage("ok clicked");
		}And then create an event for when the Cancel button is
                    clicked:function cancelClicked() {
			uiPathApi.sendMessage("cancel clicked");
		}Start building the form by adding components.Add the title of the form inside a <div> tag.For this example, use the following
                    title:<div>Welcome to UiPath! Click OK to continue or Cancel to close this automation.</div>Add the Button components and define the events that they trigger,
                    similarly to how you would configure a Button component inside the
                        Form Builder. For this example, add the following buttons and the corresponding
                    events:<div class="actions">
		<button class="confirm" onclick="okClicked()">OK</button>
		<button class="cancel" onclick="cancelClicked()">Cancel</button>
	</div>Add the live date and time at the bottom of the form, using an argument named
                    as time. <div class="bottom">Current date/time is <span id="time">N/A</span></div>

After you finish designing your HTML file, start building
            your project in Studio using this file.


### Building the project in Studio

This part of the tutorial shows how to create the Studio
            project to display the HTML form file that you previously created.

Add the HTML file you created inside the project.For this example, the form.html file is inside the welcome
                    folder of the project.In the Main file add the following activities:Show Form - select the uploaded HTML form file from the dropdown
                            list.Run Local Triggers - to start the triggers you'll create for the
                            button events.Create a trigger workflow that displays the live date and time inside the form
                        (tick.xaml).Add a Repeat trigger activity, to make sure that the date and
                            time updates every other second. For this, set the Interval as
                                00h 00m 01.000s.Add a Set Form Values activity to bind the data to the form.
                            When you created the HTML form file, at step 8, you configured to
                            display the date and time using an argument named time.
                            Add this argument in the Arguments collection, using the same
                            name:KeyTypeValuetimeStringDateTime.Now.ToString()Create a trigger workflow for the event when the OK button is clicked
                        (on ok clicked.xaml).Add a Form trigger activity. Select the HTML file you uploaded
                            from the Select Form dropdown. Choose Form messageas the
                            event, because any event configured inside an HTML form, is represented
                            in Studio as a Form message event. In the Message ID type
                            the message you created for the okClicked() function to
                            send. Add a Disable Local Trigger activity to stop sending data about
                            the live date and time to the form. Choose the tick.xaml file as
                            the TriggerId.Add a Close Form activity, and select the HTML file, so you can
                            close the form after the OK button was clicked.Create a trigger workflow for the event when the Cancel button is
                    clicked (on cancel clicked.xaml).Add a Form trigger activity. Select the HTML file you uploaded
                            from the Select Form dropdown. Choose Form messageas the
                            event, because any event configured inside an HTML form, is represented
                            in Studio as a Form message event. In the Message ID type
                            the message you created for the cancelClicked()
                            function to send.Add a Disable Local Trigger activity to stop sending data about
                            the live date and time to the form. Choose the tick.xaml file as
                            the TriggerId.Add a Close Form activity, and select the HTML file, so you can
                            close the form after the Cancel button was clicked.Aditionally, you can add a Stop Local Triggers activity, so you
                            can stop the entire automation.

