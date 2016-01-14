package com.xsj.app

class Book {

    String title
    String lang
    double price

    static mapping = {
        version(false)
    }

    static constraints = {
        title(blank: false, nullable: false)
        lang(blank: false, nullable: false)
        price(nullable: false)
    }
}
