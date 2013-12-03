package jia.ctp

import grails.transaction.Transactional

@Transactional
class PatientService {

    def findPatientByPatientId(String patientId) {

        new PatientSearchResponse(patiendId: patientId, patientName: "Test Patient Name", patientBirthdate: new Date())

    }
}
