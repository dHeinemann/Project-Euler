public class Euler9
{
    //Done
    public static void main(String[] args)
    {
        findSpecialTriplet();
    }

    private static void findSpecialTriplet()
    {
        for (int a = 1; a <= 1000; a++)
            for (int b = 2; b <= 1000; b++)
                for (int c = 3; c <= 1000; c++)
                    if (checkIfSpecialTriplet(a, b, c))
                    {
                        System.out.println("Result: " + a * b * c);
                    }
    }

    private static boolean checkIfSpecialTriplet(int a, int b, int c)
    {
        return ((a < b && b < c)
                && (Math.pow(a, 2) + Math.pow(b, 2) == Math.pow(c, 2))
                && (a + b + c == 1000));
    }
}
