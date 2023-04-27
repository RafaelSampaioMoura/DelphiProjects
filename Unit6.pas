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
  FMX.Edit, FMX.StdCtrls, FMX.Menus, FMX.ListBox;

type
  TForm6 = class(TForm)
    FDConnection1: TFDConnection;
    BindSourceDB1: TBindSourceDB;
    BindNavigator1: TBindNavigator;
    FDQuery1: TFDQuery;
    StringGrid1: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    FDQuery2: TFDQuery;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    RadioButton1: TRadioButton;
    Panel1: TPanel;
    Connect: TButton;
    Button2: TButton;
    sakila: TRadioButton;
    managerie: TRadioButton;
    world_x: TRadioButton;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}


end.
