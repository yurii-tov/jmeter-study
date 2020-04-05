* JMeter-based load tests

** How to run jmeter test
   - Open user.properties file (this is default settings)
   - Write copy of this file to target folder
     > cp user.properties/target/demo/config.properties
   - Make any changes if needed in this copy
   - Run test
     > powershell ./run.ps1 src/jmeter/tests/Demo.jmx target/demo/config.properties 
