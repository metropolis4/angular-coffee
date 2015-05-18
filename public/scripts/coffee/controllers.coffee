angular.module 'app'
  .controller 'MainController',
  [
    '$scope',
    '$modal',
    'Guitars',
    ($scope, $modal, Guitars) ->

      $scope.title = 'Guitars'

      $scope.guitars = Guitars.getGuitars()

      $scope.newGuitar = {}
      $scope.addNewGuitar = ->
        Guitars.addGuitar $scope.newGuitar
        $scope.newGuitar = {}

      $scope.editGuitar = ->
        modalInstance = $modal
          .open
            templateUrl: '/edit'
            controller: 'EditGuitarController'
            resolve:
              guitarToEdit: ->
                this.guitar

]

  .controller 'EditGuitarController',
  [
    '$scope',
    '$modalInstance',
    'Guitars',
    'guitarToEdit'
    ($scope, $modalInstance, Guitars, guitarToEdit) ->

      $scope.cancel = ->
        $modalInstance.dismiss 'cancel'

      $scope.toEdit = guitarToEdit
  ]
