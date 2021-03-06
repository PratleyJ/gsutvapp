//
//  PositionsVCViewController.swift
//  GSUTV
//
//  Created by Justin Pratley on 8/30/18.
//  Copyright © 2018 Zachary Cox. All rights reserved.
//

import UIKit

class PositionsVCViewController: UIViewController {

    @IBOutlet weak var txtCamera: UILabel!
    @IBAction func stepperCamera(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtCamera.text = String(num)
    }
    
    @IBOutlet weak var txtDirector: UILabel!
    @IBAction func stepperDirector(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtDirector.text = String(num)
    }
    
    @IBOutlet weak var txtProducer: UILabel!
    @IBAction func stepperProducer(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtProducer.text = String(num)
    }
    @IBOutlet weak var txtAudio: UILabel!
    @IBAction func stepperAudio(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtAudio.text = String(num)
    }
    @IBOutlet weak var txtDIT: UILabel!
    @IBAction func stepperDIT(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtDIT.text = String(num)
    }
    @IBOutlet weak var txtPA: UILabel!
    @IBAction func stepperPA(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtPA.text = String(num)
    }
    @IBOutlet weak var txtGrip: UILabel!
    @IBAction func stepperGrip(_ sender: UIStepper) {
        var num = 0
        num = Int(sender.value)
        txtGrip.text = String(num)
    }
    @IBAction func submit(_ sender: UIButton) {
        var count = Int(txtCamera.text!)! + Int(txtPA.text!)! + Int(txtDIT.text!)! + Int(txtGrip.text!)! + Int(txtAudio.text!)! + Int(txtDirector.text!)! + Int(txtProducer.text!)!
        ProdTools().updatePositions(cpositions: -1, newPositions: Int64(count), newCamera: Int64(Int(txtCamera.text!)!), newDirector: Int64(txtDirector.text!)!, newProducer: Int64(txtProducer.text!)!, newAudio: Int64(txtAudio.text!)!, newDit: Int64(txtDIT.text!)!, newPa: Int64(txtPA.text!)!, newGrip: Int64(txtGrip.text!)!)
        performSegue(withIdentifier: "seguePositionsLanding", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
