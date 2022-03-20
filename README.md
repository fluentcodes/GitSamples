# GitSamples Topic Branch: NodeJS Web Examples
We have here a [simpleHttp.js](samples/simpleHttps.js) script. It offers the endpoints 
* /: string response
* /hello: hello string response
* /data: json response

## Run
When running 
     node samples/simpleHttps.js

one can curl the endpoints with localhost:5000

    curl http://localhost:5000/

resulting 

    <html><body><p>This is home Page.</p></body></html>

The endpoint hello

    curl http://localhost:5000/hello

will return

    <html><body><p>Hello World.</p></body></html>

and 

    curl http://localhost:5000/data

will return

    {"message":"Hello World"}


## Links
* https://www.tutorialsteacher.com/nodejs/create-nodejs-web-server
* https://stackoverflow.com/questions/5178334/folder-structure-for-a-node-js-project
