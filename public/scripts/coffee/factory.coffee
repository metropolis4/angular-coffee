angular.module 'app'
  .factory 'Guitars', ->
    guitars = []

    addGuitar: (guitar) ->
      guitars.push guitar
    getGuitars: ->
      guitars
    saveChanges: (original, edited) ->
      guitarToEdit = guitars.filter (val) ->
        val is original
      for key in guitarToEdit
        guitarToEdit = key
      index = guitars.indexOf(guitarToEdit)
      guitars[index] = edited
