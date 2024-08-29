class For_Loop {
    companion object {
        @JvmStatic
        fun main(args : Array<String>){
            println("Learning For and For each loop")
            var num = 0
            for(i in 0..10){
                println("Number : ${num++}")
            }

            println("Second Pattern to n-1")
            var num1 = 0
            for(i in 0 until 10){
                println("Number : ${num1++}")
            }

            println("Decrement")
            for(i in 10 downTo 0){
                println("Number : ${num1--}")
            }

            println("Increment by step")
            for(i in 0 .. 10 step 3){
                println("Number : $i")
            }

            println("Print Through array using for each loop")
            val cars = arrayOf("Volvo", "BMW", "Maruti", "Mahindra")
            for(i in cars){
                println(i)
            }
        }
    }
}