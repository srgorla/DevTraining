# Salesforce Developer Training
- [Developer Taining Agenda](https://github.com/srgorla/DevTraining/blob/master/DevTrainingAgenda.txt)
- [Training Videos](https://onedrive.live.com/?authkey=%21AMLuYPs5TIoDagQ&id=D44A140F275D720D%213624&cid=D44A140F275D720D)
request access (if doesnt work)
- [Training Class source code](https://github.com/srgorla/DevTraining)


## Introduction
- [Tools and Developer Expectations](https://github.com/srgorla/DevTraining/blob/master/Developer%20Training%20Team.xlsx)
- [Required DevTools Installation (VS Code, Salesforce CLI, JDK setup and path settings in VS Code )](https://developer.salesforce.com/tools/vscode/en/getting-started/install)
- [Sign up for free Developer Edition Org](https://developer.salesforce.com/signup)



## Good resources 
- [Developer Blogs](https://developer.salesforce.com/blogs)
- [Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_dev_guide.htm)
- [Apex Reference Guide](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_ref_guide.htm)
- [Apex Recipes](https://github.com/trailheadapps/apex-recipes)
- [TrailMix](https://trailhead.salesforce.com/en/users/bgong0630/trailmixes/dex-450-trailhead-home-work)
- [Prepare for Your Salesforce Platform Developer I Credential](https://trailhead.salesforce.com/en/users/strailhead/trailmixes/prepare-for-your-salesforce-platform-developer-i-credential)
- [Connect Api - Send chatter messages, notifications etc](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/connectAPI_overview.htm)


## Day 1
- VS Code Tour 
- Install Salesforce Extension Pack
- Authenticate Org from VS Code
- Retrieve Source from Org
- Deploy Source to Org
- SOQL query Editor in VS Code
- Autocomplete in IDE
- Apex Data types
- System.debug()
- Apex Overivew
- Anonymous Apex
- Apex Class
- Invoking Apex
- Governor Limits

- Home work
    - [Quickstart - Apex](https://trailhead.salesforce.com/en/content/learn/projects/quickstart-apex)
    - [Apex Basics & Database](https://trailhead.salesforce.com/en/content/learn/modules/apex_database?trail_id=force_com_dev_beginner)
    - [Apply .NET Skills to Salesforce](https://trailhead.salesforce.com/en/content/learn/trails/microsoft_dotnet)

## Day 2 
- [Apex Data types](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_datatypes_variables_intro.htm)
- [Primitives](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_primitives.htm)
    - Date, Time, DateTime, Boolean, Integer, String
- [sObjects](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_SObjects.htm)
- Typecasting
- [Apex Collections](https://developer.salesforce.com/docs/atlas.en-us.238.0.apexcode.meta/apexcode/langCon_apex_collections.htm)
    - List, Set, Map
- [github](https://github.com)
- [git](https://git-scm.com)
- [Salesforce CLI](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
- [Commit 1](https://github.com/srgorla/DevTraining/commit/02fbebbd2b02722779d5ab2f33dac9083c9c79ee)
- [Commit 2](https://github.com/srgorla/DevTraining/commit/fdc9345615e44ead7ad4719a29603dd39f764bd3)
- Home work
    - [Apex Basics for Admins](https://trailhead.salesforce.com/en/content/learn/modules/apex-basics-for-admins?trail_id=build-apex-coding-skills)
    - [Object-Oriented Programming for Admins](https://trailhead.salesforce.com/en/content/learn/modules/object-oriented-programming-for-admins?trail_id=build-apex-coding-skills)
    - [Use Apex to Automate Business Processes](https://trailhead.salesforce.com/en/content/learn/projects/use-apex-to-automate-business-processes?trail_id=build-apex-coding-skills)


## Day 3 
- [Apex Triggers](https://developer.salesforce.com/docs/atlas.en-us.238.0.apexcode.meta/apexcode/apex_triggers.htm)
- [Trigger Syntax](https://developer.salesforce.com/docs/atlas.en-us.238.0.apexcode.meta/apexcode/apex_triggers_syntax.htm)
- [Trigger Context Variables](https://developer.salesforce.com/docs/atlas.en-us.238.0.apexcode.meta/apexcode/apex_triggers_context_variables.htm)
- Apex Service Class 
- [Apex Replay Debugger](https://developer.salesforce.com/tools/vscode/en/apex/replay-debugger)
    - [Other helpful Debug instructions](https://github.com/srgorla/DevTraining/blob/master/ApexDebug.md)
- [Trigger Best practices](https://developer.salesforce.com/docs/atlas.en-us.238.0.apexcode.meta/apexcode/apex_triggers_bestpract.htm)
- [Commit](https://github.com/srgorla/DevTraining/commit/c3be1a86f27ef08d75f40ea9f6829a1d9667c7b3)
- Home work
    - [Apex Triggers](https://trailhead.salesforce.com/en/content/learn/modules/apex_triggers)
    - [Replay Debugger](https://trailhead.salesforce.com/en/content/learn/projects/find-and-fix-bugs-with-apex-replay-debugger)
## Day 4 
- Apex Triggers (Focus on After triggers)
- [Using Maps and Sets in Bulk Triggers](https://developer.salesforce.com/docs/atlas.en-us.224.0.apexcode.meta/apexcode/apex_triggers_bulk_idioms.htm)
- [Bulkification](https://developer.salesforce.com/docs/atlas.en-us.224.0.apexcode.meta/apexcode/apex_triggers_bestpract.htm)
- Tool Intorduction
    - [Salesforce Inspector](https://chrome.google.com/webstore/detail/salesforce-inspector/aodjmnfhjibkcdimpodiifdjnnncaafh?hl=en)
- [Writing Apex Unit Tests](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing.htm)
    - Use Test Factory for Unit Test data creation
    - use testSetup for better performace
    - Code Coverage
    - Debug test failures
    - Test.start(), Test.stopTest() 
        - to get around too many SOQL queries, 
        - get around too many DML statements,
        - to get around Mixed DML error
        - to retrieve asynchronous execution results
- [Commit](https://github.com/srgorla/DevTraining/commit/c64e12a0e6b468c5f9ae2707ea648b860d853bba)
- Homework
    - [Apex Testing](https://trailhead.salesforce.com/en/content/learn/modules/apex_testing)
## Day 5 
- [Asynchrounous Apex](https://developer.salesforce.com/docs/atlas.en-us.224.0.apexcode.meta/apexcode/apex_async_overview.htm)
    - [Future methods](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_invoking_future_methods.htm)
    - [Batch Apex](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_batch.htm)
    - [Apex Scheduler](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_scheduler.htm)
    - [Queueable Apex](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_queueing_jobs.htm)
- [Commit](https://github.com/srgorla/DevTraining/commit/03fbb0527063774993d5cdf04eabcaa5121714cc)
- Homework
    - [Asynchrounous Apex](https://trailhead.salesforce.com/en/content/learn/modules/asynchronous_apex)
## Day 6 
- Integration with external systems
  - Postman
    - [Postman Collections for Salesforce Apis](https://www.postman.com/salesforce-developers/workspace/salesforce-developers/collection/12721794-67cb9baa-e0da-4986-957e-88d8734647e2?ctx=documentation)
  - Inbound
    - [Connected Apps](https://developer.salesforce.com/docs/atlas.en-us.securityImplGuide.meta/securityImplGuide/connected_apps.htm)
    - [Authentication (OAuth 2.0)](https://help.salesforce.com/s/articleView?id=sf.remoteaccess_oauth_flows.htm&type=5)
  - Outbound
    - [Callouts](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_callouts.htm)
    - [Remote Site Settings](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_callouts_remote_site_settings.htm)
    - [Named Credentials](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_callouts_named_credentials.htm)
    - Streaming Events 
        - [Platform Events](https://developer.salesforce.com/docs/atlas.en-us.platform_events.meta/platform_events/platform_events_intro.htm)
        - [Changes Data Capture (CDC)](https://developer.salesforce.com/docs/atlas.en-us.change_data_capture.meta/change_data_capture/cdc_intro.htm)
        - [Push Topic](https://developer.salesforce.com/docs/atlas.en-us.api_streaming.meta/api_streaming/working_with_pushtopics.htm)
    - [Outbound messages](https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/sforce_api_om_outboundmessaging_understanding.htm) 
- [Custom Settings](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_customsettings.htm)
- [Custome metadata types](https://help.salesforce.com/s/articleView?id=sf.custommetadatatypes_overview.htm&type=5)
- Homework
    - [Apex Integration Services](https://trailhead.salesforce.com/en/content/learn/modules/apex_integration_services)
 


## Final Project 
- [Apex Specialist Super badge](https://trailhead.salesforce.com/en/content/learn/superbadges/superbadge_apex)




# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
