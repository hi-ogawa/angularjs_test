'use strict'

phonecatApp = angular.module 'phonecatApp', [
      'ngRoute'
      'phonecatControllers'
      'phonecatFilter'
    ]

phonecatApp.config ['$routeProvider', ($routeProvider) ->
      $routeProvider.
      when('/phones',
          templateUrl: 'partials/phone-list.html'
          controller:  'PhoneListCtrl'
      ).
      when('/phones/:phoneId',
          templateUrl: 'partials/phone-detail.html'
          controller:  'PhoneDetailCtrl'
      ).
      otherwise
          redirectTo: '/phones'

  ]
