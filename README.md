# SJPDFCreator
SJPDFCreator framwork is to rendering PDF file by calling several simple methods.
You can easily export your pdf by calling an simple method which returns the path.

## Installation
1. pod 'SJPDFCreator', '~> 1.2.2' //Swift 4.21
2. pod 'SJPDFCreator', '~> 1.3.5' //Swift 5
3. pod 'SJPDFCreator', '~> 1.3.6' //Swift 5.1

## Usage
Start creating PDF using static methods.

1. **Draw line** <br />
  *SJPDFCreator.drawLine(lineColor: UIColor.blue)*

2. **Draw text** <br />
  *SJPDFCreator.writeText(text: "Rendering Dynamic PDF", bold: true, alignment: .center, fontSize: 20, textColor:  UIColor.red)*
<br />

3. **Draw Key value data**
<br />let dataDict = NSMutableDictionary()
      <br /> dataDict.setObject("Sumit_Jagdev", forKey: "User Name" as NSCopying)
       <br /> dataDict.setObject("Sumit", forKey: "First Name" as NSCopying)
       <br /> dataDict.setObject("Jagdev", forKey: "Last Name" as NSCopying)
       
       <br /> *SJPDFCreator.writeKeyValueData(dataDict: dataDict)*
<br />

4. **Draw Ordered Key value data** <br />
let paramDict = NSMutableDictionary() <br /> 
     paramDict.setValue("Sumit_Jagdev", forKey: "User Name", atIndex: 0)
      <br /> paramDict.setValue("Sumit", forKey: "First Name", atIndex: 1)
       <br />  paramDict.setValue("Jagdev", forKey: "Last Name", atIndex: 2)
       <br />  paramDict.setValue("sumitjagdev12@gmail.com", forKey: "E-Mail", atIndex: 3)
      <br />   paramDict.setValue("+91 5656565656", forKey: "Contact Number", atIndex: 4)
      <br />   paramDict.setValue("India", forKey: "Address", atIndex: 5)
   <br /> *SJPDFCreator.writeOrderedKeyValueData(dataDict: paramDict)*
<br /><br />

5. **Draw Table** <br />
*SJPDFCreator.writeTableData(dataArray: dataArray) //Pass an Array of dictionary*
<br />

6. **Draw Table with total key to draw Items and total of items table** <br />
*SJPDFCreator.writeTableData(dataArray: dataArray, addTotal: true, keyForTotal: "Price")*
<br />

7. **Draw Image** <br />
*SJPDFCreator.writeImage(imageName: "iOS10a.jpg", type: nil, width: 200, height: 300, alignment: .center)
<br />SJPDFCreator.writeImage(imageName: "iOS", type: "png", width: 200, height: 300, alignment: .right)*
<br />

8. **Finaly export created pdf**
<br />    *SJPDFCreator.exportWithFileName(fileName: "SJ_DemoPDF") { (isSuccess, error, pdfURL) in 
<br />             if isSuccess == true && pdfURL != nil {
 <br />                let req = NSURLRequest(url: pdfURL as! URL)
 <br />                 let webView = UIWebView(frame: self.view.frame)
 <br />                 webView.loadRequest(req as URLRequest)
<br />                 self.view.addSubview(webView)
 <br />           }
 <br />       }*
 
 
## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


## History

## Credits

## License


