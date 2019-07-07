Pod::Spec.new do |s|  
    s.name              = 'SJPDFCreator'
    s.version           = '0.0.1'
    s.summary           = 'SJPDFCreator framwork is to rendering PDF file by calling several simple methods. You can easily export your pdf by calling an simple method which returns the path.'
    s.homepage          = 'https://github.com/sumitjagdev/SJ_PDFCreator'

    s.author             = { "Sumit Jagdev" => "sumitjagdev3@gmail.com" }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => 'https://github.com/sumitjagdev/SJ_PDFCreator/blob/master/SJPDFCreator.zip' }

    s.ios.deployment_target = '10.0'
    s.ios.vendored_frameworks = 'SJPDFCreator.framework'
end
