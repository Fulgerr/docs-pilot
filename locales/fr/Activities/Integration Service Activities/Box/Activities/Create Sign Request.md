# Create Sign Request

# Description

Creates a sign request for a document. The document must be set up using a Box Sign template before signatures, dates, etc., can be collected.

How it works

To create a sign request via API, the documents used in the process must have template tags. Template tags are a way in which you add data to a base document that Box Sign automatically recognizes.

To learn how to create templates using tags, see the official Box documentation.

The Create Sign Request activity only works with documents that have template tags.

# Untitled Section

text="Type the content"

# Configuration

* 
* Signer emails - The email address of all the people that need to sign the document, with the option to add the order. The first signer must be set as 0.Template tags are assigned in the order in which the email addresses are added to the Signer Emails field. This is not the same as the order of signing. If there are more tags on the document than actual signers, those tags aren't populated. If you add more signers than tags, the extra signers can sign the document, but are not directed to the locations in the document. They can add text, dates, and signatures wherever they want in the document.
* File to sign - Select the file for which the signing request is created. Click the icon to browse your Box folders. This field supports IResource type input.
* Destination folder - Select the folder where the signed document will be stored. Click the icon to browse your Box folders. This field supports IResource type input.
* Template - Select the template from the drop-down list or enter a custom template ID.
* Email subject - The subject of the sign request email. This field supports String type input.
* Email message - The message to include in the sign request email. This field supports String type input.
* Reminders - If set, signers receive reminders to sign a document on day 3, 8, 13, and 18. Reminders are sent to any outstanding signers. Boolean value.







* Days valid - The number of days after which the quest will automatically expire if not completed. This field supports Int32 type input.



* Sign request ID - The output ID of the sign request. Automatically generated output variable.
