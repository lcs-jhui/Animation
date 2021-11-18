//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)


// Draw right ear
canvas.drawEllipse(at: Point(x: 35, y: 50), width: 40, height: 40)

// Draw left ear
canvas.drawEllipse(at: Point(x: -35, y: 50), width: 40, height: 40)

// Set canvas characteristics for shapes drawn below this line
canvas.drawShapesWithBorders = true
canvas.fillColor = .white

// Draw panda's head
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 100, height: 100)

// Set canvas characteristics for shapes drawn below this line
canvas.fillColor = .white

// Draw right eyeball
canvas.drawEllipse(at: Point(x: 15, y: 15), width: 15, height: 25)

// Draw left eyeball
canvas.drawEllipse(at: Point(x: -15, y: 15), width: 15, height: 25)

// Set canvas characteristics for shapes drawn below this line
canvas.fillColor = .black

// Draw right pupil
canvas.drawEllipse(at: Point(x: 15, y: 8), width: 10, height: 10)

// Draw left pupil
canvas.drawEllipse(at: Point(x: -15, y: 8), width: 10, height: 10)

// Set canvas characteristics for shapes drawn below this line
canvas.fillColor = .black

// Draw mouth
canvas.drawEllipse(at: Point(x: 0, y: -30), width: 40, height: 20)

// Cover upper half of mouth so it looks more like... a mouth
canvas.fillColor = .white
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: -20), width: 50, height: 20, anchoredBy: .centre)

// Draw nose
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0, y: -15), width: 15, height: 15)

// Background colour

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
