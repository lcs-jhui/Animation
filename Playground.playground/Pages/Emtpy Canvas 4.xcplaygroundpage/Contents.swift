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


//triangle 1
p.lineWidth = 4
p.goto(dx: -170, dy: -180)
p.drawTo(dx: 230, dy: 380)
p.drawTo(dx: 210, dy: -380)
p.drawTo(dx: -440, dy: 0)

//triangle 2
p.lineWidth = 5
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 200, dy: 340)
p.drawTo(dx: 180, dy: -340)
p.drawTo(dx: -380, dy: 0)

//triangle 3
p.lineWidth = 6
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 170, dy: 300)
p.drawTo(dx: 150, dy: -300)
p.drawTo(dx: -320, dy: 0)

//triangle 4
p.lineWidth = 7
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 140, dy: 260)
p.drawTo(dx: 120, dy: -260)
p.drawTo(dx: -260, dy: 0)

//triangle 5
p.lineWidth = 6
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 220, dy: 0)
p.goto(dx: -220, dy: 0)
p.drawTo(dx: 118, dy: 222)

//triangle 6
p.lineWidth = 5
p.goto(dx: -118, dy: -222)
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 98, dy: 180)
p.goto(dx: -98, dy: -180)
p.drawTo(dx: 180, dy: 0)

//triangle 7
p.lineWidth = 6
p.goto(dx: -180, dy: 0)
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 78, dy: 140)
p.goto(dx: -78, dy: -140)
p.drawTo(dx: 140, dy: 0)

//traingle 8
p.lineWidth = 6
p.goto(dx: -140, dy: 0)
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 54, dy: 96)
p.goto(dx: -54, dy: -96)
p.drawTo(dx: 100, dy: 0)

//triangle 9
p.lineWidth = 5
p.goto(dx: -100, dy: 0)
p.goto(dx: 30, dy: 20)
p.drawTo(dx: 36, dy: 60)
p.goto(dx: -36, dy: -60)
p.drawTo(dx: 63, dy: 0)

//traingle 10
p.lineWidth = 3
p.goto(dx: -63, dy: 0)
p.goto(dx: 30, dy: 10)
p.drawTo(dx: 15, dy: 30)
p.goto(dx: -15, dy: -30)
p.drawTo(dx: 28, dy: 0)


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
