package Point;

public class Test{
	
	public static void main(String[] args) {
		
		Point2D p = new Point2D(1, 1);
		Point2D p1 = new Point2D(3, 3);
		Point3D p2 = new Point3D(1, 1, 1);
		Point3D p3 = new Point3D();
		
		Point2D p5 = new Point3D(0, 0, 1);
		Point2D p6 = new Point3D(0, 0, 2);
		
//		Point3D p2 = new Point2D(1, 1); -> No se puede convertir el hijo al padre
		
		System.out.println(p5);
		
	}
}
