class `Triple_&_Pain` {
    companion object{
        @JvmStatic
        fun main(arga : Array<String>){
            println("Learning Traiple and Pair in Kotlin")

            // Pain in Kotlin
            var (a,b) = Pair('A' , 1)
            println("$a $b")

            a = 'B'
            b = 10
            println("$a $b")

            var name = Pair("Ajay" , Pair("Sachin" , Pair("Harshit" , Pair("Deepak" , 4))))
            println("${name.first} & ${name.second.first} & ${name.second.second.first} & ${name.second.second.second.first}")

            // triple in kotlin
            var (x,y,z) = Triple("Ajay" , 24, 0)
            println("Name : $x, Age : $y, Salary : $z")
        }
    }
}