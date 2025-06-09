# Using the Where Clause for Filtering Data in
        Workday

# Where does filtering apply?

The List All Records activity in Workday supports queries for the Where
                clause and Include, Exclude fields to bring in or let go of excess
                data.

# How
                to construct the Where clause?

You can read more on the
                    Get_Organizations SOAP service here:Get_Organizations Operation
                Details.

Any content within the Request_Criteria
                section can be considered eligible to be included in the Where
                clause of an activity. Similarly, any content within the
                    Response_Group section can be utilized with the
                    Includes or Excludes elements.You can see this
                in the screenshots below:

For Request_Criteria we can see the
                following parameters:

To create a Where clause with boolean fields, you
                can construct it as shown below:

Where = "boolean_field =
                    'true'"

Where = "Include_Inactive='false' and
                    Enable_Transaction_Log_Lite='true'"

For the Type that is
                    Object, like Organization_TypeObject, this is how a
                    Where clause can be built:

The type
                here can be WID and Organization_Type_ID, so the
                clause needs to be constructed in the following format:

Where =
                    "Organization_Type_Reference.Attribute_type='WID' and
                    Organization_Type_Reference.Attribute_Value='WIDTEST'".

Similarly,
                for Transaction_Log_Criteria you can write a Where clause in
                the following format:

So, the following format must be used:

Where
                =
                    "Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_From='2022-09-05T12:00:00'
                    and
                    Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_Through='2023-01-01T16:00:00'"

If
                you wish to consolidate all the aforementioned elements into a single query, you can
                structure it similar to the following example.

Where

=

"Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_From='2022-09-05T12:00:00'
                and
                Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_Through='2023-01-01T16:00:00'
                and Include_Inactive='false' and Enable_Transaction_Log_Lite='true' and
                Organization_Type_Reference.Attribute_type='WID' and
                Organization_Type_Reference.Attribute_Value='WIDTEST'"

.

Important
                    Information:

1. This is just an illustrative example and may not represent an actual query scenario.
2. The Where clause must always be passed as String.

# Using the Includes and Excludes
                Parameters

The utilization of the Includes and
                    Excludes functions is associated with the
                    Response_Group attribute group, as you can see in the image
                below.

These two functions are used to retrieve or omit data
                elements from the response, allowing you to focus on the specific information you
                need while excluding any unnecessary or sensitive data.

In this case we have
                the data elements Roles_Data, Hierarchy_Data,
                    Supervisory_Data and
                    Staffing_Restrictions_Data.

If you want to include these
                in the activity output, just pass them as a comma-separated string like in the
                following
                    example:

"Roles_Data,Supervisory_Data,Staffing_Restrictions_Data"

Some
                more examples of this practice can be found below:

ObjectSome examples of supported WHERE clausesIncludes (Comma separated values)Excludes (Comma separated values)Employee/WorkersQuery with reference objects:
                                    "Organization_Reference.ID.Attribute_type='WID' and
                                    Organization_Reference.ID.Attribute_Value='WIDTEST" and
                                    Include_Subordinate_Organizations='true'Query with transaction log criteria:"Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_From='2020-09-05T12:00:00'
                                    and
                                    Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_Through='2021-09-05T16:00:00'"
                                    and Include_Subordinate_Organizations='true'"Personal_Information,Additional_Jobs,Employment_Information,Compensation,Organizations,Roles,Management_Chain_Data,Multiple_Managers_in_Management_Chain_Data,Benefit_Enrollments,Benefit_Eligibility,Related_Persons,Qualifications,Employee_Review,Goals,Development_Items,Skills,Photo,Worker_Documents,Transaction_Log_Data,Subevents_for_Corrected_Transaction,Subevents_for_Rescinded_Transaction,Succession_Profile,Talent_Assessment,Employee_Contract_Data,Contracts_for_Terminated_Workers,Collective_Agreement_Data,Probation_Period_Data,Extended_Employee_Contract_Details,Feedback_Received,User_Account,Career,Account_Provisioning,Background_Check_Data,Contingent_Worker_Tax_Authority_Form_Information""Organization_Support_Role_Data,Location_Hierarchies,Cost_Centers,Cost_Center_Hierarchies,Companies,Company_Hierarchies,Matrix_Organizations,Pay_Groups,Regions,Region_Hierarchies,Supervisory_Organizations,Teams,Custom_Organizations,Funds,Fund_Hierarchies,Grants,Grant_Hierarchies,Business_Units,Business_Unit_Hierarchies,Programs,Program_Hierarchies,Gifts,Gift_Hierarchies"Job familiesQuery with inactive job families"Include_InActive_Job_Families='true'""Reference,Job_Profile_Info_Data"NALocationsQuery with reference objectsLocation_Type_Reference.ID.Attribute_type='WID' and
                                    Location_Type_Reference.ID.Attribute_Value='WIDTEST'Query with location nameLocation_Name='HYD'Query with inactive locationsExclude_Inactive_Locations='true'"Reference,Location_Data"NAOrganizations Query with reference objectsOrganization_Type_Reference.ID.Attribute_type=‘WID’ and
                                    Organization_Type_Reference.ID.Attribute_Value=‘WIDTEST’ Query with Inactive organizationsInclude_Inactive='true'Query with transaction log criteria"Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_From='2020-09-05T12:00:00'
                                    and
                                    Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_Through='2021-09-05T16:00:00'" "Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_From='2020-09-05T12:00:00'
                                    and
                                    Transaction_Log_Criteria.Transaction_Date_Range_Data.Updated_Through='2021-09-05T16:00:00'" "Transaction_Log_Criteria.Transaction_Type_References.Transaction_Type_Reference.Attribute_type='WID'
                                    and
                                    Transaction_Log_Criteria.Transaction_Type_References.Transaction_Type_Reference.Attribute_Value='WIDTEST'"Roles_Data,Hierarchy_Data,Supervisory_Data,Staffing_Restrictions_Data"NA
