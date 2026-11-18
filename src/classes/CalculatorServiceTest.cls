@isTest
private class CalculatorServiceTest {

    @isTest
    static void testAdd() {

        Integer result = CalculatorService.add(10, 5);

        System.assertEquals(15, result);
    }
}