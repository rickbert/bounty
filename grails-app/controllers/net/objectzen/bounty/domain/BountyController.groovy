package net.objectzen.bounty.domain

import org.joda.time.LocalDateTime

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BountyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Bounty.list(params), model:[bountyInstanceCount: Bounty.count()]
    }

    def show(Bounty bountyInstance) {
        respond bountyInstance
    }

    def create() {
        respond new Bounty(params)
    }

    @Transactional
    def save(Bounty bountyInstance) {
        if (bountyInstance == null) {
            notFound()
            return
        }

        if (!bountyInstance.dateCreated) {
            bountyInstance.dateCreated = new LocalDateTime()
            bountyInstance.validate()
        }

        if (bountyInstance.hasErrors()) {
            respond bountyInstance.errors, view:'create'
            return
        }

        bountyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bounty.label', default: 'Bounty'), bountyInstance.id])
                redirect bountyInstance
            }
            '*' { respond bountyInstance, [status: CREATED] }
        }
    }

    def edit(Bounty bountyInstance) {
        respond bountyInstance
    }

    @Transactional
    def update(Bounty bountyInstance) {
        if (bountyInstance == null) {
            notFound()
            return
        }

        if (bountyInstance.hasErrors()) {
            respond bountyInstance.errors, view:'edit'
            return
        }

        bountyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Bounty.label', default: 'Bounty'), bountyInstance.id])
                redirect bountyInstance
            }
            '*'{ respond bountyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Bounty bountyInstance) {

        if (bountyInstance == null) {
            notFound()
            return
        }

        bountyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Bounty.label', default: 'Bounty'), bountyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bounty.label', default: 'Bounty'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
