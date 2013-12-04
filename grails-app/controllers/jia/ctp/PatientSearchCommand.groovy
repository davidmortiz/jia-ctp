package jia.ctp

import grails.validation.Validateable

@Validateable
class PatientSearchCommand {
    String patientId;


    static constraints = {
        patientId blank: false

    }


}
