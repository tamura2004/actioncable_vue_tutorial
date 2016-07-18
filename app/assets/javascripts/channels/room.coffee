$ ->
  new Vue
    el: "#messages"
    data:
      messages: []

    created: ->
      @$http.get("/messages.json").then(
        (res)-> @messages = res.data
        (res)-> console.log res
      )

      App.room = App.cable.subscriptions.create "RoomChannel",
        connected: ->
        disconnected: ->
        received: (data) -> @messages.unshift data["message"]
        speak: (message) -> @perform 'speak', message: message

    methods:
      speak: (event)->
        App.room.speak event.target.value
        event.target.value = ""


# $(document).on "keypress", "[data-behavior~=room_speaker]",(event) ->
#   if event.keyCode is 13
#     App.room.speak event.target.value
#     event.target.value = ""
#     event.preventDefault()