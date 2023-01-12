import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor Dbank {
  stable var currentValue: Float = 300;
  //currentValue := 300;
  Debug.print(debug_show(currentValue));

  stable var startTime = Time.now();
  //startTime := Time.now();
  Debug.print(debug_show(startTime));

  let id = 1212334;

 //Debug.print(debug_show(currentValue));
 // Debug.print(debug_show(id));
 public func withdraw(amount: Float){
  if (currentValue >= amount){
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
  }else{
    Debug.print("That's to much!")
  }
  
 
 };
 public func topUp(amount: Float){
  currentValue += amount;
  Debug.print(debug_show(currentValue));
 }; 
 //topUp();
public query func checkBalance(): async Float{
return currentValue;
};


public func compound(){
  let currentTime = Time.now();
  let elapsedTimeNS = currentTime -startTime;
  let elapsedTimeS = elapsedTimeNS / 1000000000;
  currentValue := currentValue * (1.01 ** Float.fromInt(elapsedTimeS));
  startTime := currentTime;
};







};

