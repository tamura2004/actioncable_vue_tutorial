$ ->
  csrfheader = headers: "X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content

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

      remove: (id) ->
        App.room.remove id
        @destroy id

      create: (message)-> @messages.unshift message
      destroy: (id)-> @messages = @messages.filter (m) -> id isnt m.id

  App.room = App.cable.subscriptions.create "RoomChannel",
    connected: ->
    disconnected: ->
    received: (data) ->
      switch data["action"]
        when "create" then App.vue.create data["message"]
        when "delete" then App.vue.destroy data["id"]

    speak: (message) -> @perform 'speak', message: message
    remove: (id) -> @perform "remove", id: id

