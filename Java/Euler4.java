public class Euler4
{
    //done
    public static void main(String[] args)
    {
        int largestPalindrome = 0;
        String expression = "";

        for (int i = 100; i <= 999; i++)
        {
            for (int j = 100; j <= 999; j++)
            {
                int result = i * j;
                if (isPalindrome(Integer.toString(result)) && result > largestPalindrome)
                {
                    largestPalindrome = result;
                    expression = i + " * " + j;
                }
            }
        }

        System.out.println("Largest palindrome: " + largestPalindrome + " (" + expression + ")");
    }

    private static boolean isPalindrome(String a)
    {
        return a.equals(new StringBuilder(a).reverse().toString());
    }
}
