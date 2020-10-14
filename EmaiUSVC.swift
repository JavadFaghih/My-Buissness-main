//
//  EmaiUSVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/17/1399 AP.
//

import UIKit
import MessageUI


class EmaiUSVC: UIViewController, MFMailComposeViewControllerDelegate, UITextViewDelegate {

    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var meesageField: UITextView!
    @IBOutlet weak var sendBtn: UIButtonExt!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.endEditing(true)
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
        
        scroller.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 400, right: 0)
        
        meesageField.delegate = self
        
       // sendBtn.removeFromSuperview()
     //   nameTextfield.inputAccessoryView = sendBtn
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
            
        } else {
            return true
        }
    }
    
    @IBAction func dissmissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
        
    }
    
    
    
    override func viewWillLayoutSubviews() {
      
        self.scroller.frame = view.bounds
        self.scroller.contentSize.height = 400
        self.scroller.contentSize.width = 0
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextfield.resignFirstResponder()
        return true
    }
    
    @IBAction func sendBtnwaspressed(_ sender: Any) {
        
        let emailtitle = "from" + emailTextField.text!
        let to = "javad.4145@gmail.com"
        let message = "name:" + nameTextfield.text! + "\n email: " + emailTextField.text! + "\n phone number: " + phoneTextField.text!  + "\nmessage:" + meesageField.text!
        
        
        if MFMailComposeViewController.canSendMail() {
            
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([to])
            mail.setSubject(emailtitle)
            mail.setMessageBody(message, isHTML: false)
            present(mail, animated: true, completion: nil)
        } else {
            print("Cannot send mail")
            // give feedback to the user
        }

        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
                switch result.rawValue {
                case MFMailComposeResult.cancelled.rawValue:
                    print("Cancelled")
                case MFMailComposeResult.saved.rawValue:
                    print("Saved")
                case MFMailComposeResult.sent.rawValue:
                    print("Sent")
                case MFMailComposeResult.failed.rawValue:
                    print("Error: \(String(describing: error?.localizedDescription))")
                default:
                    break
                }
                controller.dismiss(animated: true, completion: nil)
            }
    }
    
   
    
    
}

func text (text: UITextView) -> Bool {
    
    
    return false
    
}

