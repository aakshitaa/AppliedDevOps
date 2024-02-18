public class Calculator {
    public static void main(String[] args) {
        CalculatorFunctions calculator = new CalculatorFunctions();
        int result = calculator.add(5, 3);
        System.out.println("5 + 3 = " + result);
        
        result = calculator.subtract(5, 3);
        System.out.println("5 - 3 = " + result);
        
        result = calculator.multiply(5, 3);
        System.out.println("5 * 3 = " + result);
        
        result = calculator.divide(10, 2);
        System.out.println("10 / 2 = " + result);
    }
}
