object HopeInHealthcare {

  def main(args: Array[String]): Unit = {
    //Initialize an array of patient records
    val patientRecords = new Array[Patient](1000)
   
    //Loop through each record to fill out patient information
    for(i <- 0 until 1000){
      patientRecords(i) = new Patient(i)
    }

    //Create an array of doctor objects
    val doctorList = new Array[Doctor](10)
    for (i <- 0 until 10){
      doctorList(i) = new Doctor(i)
    }

    //Assign patients to doctors
    assignPatientsToDoctors(patientRecords, doctorList)

    //Administer treatments for each patient
    administerTreatments(patientRecords)

    //Print out results
    printResults(patientRecords)

  }

  def assignPatientsToDoctors(patientRecords: Array[Patient], doctorList: Array[Doctor]): Unit = {
    var doctorIndex = 0
   
    //Loop through each patient record
    for(i <- patientRecords.indices){
      //Assign patient to doctor
      patientRecords(i).assignDoctor(doctorList(doctorIndex))
     
      //Increment doctorIndex
      doctorIndex += 1
     
      //If the doctorIndex is equal to 10, wrap around to 0
      if(doctorIndex == 10){
        doctorIndex = 0
      }
    }
  }

  def administerTreatments(patientRecords: Array[Patient]): Unit = {
    //Loop through each patient record
    for(i <- patientRecords.indices){
      //Administer treatments to patient
      patientRecords(i).administerTreatments()
    }
  }

  def printResults(patientRecords: Array[Patient]): Unit = {
    //Loop through each patient record
    for(i <- patientRecords.indices) {
      //Print out patient information
      println("Patient #" + patientRecords(i).getId + ":")
       
      //Print out their assigned doctor
      println("Assigned Doctor: " + patientRecords(i).getDoctor().getName())
      
      //Print out the number of treatments they received
      println("Treatments administered: " + patientRecords(i).getTreatmentCount())
    }
  }

}

//Patient class
class Patient(id: Int){
  var treatmentCount = 0
  private var doctor: Doctor = _
 
  def getId(): Int = {
    id
  }
 
  def assignDoctor(doctor: Doctor): Unit = {
    this.doctor = doctor
  }
 
  def getDoctor(): Doctor = {
    doctor
  }
 
  def administerTreatments(): Unit = {
    treatmentCount += 1
  }
 
  def getTreatmentCount(): Int = {
    treatmentCount
  }
}

//Doctor class
class Doctor(id: Int){
  private val name: String = "Dr. " + id
 
  def getName(): String = {
    name
  }
}