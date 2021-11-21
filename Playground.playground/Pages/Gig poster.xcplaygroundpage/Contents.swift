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
// canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Begin writing your code below (you can remove the examples shown)


canvas.fillColor = Color(hue: 140, saturation: 75, brightness: 0, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 600, height: 600)


for verticalPosition in stride(from: 0, through: 600, by: 50){
    
    for horizontalPosition in stride(from: 0, through: 600, by: 50){
        
        canvas.fillColor = Color(hue: 120, saturation: 70, brightness: 75, alpha: 100)
        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 47, height: 47)
        
    }
}

canvas.fillColor = .white

for horizontalTrianglePosition in stride(from: 50, through: 450, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition, y: 50), width: 47, height: 47)
    
}

for horizontalTrianglePosition2 in stride(from: 50, through: 400, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition2, y: 100), width: 47, height: 47)
    
}

for horizontalTrianglePosition3 in stride(from: 50, through: 350, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition3, y: 150), width: 47, height: 47)
    
}

for horizontalTrianglePosition4 in stride(from: 50, through: 300, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition4, y: 200), width: 47, height: 47)
    
}

for horizontalTrianglePosition5 in stride(from: 50, through: 250, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition5, y: 250), width: 47, height: 47)
    
}

for horizontalTrianglePosition6 in stride(from: 50, through: 200, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition6, y: 300), width: 47, height: 47)
    
}


for horizontalTrianglePosition7 in stride(from: 50, through: 150, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition7, y: 350), width: 47, height: 47)
    
}

for horizontalTrianglePosition8 in stride(from: 50, through: 100, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition8, y: 400), width: 47, height: 47)
    
}

for horizontalTrianglePosition9 in stride(from: 50, through: 50, by: 50){
    
    canvas.drawEllipse(at: Point(x: horizontalTrianglePosition9, y: 450), width: 47, height: 47)
    
}




//canvas.drawAxes(withScale: true, by: 50, color: .black)


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
