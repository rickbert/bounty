package net.objectzen.bounty.domain

class Person {

    String name
    String email

    float totalEarned

    static constraints = {
        name blank: false
        email blank: false, email: true

        totalEarned min: 0.0f
    }
}
