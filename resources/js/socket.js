const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server , {
    cors : {
        origin : "*",
        credentials : false
    }
});


io.on('connection', (socket) => {

    socket.on("message" , function(message){
        io.emit("message", message)
    })
});

server.listen(3000, () => {
  console.log('listening on *:3000');
});
