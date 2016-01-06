package com.xsj.app

class Book {

    String title
    String name
    double price

    static mapping = {
        version(false)
    }

    static constraints = {
        title(blank: false, nullable: false)
        name(blank: false, nullable: false)
        price(nullable: false)
    }
}
