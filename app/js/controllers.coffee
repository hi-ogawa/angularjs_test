'use strict'

phonecatControllers = angular.module 'phonecatControllers', []

phonecatControllers.controller 'PhoneListCtrl', ['$scope', 'Phone', ($scope, Phone) ->
    $scope.phones = Phone.query()
    # $http.get('phones/phones.json').success (data) ->
    #   $scope.phones = data
    $scope.orderProp = 'age'
  ]


phonecatControllers.controller 'PhoneDetailCtrl', ['$scope', '$http', '$routeParams',
    ($scope, $http, $routeParams) ->
       $http.get("phones/#{$routeParams.phoneId}.json").success (data) ->
         $scope.phone = data
         $scope.mainImageUrl = data.images[0]

       $scope.setImage = (imageUrl) ->
         $scope.mainImageUrl = imageUrl
  ]
