import './bootstrap';

import { createApp } from 'vue/dist/vue.esm-bundler'

import Messenger from './Components/Messenger.vue'
import Message from './Components/Message.vue'
import MyMessage from './Components/MyMessage.vue'
/*
const socket = io().connect("http://127.0.0.1:3000");
*/

const app = createApp()

app.component("chat" , Messenger)
app.component("Message" , Message)
app.component("MyMessage" , MyMessage)


app.mount("#app")
