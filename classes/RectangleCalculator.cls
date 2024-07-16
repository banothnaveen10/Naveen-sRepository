public class RectangleCalculator {

    // Class variables
    private Integer length;
    private Integer width;

    // Constructor to initialize the length and width of the rectangle
    public RectangleCalculator(Integer len, Integer wid) {
        this.length = len;
        this.width = wid;
    }

    // Method to calculate the area of the rectangle
    public Integer calculateArea() {
        return length * width;
    }

    // Method to display the calculated area
    public void displayArea() {
        Integer area = calculateArea();
        System.debug('Area of the rectangle with length ' + length + ' and width ' + width + ' is: ' + area);
    }

    // Getter and setter methods (optional, depending on need)
    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public Integer getWidth() {
        return width;
    }

    public void setWidth(Integer width) {
        this.width = width;
    }
}