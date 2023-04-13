page 70074169 MS_ConvertTemperature
{
    Caption = 'Convert Temperature';
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
                        Celsius := ConvertTemperature.ConvertFahrenheitToCelsius(Fahrenheit)
                    end;

                }

                field(Celsius; Celsius)
                {
                    Caption = 'Celsius';
                    ToolTip = 'Convert Celsius to Fahrenheit';
                    trigger OnValidate()
                    begin
                        Fahrenheit := ConvertTemperature.ConvertCelsiusToFahrenheit(Celsius)
                    end;
                }
            }
        }
    }

    var
        ConvertTemperature: Codeunit MS_ConvertTemperature;
        Fahrenheit: Decimal;
        Celsius: Decimal;
}
