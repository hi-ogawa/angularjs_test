'use strict'

describe 'PhoneCat controllers', ->

  describe 'PhoneListCtrl', ->

    beforeEach module('phonecatApp')

    scope = null
    ctrl  = null
    beforeEach inject ($controller) ->
      scope = {}
      ctrl = $controller 'PhoneListCtrl', {$scope:scope}

    it 'should create "phones" model with 3 phones', ->
          expect(scope.phones.length).toBe 3

    it 'should set the default value of orderProp model as "age"', ->
          expect(scope.phones.length).toBe 3
