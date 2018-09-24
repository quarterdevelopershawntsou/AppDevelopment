import UIKit

func bmiCalculator(mass : Double, height: Double){
    
    var bmiValue = 0.0
    
    bmiValue = mass / (height*height)
    
    if bmiValue > 25{
        print("Your BMI is \(bmiValue), you're overweight")
    }
    else if bmiValue > 18.5 && bmiValue < 25 {
        print("Your BMI is \(bmiValue), you're normal weight")
    }
    else{
        print("Your BMI is \(bmiValue), you're underweight")
    }
    
}
