fun main(){
    val kb = KotlinBasicOops()
    println("The Integer is: " + kb.someInt)
    println("The sum of a & b : ${kb.Add(5,7)}")
}


class KotlinBasicOops {
    var someInt = 10

    fun Add(a: Int, b:Int) : Int{
        return a+b
    }
}

//Here are three concise points on classes and objects in Kotlin:
//
//1. **Class Definition**: In Kotlin, a class is defined using the `class` keyword followed by the class name. Classes are blueprints for creating objects, encapsulating data (properties) and behavior (methods).
//
//2. **Object Creation**: Objects are instances of classes, created using the `ClassName()` syntax. Unlike Java, Kotlin doesn’t require the `new` keyword for object creation.
//
//3. **Companion Object**: Kotlin uses `companion object` to define members that belong to the class itself rather than to instances, similar to static members in Java.