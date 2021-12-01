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


//custom shape with absolute coordiantes
// 1. make a list of the vertices
var triangleVertices: [Point] = []
triangleVertices.append(Point(x: 0, y: 50))
triangleVertices.append(Point(x: 50, y: 50))
triangleVertices.append(Point(x: 25, y: 60))

// 2. tell canvas object to draw triangle
//canvas.drawCustomShape(with: triangleVertices)

for xPosition in stride(from: 0, through: 350, by: 50){
    
    for yPosition in stride(from: 0, through: 550, by: 50){
        
        canvas.fillColor = .red
        canvas.drawEllipse(at: Point(x: xPosition, y: yPosition), width: 5, height: 5)
        
        //tell canvas coordinates for tilted rectangle
        var rectanglVertices: [Point] = []
        rectanglVertices.append(Point(x: xPosition+0, y: yPosition+30))
        rectanglVertices.append(Point(x: xPosition+20, y: yPosition+50))
        rectanglVertices.append(Point(x: xPosition+50, y: yPosition+20))
        rectanglVertices.append(Point(x: xPosition+30, y: yPosition+0))

        //draw tilted rectangle
        canvas.drawCustomShape(with: rectanglVertices)
        
    }
}
