unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.Controls, System.Rtti,
  FMX.Grid.Style, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, FireDAC.Comp.UI, Data.Bind.Components,
  Data.Bind.Grid, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid,
  FireDAC.Comp.DataSet, FMX.Layouts, Fmx.Bind.Navigator, Data.Bind.DBScope,
  FMX.Edit, FMX.StdCtrls, FMX.Menus, FMX.ListBox, Vcl.Dialogs;

type
  TForm6 = class(TForm)
    RadioButton1: TRadioButton;
    Panel1: TPanel;
    Connect: TButton;
    Execute: TButton;
    sakila: TRadioButton;
    menagerie: TRadioButton;
    world_x: TRadioButton;
    ListBox1: TListBox;
    Ten: TListBoxItem;
    TwentyFive: TListBoxItem;
    Fifty: TListBoxItem;
    Edit1: TEdit;
    FDConnection1: TFDConnection;
    BindSourceDB1: TBindSourceDB;
    FDQuery1: TFDQuery;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure sakilaClick(Sender: TObject);
    procedure menagerieClick(Sender: TObject);
    procedure world_xClick(Sender: TObject);
    procedure ConnectClick(Sender: TObject);
    procedure TenClick(Sender: TObject);
    procedure TwentyFiveClick(Sender: TObject);
    procedure FiftyClick(Sender: TObject);
    procedure ExecuteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  SQLLimit: string;

implementation

{$R *.fmx}


procedure TForm6.ConnectClick(Sender: TObject);
  var
    DialogueMessage: string;
  begin
    FDConnection1.Connected := true;
    DialogueMessage := Concat('Connected to the ',
      FDConnection1.Params.Database, ' database.');
    ShowMessage(DialogueMessage);
  end;

procedure TForm6.ExecuteClick(Sender: TObject);
  var
    SQLQuery: string;
  begin
        SQLQuery := Concat(Edit1.Text, ' LIMIT ', SQLLimit);
        FDQuery1.SQL.Text := SQLQuery;
        FDQuery1.Open;
  end;

procedure TForm6.FiftyClick(Sender: TObject);
  begin
    SQLLimit := '50';
  end;

procedure TForm6.menagerieClick(Sender: TObject);
  begin
    begin
      if menagerie.IsChecked then
        menagerie.IsChecked := false
      else
        FDConnection1.Params.Database := menagerie.Text;
    end;
  end;

procedure TForm6.sakilaClick(Sender: TObject);
  begin
    if sakila.IsChecked then
      sakila.IsChecked := false
    else
      FDConnection1.Params.Database := sakila.Text;
  end;
procedure TForm6.TenClick(Sender: TObject);
  begin
    SQLLimit := '10';
  end;

procedure TForm6.TwentyFiveClick(Sender: TObject);
  begin
    SQLLimit := '25';
  end;

procedure TForm6.world_xClick(Sender: TObject);
  begin
    begin
      if world_x.IsChecked then
        world_x.IsChecked := false
      else
        FDConnection1.Params.Database := sakila.Text;
    end;
  end;
end.