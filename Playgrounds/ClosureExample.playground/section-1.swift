// Playground - Closure Example

import UIKit


let unsortedArray = [45,765,948,1,43,3,7,122,982,2]

// Vamos a usar una funcion llamada "sorted" que es propia de Swift
// sorted(array_to_sort, closure_to_compare)


let sortedArray = sorted(unsortedArray, { (first : Int, second : Int) -> Bool in
  return first > second
  }
)


