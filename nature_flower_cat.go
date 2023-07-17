// HopeInHealthcare.go

package main

// Imports
import (
	"fmt"
	"time"
	"math/rand"
	"net/http"
	"encoding/json"
	"github.com/gorilla/mux"
)

// Structs
type patientInfo struct {
	ID       string `json:"id"`
	Name     string `json:"name"`
	Age      int    `json:"age"`
	Disease  string `json:"disease"`
	Treatment string `json:"treatment"`
	Status   string `json:"status"`
}

// Global Variables
var patients []patientInfo

// Seed Data
func seedData() {
	
	// Seed Data
	patients = []patientInfo{
		{
			ID:	"1",
			Name:	"John",
			Age:	30,
			Disease:	"Diabetes",
			Treatment:	"Insulin",
			Status:	"Alive",
		},
		{
			ID:	"2",
			Name:	"Jane",
			Age:	50,
			Disease:	"Cancer",
			Treatment:	"Chemotherapy",
			Status:	"Alive",
		},
	}
}

// Random Patient Generators
func randomPatientGenerator() patientInfo {
	rand.Seed(time.Now().Unix())
	
	// Variables
	minAge := 19
	maxAge := 90
	nameLength := 6
	diseaseLength := 7
	treatmentLength := 10

	// Generate Patient
	randomPatient := patientInfo {
		ID: fmt.Sprintf("%v", rand.Intn(200)),
		Name: fmt.Sprintf("%s", generateRandomString(nameLength)),
		Age: generateRandomNumber(minAge, maxAge),
		Disease: fmt.Sprintf("%s", generateRandomString(diseaseLength)),
		Treatment: fmt.Sprintf("%s", generateRandomString(treatmentLength)),
		Status: "Alive",
	}
	
	return randomPatient
}

func generateRandomString(length int) string {
	var letters = []rune("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
	b := make([]rune, length)
	for i := range b {
		b[i] = letters[rand.Intn(len(letters))]
	}
	return string(b)
}

func generateRandomNumber(min, max int) int {
	r := rand.Intn(max - min) + min
	return r
}

// Routes
func getPatients(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(patients)
}

func getPatient(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	params := mux.Vars(r) // Get params
	
	// Loop through patients and find with ID
	for _, item := range patients {
		if item.ID == params["id"] {
			json.NewEncoder(w).Encode(item)
			return
		}
	}

	json.NewEncoder(w).Encode(&patientInfo{})
}

func createPatient(w http.ResponseWriter, r *http.Request) {

	// Get Body 
	var patient patientInfo
	_ = json.NewDecoder(r.Body).Decode(&patient)

	// Add patient
	patients = append(patients, patient)

	json.NewEncoder(w).Encode(patient)
}

func updatePatient(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	params := mux.Vars(r) // Get params
	
	// Loop through patients and find with ID
	for index, item := range patients {
		if item.ID == params["id"] {

			// Get body and decode
			_ = json.NewDecoder(r.Body).Decode(&patients[index])

			// Respond
			json.NewEncoder(w).Encode(patients[index])
			return
		}
	}

	json.NewEncoder(w).Encode(&patientInfo{})
}

func deletePatient(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	params := mux.Vars(r) // Get params
	
	// Loop through patients and find with ID
	for index, item := range patients {
		if item.ID == params["id"] {
			
			// Remove patient
			patients = append(patients[:index], patients[index+1:]...)

			// Respond
			json.NewEncoder(w).Encode(item)
			return
		}
	}

	json.NewEncoder(w).Encode(&patientInfo{})
}

// Main function
func main() {

	// Seed Data
	seedData()

	// Create router
	router := mux.NewRouter()

	// Initialize patient array
	patients = []patientInfo{}

	// Router Handlers
	router.HandleFunc("/patients", getPatients).Methods("GET")
	router.HandleFunc("/patient/{id}", getPatient).Methods("GET")
	router.HandleFunc("/patient", createPatient).Methods("POST")
	router.HandleFunc("/patient/{id}", updatePatient).Methods("PUT")
	router.HandleFunc("/patient/{id}", deletePatient).Methods("DELETE")

	// Serve
	fmt.Println("Server running...")
	http.ListenAndServe(":8000", router)
}