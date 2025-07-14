# Asynchronous conversion

Applications: Google Speech-to-Text, Microsoft OneDrive, Google Cloud PlatformDescription: Convert an audio file to text using Google Speech-to-Text.

# Workflow

Let's say the audio file you want to convert is uploaded to a Microsoft
                    OneDrive & SharePoint folder. Therefore, you can start your process with a
                        File Created trigger.You can retrieve files
                            from any source, such as Google Drive, Box, Dropbox etc. Next, use a Google Cloud Platform Get Bucket activity. This retrieves the details for the bucket where you can then upload the audio file.Add a Google Cloud Platform Upload Object from File activity to upload the audio file (retrieved from the trigger's output) to the bucket.Next, add a Get Object activity. You now use the Bucket and Object name fields to construct the Google Cloud Storage URI which you'll use in the following activity.This URI should start with gs://.Add a  activity.This activity outputs a Job ID which you will use in a later step.Add a Do While activity and set the following condition: Status<>"success" (i.e., status is not "success").Inside the Do While, add a Delay activity to regularly check if the job has been performed successfully, or failed, or is pending. Add a Get Conversion Status by Job ID and input the job ID you retrieved from the output of . Because you are using a ten-second delay, this means every ten seconds Studio checks the job status.Add a Write Line activity to register the status from Get Conversion Status by Job ID. Once the status is received as "success", the workflow moves on to the next step.Add a  activity and input the same job ID retrieved from the output of .Add a Write Line to output the text retrieved using .This example shows how the status changes and the text is retrieved using Write Line.
