angular.module 'app'
  .factory 'Guitars', ->
    guitars = []

    addGuitar: (guitar) ->
      guitars.push guitar
    getGuitars: ->
      guitars
    getOneGuitar: (guitar) ->
      guitars.filter (val) ->
        val.name is guitar.name
