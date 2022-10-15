<template>
    <div>
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Messenger</h1>
                <div class="row">
                    <div class=" col-md-12">
                        <div class="modal-content chat-box">
                            <div class="modal-header">
                                <h5 class="modal-title">Chat With <strong>{{friend.name}}</strong></h5>
                            </div>
                            <div class="modal-body d-flex justify-content-center">

                                <div id="messages"
                                    class="messages bg-dark p-3 border border-light shadow shadow-md rounded-3 m-4"
                                    style="height:15rem;width:70%;overflow-y:auto;">


                                    <template v-for="(message , index) in messages" :key="index">

                                        <MyMessage v-if="message.from == auth.id" :message="message.message">
                                        </MyMessage>

                                        <Message v-else :message="message.message"></Message>

                                    </template>

                                </div>

                            </div>

                            <div class="modal-footer justify-content-between">

                                <textarea style="height:15px;width:80%;" v-model="messageToSent" id="message"
                                    maxlength="1000" min="1" class="form-control" placeholder="Type.." @keyup.enter="send()"></textarea>

                                <button class="btn btn-primary" id="send"  @click.prevent="send()">Send</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </main>

    </div>
</template>

<script>
    import {
        io
    } from "https://cdn.socket.io/4.4.1/socket.io.esm.min.js";
    const socket = io.connect("http://127.0.0.1:3000");


    export default {

        props: ['friend', 'auth'],
        data: function () {
            return {
                messageToSent: '',
                messages: []
            }
        },
        methods: {

            async getMessages() {
                await axios.post("/api/messages", {
                        friend: this.friend,
                        user: this.auth
                    })
                    .then(res => {
                        this.messages = res.data.messages
                    }).catch(err => {
                        console.log("failed to get messages")
                        console.log(err)
                    })
            },

            async send() {

                if(this.messageToSent != ''){

                socket.emit("message", this.messageToSent)

                await axios.post("/api/message", {
                        to: this.friend.id,
                        message: this.messageToSent
                    })
                    .then(res => {
                        this.messageToSent = ''
                    }).catch(err => {
                        console.log("failed to send message")
                        document.write(err.response.data)
                        console.log(err.response.data)

                    })
            }else{
                alert("empty message!")
            }

            }
        },
        created() {


        },
        mounted() {
            this.getMessages();

            socket.on("message", function (m) {
                console.log(m)

                this.messages.push({
                    message: m,
                    to: 1,
                    from: 3
                })

            }.bind(this));
        },
        updated() {
            const chat = document.getElementById("messages");

            chat.scrollTop = chat.scrollHeight - chat.clientHeight;

        },

    }

</script>

<style>

</style>
