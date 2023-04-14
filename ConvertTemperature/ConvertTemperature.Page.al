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
    actions
    {
        area(Processing)
        {
            action("Check Access")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction();
                begin
                    Codeunit.Run(70074169);
                end;
            }

            action("IsUnlicensed")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction();
                var
                    myInfo: ModuleInfo;
                begin
                    if (NavApp.IsUnlicensed()) then begin
                        Message('User is un-licensed');
                    end
                    else begin
                        Message('User is licensed');
                    end;
                end;
            }
        }
    }

    var
        ConvertTemperature: Codeunit MS_ConvertTemperature;
        Fahrenheit: Decimal;
        Celsius: Decimal;
}