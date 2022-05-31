- [First Create a Debug Log with a specified name (TraceFlad Sobject type record)](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_data.htm#cli_reference_force_data_record_create)
ex: 
sfdx force:data:record:create -s DebugLevel -t -v "DeveloperName=From_CLI MasterLabel=From_CLI ApexCode=FINEST ApexProfiling=FINER Callout=DEBUG Database=Debug System=DEBUG Validation=FINE Visualforce=FINEST Workflow=WARN"

or you can do this by going into Salesforce org setup/debug level 

In Terminal run the grep command to see the filtered debug types (-E expression)
sfdx force:apex:log:tail --color | grep -E "SOQL_EXECUTE_BEGIN|SOQL_EXECUTE_END|USER_DEBUG"
please note, while this command is in wait state, then only the filtered logs can be seen 

To specify a particular Color option for different event types.. create a setLogColor.json and then use export command to set the path for param
SFDX_APEX_LOG_COLOR_MAP
ex: export SFDX_APEX_LOG_COLOR_MAP=/Users/sreekanthagorla/Projects/DevTraining/setLogColor.json

- [Get Apex Logs to local](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_apex.htm#cli_reference_force_apex_log_get)
To get multiple debug logs at once (can use relative path or full path )
sfdx force:apex:log:get -d .sfdx/tools/debug/logs -n 10

- [A nice video with a demo](https://www.youtube.com/watch?v=g7Rcj04c0qI&ab_channel=SalesforceDevelopers)

Enter Ctrl+C to exit the debug log mode 

- [Apex Log Analyzer is also a very good tool for debug](https://financialforcedev.github.io/debug-log-analyzer/)
    - [Demo](https://www.youtube.com/watch?v=akL1aEa3lw8)
- [Find and Fix Bugs with Apex Replay Debugger](https://trailhead.salesforce.com/en/content/learn/projects/find-and-fix-bugs-with-apex-replay-debugger)