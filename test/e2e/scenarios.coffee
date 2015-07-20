'use strict'

describe 'PhoneCat App', ->
  describe 'Phone list view', ->

    beforeEach -> browser.get 'app/index.html'

    it 'should filter the phone list as a user types into the search box', ->

      phoneList = element.all(By.repeater('phone in phones'))
      query = element(By.model('query'))

      expect(phoneList.count()).toBe 3

      query.sendKeys 'nexus'
      expect(phoneList.count()).toBe 1

      query.clear()
      query.sendKeys 'motorola'
      expect(phoneList.count()).toBe 2

    it 'should be possible to controle the order of phones via select box', ->

      
