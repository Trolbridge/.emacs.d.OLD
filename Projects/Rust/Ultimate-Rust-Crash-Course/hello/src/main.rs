fn main() {
    println!("Hello, world!");

    // variables
    // immutatiable default
    // lots of bugs can happen by being able to change a value
    // Safety, Concurrency, Speed
    
    let number = 2;
    let (bunnies, carrots) = (8, 10);
    // number = 16;  ■ cannot assign twice to immutable variable `number`  cannot assign twice to immutable variable 
    
    println!("{}", number);
    println!("{} {}", bunnies, carrots);
    
    let mut my_changing_variable = 16;
    println!("my_changing_variable = {}", my_changing_variable);
    
    my_changing_variable =20;
    println!("my_changing_variable = {}", my_changing_variable);

    // Constants
    // const

    const WARP_FACTOR: f64 = 9.9;

        println!("Aye Aye Captain, {}", WARP_FACTOR);



}
