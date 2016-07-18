$ ->
  Vue.config.devtools = true
  App.vue = new Vue
    el: "#messages"
    data:
      messages: []

    created: ->
      @$http.get("/messages.json").then(
        (res)-> @messages = res.data
        (res)-> console.log res
      )

    methods:
      speak: (event)->
        App.room.speak event.target.value
        event.target.value = ""

  App.room = App.cable.subscriptions.create "RoomChannel",
    connected: ->
    disconnected: ->
    received: (data) -> App.vue.messages.unshift data["message"]
    speak: (message) -> @perform 'speak', message: message

