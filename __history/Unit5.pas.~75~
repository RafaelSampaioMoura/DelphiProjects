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
  FireDAC.Comp.Client, REST.Response.Adapter, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait;

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
    MemoContent: TMemo;
    LinkControlToFieldContent: TLinkControlToField;
    people: TRadioButton;
    vehicles: TRadioButton;
    planets: TRadioButton;
    EditParamsid: TEdit;
    idSelector: TLabel;
    LinkControlToFieldParamsid: TLinkControlToField;
    films: TRadioButton;
    starships: TRadioButton;
    species: TRadioButton;
    Connect: TButton;
    SaveToDatabase: TButton;
    FDConnection1: TFDConnection;
    procedure Button1Click(Sender: TObject);
    procedure peopleClick(Sender: TObject);
    procedure planetsClick(Sender: TObject);
    procedure vehiclesClick(Sender: TObject);
    procedure filmsClick(Sender: TObject);
    procedure starshipsClick(Sender: TObject);
    procedure speciesClick(Sender: TObject);
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
begin
  RESTResponse1.RootElement := '';
  RESTRequest1.Execute;
  if RESTClient1.Params[1].Value = '' then
    if RESTResponse1.StatusCode = 200 then
      begin
        RESTResponse1.RootElement := 'results';
      end;
  jValue := RESTResponse1.JSONValue;
  MemoContent.Text := jValue.ToString;
end;

procedure TForm5.filmsClick(Sender: TObject);
begin
  if films.IsChecked then
    begin
      RESTClient1.Params[0].Value := '';
      films.IsChecked := false;
    end
  else
    begin
      RESTClient1.Params[0].Value := films.Name;
      films.IsChecked := true;
    end;
end;

procedure TForm5.peopleClick(Sender: TObject);
begin
  if people.IsChecked then
    begin
      people.IsChecked := false;
    end
  else
    begin
      RESTClient1.Params[0].Value := people.Name;
      people.IsChecked := true;
    end;
end;

procedure TForm5.planetsClick(Sender: TObject);
begin
  if planets.IsChecked then
    begin
      planets.IsChecked := false;
    end
  else
    begin
      RESTClient1.Params[0].Value := planets.Name;
      planets.IsChecked := true;
    end;
end;

procedure TForm5.speciesClick(Sender: TObject);
begin
  if species.IsChecked then
    begin
      species.IsChecked := false;
    end
  else
    begin
      RESTClient1.Params[0].Value := species.Name;
      species.IsChecked := true;
    end;
end;

procedure TForm5.starshipsClick(Sender: TObject);
begin
  if starships.IsChecked then
    begin
      starships.IsChecked := false;
    end
  else
    begin
      RESTClient1.Params[0].Value := starships.Name;
      starships.IsChecked := true;
    end;
end;

procedure TForm5.vehiclesClick(Sender: TObject);
begin
  if vehicles.IsChecked then
    begin
      vehicles.IsChecked := false;
    end
  else
    begin
      RESTClient1.Params[0].Value := vehicles.Name;
      vehicles.IsChecked := true;
    end;
end;

end.
