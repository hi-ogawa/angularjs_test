'use strict'

phonecatApp = angular.module('phonecatApp', [])

phonecatApp.controller 'PhoneListCtrl', ($scope, $http) ->
    # http://stackoverflow.com/questions/9029481/defining-an-array-of-anonymous-objects-in-coffeescript
    # $scope.phones = [
    #     'name':    'Nexus S'
    #     'snippet': 'Fast just got faster with Nexus S.'
    #     'age':     1
    #    ,
    #     'name':    'Motorola XOOM™ with Wi-Fi',
    #     'snippet': 'The Next, Next Generation tablet.'
    #     'age':     2
    #    ,
    #     'name':    'MOTOROLA XOOM™',
    #     'snippet': 'The Next, Next Generation tablet.'
    #     'age':     3
    # ]

    $http.get('phones/phones.json').success (data) ->
      $scope.phones = data

    $scope.orderProp = 'age'

