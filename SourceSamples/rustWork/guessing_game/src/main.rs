use std::{io, cmp::Ordering};
use rand::Rng;

fn main() {

    let secret_number = rand::thread_rng().gen_range(1..=100);
    println!("Your secret number is {secret_number}");
    let mut guess= String::new();

    println!("\nGuess a number between 1 and 100!\n");
    println!("Please input your guess:");

    //io::stdin() .read_line(&mut guess) .expect("Failed to read line!!!");
    match io::stdin().read_line(&mut guess) {
        Ok(n) => {
            println!("with {n} bytes number read is {guess}");
        }
        Err(error) => println!("error: {error}"),
    }
    // create a shadow guess that is an integer
    let guess: i32 = guess.trim().parse().expect("PPlease input your guess:");

    match guess.cmp(&secret_number) {
        Ordering::Less => println!("Your guess is too low"),
        Ordering::Equal => println!("Your guess is correct! :)"),
        Ordering::Greater => println!("Your guess is too high"),
    }
    }
