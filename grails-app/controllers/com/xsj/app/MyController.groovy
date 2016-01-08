package com.xsj.app

import grails.converters.JSON

class MyController {

    def index = {
        chain(action: "test01")
    }

    def test01 = {

    }

    def test02 = {
        println params.data
        render([name: 'xsj'] as JSON)
    }
}
