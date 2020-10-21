//
//  LoginViewController.swift
//  Building Instagram
//
//  Created by Surendra Pandey on 10/15/20.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    // @IBOutlet weak var usernameField: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) {
             (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                
            }
            else {
                print("Error: \(error?.localizedDescription)")
            }
            
        }
    }
    
    
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
          user.username = usernameField.text
          user.password = passwordField.text
       //   passwordField.isSecureTextEntry = true
          
          user.signUpInBackground { (success, error) in
              if success {
                  self.performSegue(withIdentifier: "loginSegue", sender: nil)
                  
              }
              else {
                  print("Error: \(error?.localizedDescription)")
              }
         }
    }
    //@IBOutlet weak var passwordField: UITextField!
    
    //@IBAction func onSignup(_ sender: Any)
    //{
      //  let user = PFUser()
        //user.username = usernameField.text
        //user.password = passwordField.text
        //passwordField.isSecureTextEntry = true
        
        //user.signUpInBackground { (success, error) in
            //if success {
              //  self.performSegue(withIdentifier: "loginSegue", sender: nil)
                
            //}
            //else {
          //      print("Error: \(error?.localizedDescription)")
        //    }
      //  }
        
    //}
   // @IBAction func onSignIn(_ sender: Any)
    //{
        
   // }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}