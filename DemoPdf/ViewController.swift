//
//  ViewController.swift
//  DemoPdf
//
//  Created by Mac on 12/16/16.
//  Copyright © 2016 Sumit Jagdev. All rights reserved.
//

import UIKit
import SJ_PDFCreator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SJ_PDF_Creator.writeText(text: "Rendering Dynamic PDF", bold: true, alignment: .center, fontSize: 20, textColor: UIColor.red)
        
        let dataDict = NSMutableDictionary()
        dataDict.setObject("Sumit_Jagdev", forKey: "User Name" as NSCopying)
        dataDict.setObject("Sumit", forKey: "First Name" as NSCopying)
        dataDict.setObject("Jagdev", forKey: "Last Name" as NSCopying)
        dataDict.setObject("sumitjagdev12@gmail.com", forKey: "E-Mail" as NSCopying)
        dataDict.setObject("+91 5656565656", forKey: "Contact Number" as NSCopying)
        dataDict.setObject("India", forKey: "Address" as NSCopying)
        
        SJ_PDF_Creator.writeKeyValueData(dataDict: dataDict)
        SJ_PDF_Creator.drawLine(lineColor: UIColor.blue)
        
        let paramDict = NSMutableDictionary()
        paramDict.setValue("Sumit_Jagdev", forKey: "User Name", atIndex: 0)
        paramDict.setValue("Sumit", forKey: "First Name", atIndex: 1)
        paramDict.setValue("Jagdev", forKey: "Last Name", atIndex: 2)
        paramDict.setValue("sumitjagdev12@gmail.com", forKey: "E-Mail", atIndex: 3)
        paramDict.setValue("+91 5656565656", forKey: "Contact Number", atIndex: 4)
        paramDict.setValue("India", forKey: "Address", atIndex: 5)
        
        
        SJ_PDF_Creator.writeOrderedKeyValueData(dataDict: paramDict)
        
        SJ_PDF_Creator.drawLine(lineColor: UIColor.black)
        SJ_PDF_Creator.drawLine(lineColor: UIColor.green)
        
        
        self.drawDummyText()
        
        var dataArray : [NSDictionary] = []
        for i in 0...10 {
            let paramDict = NSMutableDictionary()
            paramDict.setObject("User_\(i)", forKey: "User ID" as NSCopying)
            paramDict.setObject("Customer_\(i)", forKey: "Customer ID" as NSCopying)
            paramDict.setObject("Booking_\(i)", forKey: "Booking ID" as NSCopying)
            dataArray.append(paramDict)
        }
        
        SJ_PDF_Creator.writeTableData(dataArray: dataArray)
        SJ_PDF_Creator.writeImage(imageName: "iOS10.jpg", type: nil, width: 200, height: 300, alignment: .left)
        SJ_PDF_Creator.writeImage(imageName: "iOS10a.jpg", type: nil, width: 200, height: 300, alignment: .center)
        SJ_PDF_Creator.writeImage(imageName: "iOS", type: "png", width: 200, height: 300, alignment: .right)
        
        
        dataArray = []
        for i in 0...10 {
            let paramDict = NSMutableDictionary()
            paramDict.setObject("_\(i)", forKey: "S.No." as NSCopying)
            paramDict.setObject("Item_\(i)", forKey: "Item Name" as NSCopying)
            
            //  Make a variable equal to a random number....
            let randomNum:UInt32 = arc4random_uniform(100) // range is 0 to 99
            
            paramDict.setObject("\(randomNum)", forKey: "Price" as NSCopying)
            dataArray.append(paramDict)
        }
        
        SJ_PDF_Creator.writeTableData(dataArray: dataArray, addTotal: true, keyForTotal: "Price")
        
        SJ_PDF_Creator.exportWithFileName(fileName: "SJ_DemoPDF") { (isSuccess, error, pdfURL) in
            if isSuccess == true && pdfURL != nil {
                let req = NSURLRequest(url: pdfURL as! URL)
                let webView = UIWebView(frame: self.view.frame)
                webView.loadRequest(req as URLRequest)
                self.view.addSubview(webView)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func drawDummyText() {
        SJ_PDF_Creator.writeText(text: "1: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 10, textColor: UIColor.blue)
        
        
        SJ_PDF_Creator.writeText(text: "2: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 15, textColor: UIColor.gray)
        
        
        SJ_PDF_Creator.writeText(text: "3: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 20, textColor: UIColor.black)
        
        SJ_PDF_Creator.writeText(text: "4: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 10, textColor: UIColor.purple)
        
        SJ_PDF_Creator.writeText(text: "5: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 12, textColor: UIColor.darkGray)
        
        SJ_PDF_Creator.writeText(text: "6: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 15, textColor: UIColor.black)
        
        SJ_PDF_Creator.writeText(text: "7: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 20, textColor: UIColor.purple)
        
        SJ_PDF_Creator.writeText(text: "8: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 14, textColor: UIColor.darkGray)
        
        
        SJ_PDF_Creator.writeText(text: "9: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 11, textColor: UIColor.black)
        
        SJ_PDF_Creator.writeText(text: "10: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 20, textColor: UIColor.purple)
        
        SJ_PDF_Creator.writeText(text: "11: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 14, textColor: UIColor.darkGray)
        
        
        SJ_PDF_Creator.writeText(text: "12: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 11, textColor: UIColor.black)
        
        SJ_PDF_Creator.writeText(text: "13: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 21, textColor: UIColor.purple)
        
        SJ_PDF_Creator.writeText(text: "14: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 14, textColor: UIColor.darkGray)
        
        SJ_PDF_Creator.writeText(text: "15: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 11, textColor: UIColor.black)
        
        SJ_PDF_Creator.writeText(text: "16: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 12, textColor: UIColor.purple)
        
        SJ_PDF_Creator.writeText(text: "17: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 14, textColor: UIColor.darkGray)
        
        
        SJ_PDF_Creator.writeText(text: "18: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 10, textColor: UIColor.black)
        
        SJ_PDF_Creator.writeText(text: "19: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 20, textColor: UIColor.purple)
        
        SJ_PDF_Creator.writeText(text: "20: It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", bold: false, alignment: .justified, fontSize: 40, textColor: UIColor.darkGray)
    }

}

