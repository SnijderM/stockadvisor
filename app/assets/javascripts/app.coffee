stockadvisor = angular.module('stockadvisor',[
  'templates',
  'ngRoute',
  'controllers',
])

stockadvisor.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'stockController'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("stockController", [ '$scope',
  ($scope)->
])