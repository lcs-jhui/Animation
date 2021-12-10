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
canvas.fillColor = Color(hue: 53, saturation: 17, brightness: 96, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
for x in stride(from: 0, through: 400, by: 100){
    
    for y in stride(from: 0, through: 600, by: 100){
        
        if x == 0{
            canvas.fillColor = Color(hue: 11, saturation: 75, brightness: 83, alpha: 100)
        }else if x == 100{
            canvas.fillColor = Color(hue: 201, saturation: 66, brightness: 79, alpha: 100)
        }else if x == 200{
            canvas.fillColor = Color(hue: 110, saturation: 46, brightness: 57, alpha: 100)
        }else if x == 300{
            canvas.fillColor = Color(hue: 56, saturation: 62, brightness: 90, alpha: 100)
        }
        
        var triangleVertices: [Point] = []
        triangleVertices.append(Point(x: x, y: y))
        triangleVertices.append(Point(x: x+100, y: y))
        triangleVertices.append(Point(x: x+100, y: y+100))
        
        canvas.drawCustomShape(with: triangleVertices)
        
    }
}

for xPosition in stride(from: 50, through: 400, by: 100){
    
    for yPosition in stride(from: 50, through: 600, by: 100){
        
        canvas.defaultBorderWidth = 5
        canvas.fillColor = Color(hue: 72, saturation: 4, brightness: 88, alpha: 100)
        canvas.drawEllipse(at: Point(x: xPosition, y: yPosition), width: 70, height: 70)

    }
}


for xValue in stride(from: 0, through: 400, by: 100){
    
    for yValue in stride(from: 0, through: 600, by: 100){
        
        canvas.fillColor = .black
        var halfCircle: [Point] = []
        halfCircle.append(Point(x: xValue+25, y: yValue+25))
        halfCircle.append(Point(x: xValue+20, y: yValue+33))
        halfCircle.append(Point(x: xValue+16, y: yValue+40))
        halfCircle.append(Point(x: xValue+15, y: yValue+50))
        halfCircle.append(Point(x: xValue+16, y: yValue+60))
        halfCircle.append(Point(x: xValue+20, y: yValue+67))
        halfCircle.append(Point(x: xValue+25, y: yValue+74))
        halfCircle.append(Point(x: xValue+30, y: yValue+78))
        halfCircle.append(Point(x: xValue+40, y: yValue+83))
        halfCircle.append(Point(x: xValue+50, y: yValue+85))
        halfCircle.append(Point(x: xValue+60, y: yValue+83))
        halfCircle.append(Point(x: xValue+67, y: yValue+80))
        halfCircle.append(Point(x: xValue+70, y: yValue+79))
        halfCircle.append(Point(x: xValue+75, y: yValue+75))
        
        canvas.drawCustomShape(with: halfCircle)
    }
}

canvas.fillColor = Color(hue: 53, saturation: 17, brightness: 96, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

