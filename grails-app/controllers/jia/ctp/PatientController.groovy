package jia.ctp

import grails.converters.JSON

class PatientController {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [search : ['POST']]


    PatientService patientService

    /**
     * Restful Search for patient
     *
     * @param e
     * @return
     */
    def search(PatientSearchCommand e){
        PatientSearchResponse p = patientService.findPatientByPatientId(e.patientId)
        if(p == null){
            response.sendError(404)
        }
        else{
            withFormat {
                json {
                    render p as JSON
                }
            }
        }
    }
}
