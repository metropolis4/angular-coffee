// Generated by CoffeeScript 1.9.2
(function() {
  angular.module('app').controller('MainController', [
    '$scope', '$modal', 'Guitars', function($scope, $modal, Guitars) {
      $scope.title = 'Guitars';
      $scope.guitars = Guitars.getGuitars();
      $scope.newGuitar = {};
      $scope.addNewGuitar = function() {
        Guitars.addGuitar($scope.newGuitar);
        return $scope.newGuitar = {};
      };
      return $scope.editGuitar = function() {
        var modalInstance;
        return modalInstance = $modal.open({
          templateUrl: '/edit',
          controller: 'EditGuitarController',
          resolve: {
            guitarToEdit: function() {
              return this.guitar;
            }
          }
        });
      };
    }
  ]).controller('EditGuitarController', [
    '$scope', '$modalInstance', 'Guitars', 'guitarToEdit', function($scope, $modalInstance, Guitars, guitarToEdit) {
      $scope.cancel = function() {
        return $modalInstance.dismiss('cancel');
      };
      return $scope.toEdit = guitarToEdit;
    }
  ]);

}).call(this);
