//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */


// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

for xPosition in stride(from: 0, through: 350, by: 80){
    
    for yPosition in stride(from: 0, through: 350, by: 80){
        
        if xPosition == yPosition {
            canvas.fillColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
        } else {
            canvas.fillColor = Color(hue: 307, saturation: 67, brightness: 59, alpha: 100)
        }
        
        var arrow: [Point] = []
        arrow.append(Point(x: xPosition+0, y: yPosition+0))
        arrow.append(Point(x: xPosition+60, y: yPosition+0))
        arrow.append(Point(x: xPosition+60, y: yPosition+15))
        arrow.append(Point(x: xPosition+25, y: yPosition+15))
        arrow.append(Point(x: xPosition+80, y: yPosition+70))
        arrow.append(Point(x: xPosition+70, y: yPosition+80))
        arrow.append(Point(x: xPosition+15, y: yPosition+25))
        arrow.append(Point(x: xPosition+15, y: yPosition+60))
        arrow.append(Point(x: xPosition+0, y: yPosition+60))

        canvas.drawCustomShape(with: arrow)
        
    }
    
}

canvas.lineColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 470), to: Point(x: 400, y: 470))
canvas.drawLine(from: Point(x: 0, y: 570), to: Point(x: 400, y: 570))

canvas.textColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
canvas.drawText(message: "the velvet underground", at: Point(x: 17, y: 410), size: 30, kerning: 0)

canvas.drawText(message: "first appearance in london", at: Point(x: 17, y: 550), size: 8, kerning: 0)

canvas.drawText(message: "the london college of printing", at: Point(x: 17, y: 540), size: 8, kerning: 0)

canvas.drawText(message: "with spring and pollyfloskin", at: Point(x: 150, y: 550), size: 8, kerning: 0)

canvas.drawText(message: "plus the great western light show", at: Point(x: 150, y: 540), size: 8, kerning: 0)

canvas.drawText(message: "thursday", at: Point(x: 300, y: 550), size: 8, kerning: 0)

canvas.drawText(message: "october 14 1971 / 8", at: Point(x: 300, y: 540), size: 8, kerning: 0)



