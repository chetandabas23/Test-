public class RectangleArea implements area
{

	double length=10.00;
    double width=15.00;
	double rectanglearea;
  
  public double areaShape()
  {
      return length*width;
  }
    public void calcArea()
    {
        
        rectanglearea=areaShape();
        system.debug('Area of a rectangle is'+rectanglearea);
    }
}