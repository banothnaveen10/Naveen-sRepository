@isTest
public class StringManipulatorTest {
 
    @isTest
    static void testConcatenateStrings() {
        // Test case 1: Concatenate non-empty strings
        String result1 = StringManipulator.concatenateStrings('Hello, ', 'world!');
        System.assertEquals('Hello, world!', result1, 'Concatenation of non-empty strings is incorrect');
 
        // Test case 2: Concatenate an empty string
        String result2 = StringManipulator.concatenateStrings('Greetings, ', '');
        System.assertEquals('Greetings, ', result2, 'Concatenation with an empty string should result in the non-empty string');
 
        // Test case 3: Concatenate two empty strings
        String result3 = StringManipulator.concatenateStrings('', '');
        System.assertEquals('', result3, 'Concatenation of two empty strings should result in an empty string');
    }
}