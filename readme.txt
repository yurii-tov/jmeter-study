* JMeter-based load tests

** How to run jmeter test
   - Make a copy of desired .properties file
     > cp demo.properties /target/demo/config.properties
   - Customize settings
   - Run test
     > powershell ./run.ps1 src/jmeter/tests/Demo.jmx target/demo/config.properties
