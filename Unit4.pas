unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.Rtti,
  FMX.Grid.Style, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Grid,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, Data.Bind.DBScope;

type
  TForm4 = class(TForm)
    RESTClient1: TRESTClient;
    RESTReqPeople: TRESTRequest;
    RESTReqFilms: TRESTRequest;
    RESTReqShips: TRESTRequest;
    RESTReqVehicles: TRESTRequest;
    RESTReqSpecies: TRESTRequest;
    RESTReqPlanets: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTReqPeopleID: TRESTRequest;
    RESTReqFilmsID: TRESTRequest;
    RESTReqShipsID: TRESTRequest;
    RESTReqVehiclesID: TRESTRequest;
    RESTReqSpeciesID: TRESTRequest;
    RESTReqPlanetsID: TRESTRequest;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTClient2: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1name: TWideStringField;
    FDMemTable1model: TWideStringField;
    FDMemTable1manufacturer: TWideStringField;
    FDMemTable1cost_in_credits: TIntegerField;
    FDMemTable1length: TFloatField;
    FDMemTable1max_atmosphering_speed: TIntegerField;
    FDMemTable1crew: TIntegerField;
    FDMemTable1passengers: TIntegerField;
    FDMemTable1cargo_capacity: TIntegerField;
    FDMemTable1consumables: TWideStringField;
    FDMemTable1vehicle_class: TWideStringField;
    FDMemTable1pilots: TWideStringField;
    FDMemTable1films: TWideStringField;
    FDMemTable1created: TDateTimeField;
    FDMemTable1edited: TDateTimeField;
    FDMemTable1url: TWideStringField;
    BindSourceDB1: TBindSourceDB;
    GridBindSourceDB1: TGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
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
