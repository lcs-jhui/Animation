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

canvas.fillColor = Color(hue: 15, saturation: 81, brightness: 88, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)



for xPosition in stride(from: 0, through: 400, by: 45){
    
    for yPosition in stride(from: 200, through: 600, by: 45){
        
        if yPosition - xPosition < 245 {
            
            canvas.fillColor = Color(hue: 47, saturation: 71, brightness: 97, alpha: 100)

        } else {
            canvas.fillColor = Color(hue: 72, saturation: 4, brightness: 88, alpha: 100)
        }
        
            
            
        
        
        var triangleVertices: [Point] = []
        triangleVertices.append(Point(x: xPosition, y: yPosition))
        triangleVertices.append(Point(x: xPosition+45, y: yPosition))
        triangleVertices.append(Point(x: xPosition+45, y: yPosition+45))
        
        canvas.drawCustomShape(with: triangleVertices)

        //canvas.drawText(message: "(\(xPosition) , \(yPosition))", at: Point(x: xPosition, y: yPosition), size: 9)
        
    }
}


canvas.textColor = Color(hue: 72, saturation: 4, brightness: 88, alpha: 100)
canvas.drawText(message: "talking heads", at: Point(x: 20, y: 141), size: 39, kerning: 0)

canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 30), size: 8, kerning: 0)

canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 20, y: 15), size: 8, kerning: 0)

canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 30), size: 8, kerning: 0)

canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 15), size: 8, kerning: 0)

canvas.drawText(message: "also appearing:", at: Point(x: 280, y: 30), size: 8, kerning: 0)

canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 280, y: 15), size: 8, kerning: 0)






//canvas.drawAxes(withScale: true, by: 50, color: .black)
