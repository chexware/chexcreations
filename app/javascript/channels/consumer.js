import { createConsumer } from "@rails/actioncable"

export default createConsumer()
/*
use this for future channels
import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  // ...
})
*/