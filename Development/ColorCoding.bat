using System;

class SetConsoleColor {
    static void Main(string[] args) {
        if (args.Length < 3) {
            Console.Error.WriteLine("Usage: SetConsoleColor [foreground] [background] [message]");
            return;
        }

        Console.ForegroundColor = (ConsoleColor)Enum.Parse(typeof(ConsoleColor), args[0], true);
        Console.BackgroundColor = (ConsoleColor)Enum.Parse(typeof(ConsoleColor), args[1], true);

        Console.WriteLine(args[2]);

        Console.ResetColor();
    }
}