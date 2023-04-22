unit Calculator;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit;

type
  TForm4 = class(TForm)
    PrincipalLayout: TFlowLayout;
    Display: TEdit;
    MemoryButtonsGrid: TGridLayout;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ManageInputDataButtons: TFlowLayout;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    FloatAnimation1: TFloatAnimation;
    RegularOperationsButton: TGridLayout;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    DigitsButton: TFlowLayout;
    RegularDigitButtons: TGridLayout;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    SpecialDigitsButton: TFlowLayout;
    Button21: TButton;
    Button22: TButton;
    SpecialOperationsButton: TGridLayout;
    Button23: TButton;
    Button24: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

end.
