angular.module 'app'
    .config ($routeProvider) ->
      $routeProvider
        .when '/',
          templateUrl: '/templates/main'

    .directive 'newEntry', ->
      restrict: 'E'
      templateUrl: 'templates/new-entry'
