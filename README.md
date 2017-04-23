# Big-Data Platform

This project is complete end to end big data project, that aims to show how to implement different big data layers, from the infrastructure layer to the end use one.

It is structured as follow : 
* `Engineering : `  contains applications and notebooks 
    * `Notebooks :` explorations and PoC
    * `Applications :` PoC, MVPs and production ready
* `Platform : `  contains scripts, docker images and applicaiton for platform management
    * `Infrastructure : ` Scripts for platform installation, patch setup, and tools deployment.
    * `Inventories : ` platform hosts and credentials, and ansible inventories
    * `Managmeent : ` Platform management scripts (services control, platform initialization...)
    * `Services : ` Platform applications for data ingestion, integration, and egress. or specific application configuration and tunning 
The source code uses : 
* `docker : ` to create and run on the fly a iso-prod environments, servers and applications
* `ansible` and ` Bash scripts : ` to automate applications deployment and platform configuration, but also to interact and execute others scripts (hive, sqoop, pig, spark-submit)
* `sqoop :`  to ingest and egress data from and to Relational data bases
* `spark :`  as a distributed computation framework
* `hadoop :`  as a complete data-lake and analytics eco-system
* `java` and `scala :`  as the main projects languages
* `Hive`, `Impala : ` 
* `Pig : `
* `Kafka : `

**Todo :**

* Code Cleaning and Refactoring according to JIRA 19282 case
* Project Structure change according to JIRA 19287 case
* move command_prompt from .sh bash files to ansible
* automate patchs and features deployment

