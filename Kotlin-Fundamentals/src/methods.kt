class methods {
    companion object {
        @JvmStatic
        fun main(args : Array<String>){
            println("Learning Methods")
            println("The sum is ${add(5,6)}")
            println("The sum is ${add(5,6, 4)}")
        }

        fun add(a : Int, b : Int) : Int {
            return a + b
        }

        fun add(a : Int, b : Int, c : Int) : Int {
            return a + b + c
        }
    }
}