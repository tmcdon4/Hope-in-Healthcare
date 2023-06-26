package main 

import "fmt"

func main() { 
	//Print a message to raise hope in healthcare 
	fmt.Println("Healthcare can be improved with the right attitude and dedication!") 

	// Create a variable to track the number of healthcare workers
	var healthcareWorkers uint = 0

	// Add 1 healthcare worker every 1000 lines
	for i := 0; i < 2000; i++ {
		if (i%1000) == 0 {
			healthcareWorkers++
		}
		// Print message every 100 lines to show improvements in healthcare
		if (i%100) == 0 {
			fmt.Printf("We now have %d healthcare workers!\n", healthcareWorkers)
		}
		// Simulate work in healthcare
		fmt.Println("Providing healthcare to patients")
	}
}