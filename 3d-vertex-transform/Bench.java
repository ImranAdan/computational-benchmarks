class Point3D {
    double x, y, z;
    Point3D(double x, double y, double z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
}

class Point2D {
    double x, y;
    Point2D(double x, double y) {
        this.x = x;
        this.y = y;
    }
}

public class Bench {
    static Point2D rotateAndProject(Point3D p, double angle) {
        double cosA = Math.cos(angle);
        double sinA = Math.sin(angle);

        double x1 = p.x * cosA + p.z * sinA;
        double z1 = -p.x * sinA + p.z * cosA;

        double y2 = p.y * cosA - z1 * sinA;
        double z2 = p.y * sinA + z1 * cosA;

        double viewerDistance = 5.0;
        double scale = 1000.0;
        double factor = scale / (z2 + viewerDistance);

        return new Point2D(x1 * factor, y2 * factor);
    }

    public static void main(String[] args) {
        final int numVertices = 250000;
        final int numFrames = 100;
        
        Point3D[] vertices = new Point3D[numVertices];
        double pi = 3.14159265358979323846;
        double sqrt5 = Math.sqrt(5.0);

        for (int i = 0; i < numVertices; i++) {
            double phi = i * pi * (3.0 - sqrt5);
            double y = 1.0 - ((double)i / (numVertices - 1)) * 2.0;
            double radius = Math.sqrt(1.0 - y * y);
            vertices[i] = new Point3D(radius * Math.cos(phi), y, radius * Math.sin(phi));
        }

        System.out.println("Starting Live 3D Calculation Session...");
        
        // Warm-up
        for (int frame = 0; frame < 10; frame++) {
            double angle = frame * 0.01;
            for (int i = 0; i < numVertices; i++) {
                rotateAndProject(vertices[i], angle);
            }
        }

        long start = System.nanoTime();
        double checksum = 0.0;

        for (int frame = 0; frame < numFrames; frame++) {
            double angle = frame * 0.01;
            for (int i = 0; i < numVertices; i++) {
                Point2D p2d = rotateAndProject(vertices[i], angle);
                checksum += p2d.x + p2d.y;
            }

            if (frame % 20 == 0) {
                Point2D p2d = rotateAndProject(vertices[0], angle);
                System.out.printf("[LIVE FRAME %3d] Tracking Vertex 0: x=%.2f, y=%.2f\n", frame, p2d.x, p2d.y);
            }
        }

        long end = System.nanoTime();
        double elapsedMs = (end - start) / 1_000_000.0;
        double totalVertices = (double)numVertices * numFrames;

        System.out.println("------------------------------------------------");
        System.out.printf("elapsed_ms=%.3f vertices_per_sec=%.0f checksum=%.6f\n", 
               elapsedMs, totalVertices / (elapsedMs / 1000.0), checksum);
    }
}
