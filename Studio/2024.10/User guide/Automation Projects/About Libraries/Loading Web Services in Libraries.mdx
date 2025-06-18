# Loading Web Services in Libraries

Studio can generate activities directly from SOAP or REST web services, or Postman collections through the Service Editor window.

### SOAP and REST Web Services

The window enables you to automatically load all the methods or endpoints in a given web service, be it REST or SOAP, as long as the provided link includes the services' definition - Swagger or WSDL.

Once loaded you select from which endpoints or methods to automatically create activities. All selected items are displayed in the Activities panel, under the Namespace you provided in the Service Editor window.

It is possible to then package these libraries as a .nupkg file and publish it to Orchestrator or to a custom location. As a result, you can easily share your newly-defined activity with other developers that you work with.

SOAP web services are not supported in Windows and cross-platform projects. You can only use this integration in Windows - Legacy projects.


### Importing Namespaces

Studio v2020.4 brings a breaking change in terms of libraries with imported Swagger services. The way in which Studio interprets the .json files from Swagger services has changed, thus generating backward compatibility issues if and only if an existing service is edited from the Edit Service window.

In the following example, we've illustrated the change using the Petstore demo web service.

Prior to Studio v2020.4, after adding the service to a library project, and using “Browse for Types…” context menu, the following namespaces are found under SwaggerPetstore assembly name:

![0b73574-before_20.4=GUID-1D0EB2B3-5B32-4CFE-8DBF-E33582C0DA94=1=en=Default](/images/0b73574-before_20.4=GUID-1D0EB2B3-5B32-4CFE-8DBF-E33582C0DA94=1=en=Default.png)

Drilling down in UiPath.WebClient._ClientNamespace the following types can be found:

![cdfc33f-before_20.4_2=GUID-ECEB3918-7918-476E-B179-F61870EAB6DE=1=en=Default](/images/cdfc33f-before_20.4_2=GUID-ECEB3918-7918-476E-B179-F61870EAB6DE=1=en=Default.png)

Therefore, if AddPet activity had been used in a xaml file from a Studio library, it would have been part of the UiPath.WebClient._ClientNamespace. The _ClientAddPetRequest type was used for generating a request, like in the excerpt below:

xmlns:uw_="clr-namespace:UiPath.WebClient.<em>ClientNamespace;assembly=SwaggerPetstore" 
...
<uw</em>:AddPetActivity BearerToken="{x:Null}" ClientCertificate="{x:Null}" ClientCertificatePassword="{x:Null}" Headers="{x:Null}" OAuth2Token="{x:Null}" Password="{x:Null}" Username="{x:Null}" DisplayName="AddPet" Endpoint="["https://petstore.swagger.io/v2"]" sap:VirtualizedContainerService.HintSize="200,22.4" sap2010:WorkflowViewState.IdRef="AddPetActivity_1" TimeoutMS="30000">
      <uw_:AddPetActivity.Request>
        <uw_:<em>ClientAddPetRequest Body="{x:Null}" />
      </uw</em>:AddPetActivity.Request>
    </uw_:AddPetActivity>
  </Sequence>
</Activity>

Using Studio v2020.4, the following namespace can be found when importing the same web service:

![5b23ffe-20.4=GUID-6D31014C-EF74-4136-A012-A658384108A4=1=en=Default](/images/5b23ffe-20.4=GUID-6D31014C-EF74-4136-A012-A658384108A4=1=en=Default.png)

The following types are found when expanding the UiPath.WebClient.PetClientNamespace:

![8cd37f6-20.4_2=GUID-19DA0EFB-0984-4E46-A02E-37D08B765265=1=en=Default](/images/8cd37f6-20.4_2=GUID-19DA0EFB-0984-4E46-A02E-37D08B765265=1=en=Default.png)

Therefore, if AddPet activity is used in a xaml file from a Studio library created with v2020.4, it is part of the UiPath.WebClient.PetClientNamespace, and the PetClientAddPetRequest type is used for generating a request. These are different namespaces and types as for libraries created with versions prior to v2020.4.

Below is an excerpt of such a library created with v2020.4:

xmlns:uwp="clr-namespace:UiPath.WebClient.PetClientNamespace;assembly=SwaggerPetstore"
...
<uwp:AddPetActivity BearerToken="{x:Null}" ClientCertificate="{x:Null}" ClientCertificatePassword="{x:Null}" Headers="{x:Null}" OAuth2Token="{x:Null}" Password="{x:Null}" Username="{x:Null}" DisplayName="AddPet" Endpoint="["https://petstore.swagger.io/v2"]" sap:VirtualizedContainerService.HintSize="200,22.4" sap2010:WorkflowViewState.IdRef="AddPetActivity_1" TimeoutMS="30000">
      <a href="uwp:AddPetActivity.Request">uwp:AddPetActivity.Request</a>
        <uwp:PetClientAddPetRequest Body="{x:Null}" />
      </uwp:AddPetActivity.Request>
    </uwp:AddPetActivity>
  </Sequence>
</Activity>


### Postman Collections

The Postman application can be used for creating and grouping API definitions into collections, thus organizing and chaining your requests together. Postman supports scripts for passing data between API requests. Check out the Postman online documentation to learn about creating a collection.

If you already have a Postman collection, you can load its requests in Studio, and generate an activity. Maintenance of the collection is done in Postman, and any changes are exerted in your workflow as well.

Studio receives access to a Postman collection through an API key, which must be added to the
                Service Editor window, in the File or Link field. The API key is an
            account-wide key generated from the Postman profile settings > API keys page and not an
            API key generated by sharing a collection. Therefore, modifications to requests are done
            only in Postman and not in Studio as well.

Studio loads all requests defined in the collection, and requests cannot be executed
      individually. Editing and repairing a collection in Studio is done in the same way as for SOAP
      or REST web services.Access to the collection is only supported through the API key.
        Loading a JSON schema file may cause unexpected errors.

# Prerequisites for Postman Collections

* Nodejs and NodeJS CLI, version 6
* Newman version 4.5.5

It is recommended to restart your machine after installing Newman.

# Example with a Postman Collection

The following example uses a Postman collection to get the value of a certain currency and displays it in Studio's Output panel.

In this example, we wrote a test scrip to iterate through the received data. We declared a global variable directly in the script, but this can also be done with the Set a global variable snippet in Postman, read more about this here.

![8481795-postman1=GUID-4DB8146E-6528-48C5-9EE6-83D0103A727F=1=en=Default](/images/8481795-postman1=GUID-4DB8146E-6528-48C5-9EE6-83D0103A727F=1=en=Default.png)

The In argument passed the currency EUR value to an Out argument, visible in the library, in the Properties panel > Input > Collection. The Out argument is visible in the same panel, in the Output section.

![8cd0038-postman=GUID-613700E6-9ADD-4ED7-B260-242E8706C36C=1=en=Default](/images/8cd0038-postman=GUID-613700E6-9ADD-4ED7-B260-242E8706C36C=1=en=Default.png)

Out arguments from the activities are mapped to a variable and its value is written to the Output panel.

You can use an If activity to validate the variable's returned value. In this example, we validated that the value is returned, and then wrote it to the Output panel.

