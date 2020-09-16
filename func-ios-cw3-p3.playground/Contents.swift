import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}

isValidPassword(password: "ASDfgh123456789")

func checkPassword(Password: String) -> String {
    
    if Password.count >= 8 {
        
        return "Password is Valid"
        
    }else{
        return "Password is not valid"
        
    }
    
}

print(checkPassword(Password: "ASD123456789"))
