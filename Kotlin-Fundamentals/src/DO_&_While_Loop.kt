class `DO_&_While_Loop` {
    companion object {
        @JvmStatic
        fun main(args : Array<String>){
            println("Learning Do & While Loop")

            var num = 10
            while(num <= 20){
                println("Number is : ${num++}")
            }

            var num1 = 21;
            do {
                println("num is : ${num++}")
            }while(num < 30)
        }
    }
}