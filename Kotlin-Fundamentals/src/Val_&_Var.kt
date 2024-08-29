class `Val_&_Var` {
    companion object{
        @JvmStatic
        fun main(args: Array<String>){
            var a = 11
            println("value of a before override is $a")
            a = 5
            println("value of a after override is $a")

            var b = "Ajay"
            println("value of b before override is $b")
            b = "AkvRockzzz"
            println("value of b after override is $b")



            val c = 56
//            c = 10

//            In val ressigined is not allow
            println("Vlaue of c before ressigned is $c")
        }
    }
}