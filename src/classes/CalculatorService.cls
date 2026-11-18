public class CalculatorService {

    public static Integer add(Integer a, Integer b) {
        return a + b;
    }

    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }

    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }

    public static Decimal divide(Integer a, Integer b) {
        if(b == 0) {
            throw new AuraHandledException('Division by zero is not allowed');
        }
        return (Decimal)a / b;
    }
}