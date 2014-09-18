package net.objectzen.bounty.domain

class Person {

    String name
    String nickname
    String email

    float totalEarned

    static constraints = {
        name blank: false
        nickname blank: false
        email blank: false, email: true

        totalEarned min: 0.0f
    }
}
