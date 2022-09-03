package Point;

import java.util.Objects;

public class Point2D {
	
	private double x;
	
	private double y;
	
	//Constructors
	public Point2D (double x, double y) {
		
		this.x = x;
		this.y = y;
	}
	
	public Point2D() {
		this(0, 0);
	}

	@Override
	public String toString() {
		return "(" + x + ", y" + y + ")";
	}
	
	public double getX() {
		return x;
	}

//	public void setX(double x) {
//		this.x = x;
//	}

	public double getY() {
		return y;
	}

//	public void setY(double y) {
//		this.y = y;
//	}

	public Point2D plusPoints (Point2D p1) {
		
		return new Point2D(this.x + p1.x, this.y + p1.y);
	}
	
	public void desplazar(double x, double y) {
		
		this.x += x;
		this.y += y;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(x, y);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Point2D other = (Point2D) obj;
		return Double.doubleToLongBits(x) == Double.doubleToLongBits(other.x)
				&& Double.doubleToLongBits(y) == Double.doubleToLongBits(other.y);
	}
	
	//metodos: distancia, sumar, restar --> en ambas class
	
}
