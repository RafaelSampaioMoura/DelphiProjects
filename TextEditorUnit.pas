unit TextEditorUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  System.Actions, FMX.ActnList, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TTextEditorForm = class(TForm)
    ActionList: TActionList;
    MainMenu: TMainMenu;
    StatusBar1: TStatusBar;
    StatusBar: TStatusBar;
    Editor: TMemo;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    NewAction: TAction;
    OpenAction: TAction;
    SaveAction: TAction;
    SaveAsAction: TAction;
    ExitAction: TAction;
    CutAction: TAction;
    CopyAction: TAction;
    PasteAction: TAction;
    SelectAllAction: TAction;
    UndoAction: TAction;
    DeleteAction: TAction;
    WordWrapAction: TAction;
    FileMenu: TMenuItem;
    EditMenu: TMenuItem;
    FormatMenu: TMenuItem;
    NewMenu: TMenuItem;
    OpenMenu: TMenuItem;
    ExitMenu: TMenuItem;
    SaveAsMenu: TMenuItem;
    SaveMenu: TMenuItem;
    CutMenu: TMenuItem;
    CopyMenu: TMenuItem;
    PasteMenu: TMenuItem;
    SelectAllMenu: TMenuItem;
    UndoMenu: TMenuItem;
    DeleteMenu: TMenuItem;
    WordWrapMenu: TMenuItem;
    LineNumber: TLabel;
    ColumnNumber: TLabel;
    LineCount: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TextEditorForm: TTextEditorForm;

implementation

{$R *.fmx}

end.