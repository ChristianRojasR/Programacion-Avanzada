package Point;

import java.util.Objects;

public class Point3D extends Point2D{

	private double z;
		
	//Constructor
	public Point3D() {
	}
	
	public Point3D(double x, double y, double z) {
			
		super(x, y);
		this.z = z;
	}

	@Override
	public String toString() {
		return "(" + super.getX() + ", " + super.getY() + ", " + z + ")";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + Objects.hash(z);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Point3D other = (Point3D) obj;
		return Double.doubleToLongBits(z) == Double.doubleToLongBits(other.z);
	}
	
	public Point3D plusPoint (Point3D p) {
		return new Point3D(this.getX() + p.getX(), this.getY() + p.getY(), this.z + p.z);
	}
}
