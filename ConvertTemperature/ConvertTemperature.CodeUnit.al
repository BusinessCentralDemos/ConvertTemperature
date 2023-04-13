codeunit 70074169 MS_ConvertTemperature
{
    procedure ConvertFahrenheitToCelsius(Fahrenheit: Decimal): Decimal
    var
        Celsius: Decimal;
    begin

        Celsius := (Fahrenheit - 32) * 5 / 9;
        exit(Celsius);
    end;


    procedure ConvertCelsiusToFahrenheit(Celsius: Decimal): Decimal
    var
        Fahrenheit: Decimal;
    begin

        Fahrenheit := Celsius * 9 / 5 + 32;
        exit(Fahrenheit);
    end;
}