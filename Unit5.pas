unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FMX.Memo.Types, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, FMX.StdCtrls, FMX.Edit,
  Data.Bind.Components, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  REST.Client, Data.Bind.ObjectScope, System.JSON, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FMX.Grid.Style, Fmx.Bind.Grid,
  Data.Bind.Grid, FMX.Grid, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    GridBindSourceDB1: TGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    EditParamsid: TEdit;
    LabelParamsid: TLabel;
    LinkControlToFieldParamsid: TLinkControlToField;
    MemoContent: TMemo;
    LinkControlToFieldContent: TLinkControlToField;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

procedure TForm5.Button1Click(Sender: TObject);
var
  jValue:TJSONValue;
  value: TRESTResponse;
  dataset: TRESTResponseDataSetAdapter;
begin
  RESTRequest1.Execute;
  jValue := RESTResponse1.JSONValue;
  MemoContent.Text := jValue.ToString;
  FDMemTable1.DataSetField.SetData(jValue.GetValue<TJSONValue>('results'));
end;

end.
