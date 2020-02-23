import Graphics.PDF
 
main :: IO ()
main = do
  let pdfFileName = "cv.pdf"
  let documentInfo = standardDocInfo 
  let defaultPageSize = PDFRect 0 0 200 300

  let pdfString = toPDFString "Testing"
  let pdfFont = PDFFont Times_Roman 32
  let pdfText = text pdfFont 10.0 10.0 pdfString
  
  runPdf pdfFileName documentInfo defaultPageSize $ do
    page <- addPage Nothing

    drawWithPage page $ do
      drawText pdfText