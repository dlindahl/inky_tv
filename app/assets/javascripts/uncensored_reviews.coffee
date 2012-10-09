#= require network_executive/collection_player

win = @

class ReviewPlayer extends NE.CollectionPlayer
  constructor : ->
    super()

    @bodyEl     = document.getElementById( 'body' )
    @authorEl   = document.getElementById( 'author' )
    @locationEl = document.getElementById( 'location' )

  getItems : (e) ->
    e.detail.data.items

  renderItem : (item) ->
    @bodyEl.innerHTML     = item.body
    @authorEl.innerHTML   = item.author
    @locationEl.innerHTML = item.location

new ReviewPlayer()