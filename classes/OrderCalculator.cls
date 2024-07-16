public class OrderCalculator {

    // Class variables
    private Decimal unitPrice;
    private Integer quantity;

    // Constructor to initialize unit price and quantity
    public OrderCalculator(Decimal price, Integer qty) {
        this.unitPrice = price;
        this.quantity = qty;
    }

    // Method to calculate total price
    public Decimal calculateTotal() {
        return unitPrice * quantity;
    }

    // Method to display the calculated total
    public void displayTotal() {
        Decimal total = calculateTotal();
        System.debug('Total price for ' + quantity + ' items at $' + unitPrice + ' each is: $' + total);
    }

    // Getter and setter methods (optional, depending on need)
    public Decimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Decimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}