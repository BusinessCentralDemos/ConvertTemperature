page 70074169 MS_ConvertTemperature
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Temperature)
            {
                field(Fahrenheit; Fahrenheit)
                {
                    Caption = 'Fahrenheit';
                    TooLTip = 'Convert Fahrenheit to Celsius';

                    trigger OnValidate()
                    begin
                        ConvertTemperature.ConvertFahrenheitToCelsius(Fahrenheit)
                    end;

                }

                field(Celsius; Celsius)
                {
                    Caption = 'Celsius';
                    ToolTip = 'Convert Celsius to Fahrenheit';
                    trigger OnValidate()
                    begin
                        ConvertTemperature.ConvertCelsiusToFahrenheit(Celsius)
                    end;
                }
            }
        }
    }

    var
        ConvertTemperature: Codeunit "ConvertTemperature";
        Fahrenheit: Decimal;
        Celsius: Decimal;
}
