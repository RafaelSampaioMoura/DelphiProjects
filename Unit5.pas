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
  FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait, FireDAC.DApt;

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
    BindSourceDB2: TBindSourceDB;
    FDQuery1: TFDQuery;
    Return: TButton;
    Edit1: TEdit;
    DatabaseQuery: TLabel;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure peopleClick(Sender: TObject);
    procedure planetsClick(Sender: TObject);
    procedure vehiclesClick(Sender: TObject);
    procedure filmsClick(Sender: TObject);
    procedure starshipsClick(Sender: TObject);
    procedure speciesClick(Sender: TObject);
    procedure ConnectClick(Sender: TObject);
    procedure SaveToDatabaseClick(Sender: TObject);
    procedure ReturnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  GlobalJValue: TJSONValue;

implementation

{$R *.fmx}

procedure TForm5.Button1Click(Sender: TObject);
var
  jValue:TJSONValue;
  dummyString: string;
begin
  Connect.Enabled := true;
  FDConnection1.Connected := true;
  FDQuery1.ExecSQL('DROP DATABASE IF EXISTS star_wars;');
  FDQuery1.ExecSQL('CREATE DATABASE star_wars;');
  RESTResponse1.RootElement := '';
  RESTRequest1.Execute;
  if RESTClient1.Params[1].Value = '' then
    if RESTResponse1.StatusCode = 200 then
      begin
        RESTResponse1.RootElement := 'results';
      end;
  jValue := RESTResponse1.JSONValue;
  GlobalJValue := jValue;
  dummyString := GlobalJValue.ToString;
  MemoContent.Text := jValue.ToString;
end;

procedure TForm5.ConnectClick(Sender: TObject);
begin

  FDConnection1.Params.Database := 'star_wars';
  FDConnection1.Connected := true;
  ShowMessage('Connected to the Star Wars database');
  SaveToDatabase.Enabled := true;
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

procedure TForm5.ReturnClick(Sender: TObject);
var
  sqlstring: string;
begin
  LinkGridToDataSourceBindSourceDB1.DataSource := BindSourceDB2;
  FDQuery1.SQL.Text := Edit1.Text;
  FDQuery1.Open;
  sqlstring := FDQuery1.FieldByName('jdoc').AsString;
end;

procedure TForm5.SaveToDatabaseClick(Sender: TObject);
var
  SQLQuery: string;
begin
  FDQuery1.ExecSQL('DROP TABLE IF EXISTS t1;');
  FDQuery1.ExecSQL('CREATE TABLE t1 (jdoc JSON);');
  SQLQuery := Concat('INSERT INTO t1 VALUES(', QuotedStr(GlobalJValue.ToString), ');');
  FDQuery1.SQL.Text := SQLQuery;
  FDQuery1.ExecSQL;
  Connect.Enabled := false;
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

initialization

finalization


end.
