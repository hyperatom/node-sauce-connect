Java = require 'java'
File = require 'fs'
Util = require 'util'

args = process.argv[2..]
console.log "Starting SauceConnect.jar w/ args = #{JSON.stringify(args)}"

Java.classpath.push(File.realpathSync("#{__dirname}/../ext/Sauce-Connect.jar"))
Java.callStaticMethod 'com.saucelabs.sauceconnect.SauceConnect', 'main', Java.newArray('java.lang.String', args), (err, results) ->
  # This will never run (the Java code must be calling process.exit())
  console.log "Done.", err, results
