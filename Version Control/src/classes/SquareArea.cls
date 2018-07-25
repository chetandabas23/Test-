public class SquareArea implements Area
{
	double radius=10.00;
	double circlearea;
    public double areaShape()
    {
        return 3.17;
    }
    public void calcArea()
    {
        double pie=areaShape();
        circlearea=pie*radius*radius;
        system.debug('Area of a circle is'+circlearea);
    }
}