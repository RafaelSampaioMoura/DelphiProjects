unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.Memo.Types, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, FMX.StdCtrls, FMX.Edit,
  Data.Bind.Components, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  REST.Client, Data.Bind.ObjectScope, System.JSON, FMX.Grid, FMX.Grid.Style,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.Effects, REST.Response.Adapter, Fmx.Bind.Grid, Data.Bind.Grid;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    MemoContent: TMemo;
    LinkControlToFieldContent: TLinkControlToField;
    BindingsList1: TBindingsList;
    Panel1: TPanel;
    EditParamspattern: TEdit;
    LabelParamspattern: TLabel;
    LinkControlToFieldParamspattern: TLinkControlToField;
    Button1: TButton;
    StringGrid1: TStringGrid;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    Label1: TLabel;
    ToolBar1: TToolBar;
    StyleBook1: TStyleBook;
    ShadowEffect1: TShadowEffect;
    FDMemTable1: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    BindingsList2: TBindingsList;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  jValue:TJSONValue;
begin
  //RESTRequest1.Execute;
  //jValue := RESTResponse1.JSONValue;
  //MemoContent.Text:=jValue.ToString;
  RESTRequest1.ExecuteAsync(
    procedure
      begin
        Label1.Text := 'Complete!';
        LinkGridToDataSourceBindSourceDB1.Active := False;
        LinkGridToDataSourceBindSourceDB1.Active := True;
      end,
    True,
    True,
    procedure (Sender: TObject)
      begin
        Label1.Text := 'Error!';
      end
  )
end;

end.
