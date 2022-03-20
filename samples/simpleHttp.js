var http = require('http'); // 1 - Import Node.js core module

var server = http.createServer(function (req, res) {   // 2 - creating server

    if (req.url == '/') { //check the URL of the current request
        // set response header
        res.writeHead(200, { 'Content-Type': 'text/html' }); 
        // set response content    
        res.write('<html><body><p>This is home Page.</p></body></html>');
        res.end();
    }
    else if (req.url == "/hello") {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.write('<html><body><p>Hello World.</p></body></html>');
        res.end();
    }
    else if (req.url == '/data') { //check the URL of the current request
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.write(JSON.stringify({ message: "Hello World"}));  
        res.end();  
    }        
});

server.listen(5000); //3 - listen for any incoming requests

console.log('Node.js web server at port 5000 is running with end points "/", "/hello" and "/data".')