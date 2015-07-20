'use strict'

angular.module('phonecatFilter', []).
        filter 'checkmark', ->
          (input) -> if input then '\u2713' else '\u2718'
          
       
