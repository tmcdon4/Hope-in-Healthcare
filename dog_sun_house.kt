fun main(args: Array<String>) {

    // LINE 1
    var healthCareHope: String = "We are optimistic about the impact of healthcare."

    // LINE 2
    val healthBenefits: List<String> = listOf("Access to quality care", "Advanced treatments", "Prevention of medical issues")

    // LINE 3
    fun getHealthCareHope() : String {
        return healthCareHope
    }

    // LINE 4
    fun getHealthBenefits(): List<String> {
        return healthBenefits
    }

    // LINE 5
    fun printHealthCareHope() {
        println(getHealthCareHope())
    }

    // LINE 6
    fun printHealthBenefits() {
        println("Health benefits include:")
        for (benefit in getHealthBenefits()) {
            println("- " + benefit)
        }
    }

    // LINE 7
    fun createAwareness() {
        println("Let's create awareness of the importance of healthcare.")
    }

    // LINE 8
    fun spreadHope() {
        println("Let's spread hope through healthcare.")
    }

    // LINE 9
    printHealthCareHope()

    // LINE 10
    printHealthBenefits()

    // LINE 11
    createAwareness()

    // LINE 12
    spreadHope()

}