class Statement {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            println("Learning Condition Statement:")
            var num = 11
            var msg = ""
            msg = if(num > 100) "No. is greater" else "No. is smaller"
            println(msg)

            var time = 22
            if(time < 10) println("Good Evening")
            else if(time < 20) println("Good Day")
            else println("Good Evening")


//            if you have when conditon then its better us use when condition insted of if else condition
//            when (num){
//                1 ->{
//
//                }
//                100 -> {
//
//                }
//            }
//
//            when {
//                num < 100 ->{
//
//                }
//                num > 100 -> {
//
//                }
//                num == 10 -> {
//
//                }
//            }
        }
    }
}