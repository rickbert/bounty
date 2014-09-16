package net.objectzen.bounty.domain

import org.joda.time.LocalDateTime

class Bounty {

    String name
    String description

    float value

    Person submitter
    Person resolver

    LocalDateTime dateCreated
    LocalDateTime dateResolved

    static constraints = {
        name blank: false
        description nullable: true

        value min: 0.0f

        submitter nullable: false
        resolver nullable: true

        dateCreated nullable: false
        dateResolved nullable: true
    }
}
