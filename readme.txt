* JMeter-based load tests

** How to run jmeter test
   - Open user.properties file (this is default settings)
   - Write copy of this file to target folder
     > cp user.properties/target/040420-2357/config.properties
   - Make any changes if needed in this copy
   - Run test
     > powershell ./run.ps1 Demo.jmx target/040420_1/config.properties 
