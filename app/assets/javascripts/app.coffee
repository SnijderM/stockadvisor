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

instruments = [
  {
    id:1
    name: 'AIR FRANCE KLM'
  },
  {
    id:2
    name: 'AEGON'
  },
  {
    id:3
    name: 'ING'
  },
  {
    id:4
    name: 'NN GROUP'
  },
]

controllers = angular.module('controllers',[])
controllers.controller("stockController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.instruments = instruments.filter (instrument)-> instrument.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.instruments = []
])