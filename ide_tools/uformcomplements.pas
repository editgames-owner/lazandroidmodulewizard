unit uFormComplements;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, Buttons;

type

  { TFormAddComplements }

  TFormAddComplements = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditGradleDep: TEdit;
    EditPath: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBoxGradleDep: TListBox;
    ListBoxPath: TListBox;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    SpeedButtonAddPath: TSpeedButton;
    SpeedButtonAddGradleDep: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButtonOpen: TSpeedButton;
    StatusBar1: TStatusBar;
    procedure ListBoxPathClick(Sender: TObject);
    procedure SpeedButtonAddPathClick(Sender: TObject);
    procedure SpeedButtonAddGradleDepClick(Sender: TObject);
    procedure SpeedButtonOpenClick(Sender: TObject);
  private

  public

  end;

var
  FormAddComplements: TFormAddComplements;

implementation

{$R *.lfm}

{ TFormAddComplements }

procedure TFormAddComplements.SpeedButtonOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    EditPath.Text:= OpenDialog1.FileName;
end;

procedure TFormAddComplements.SpeedButtonAddPathClick(Sender: TObject);
begin
  if EditPath.Text <> '' then
  begin
    ListBoxPath.Items.Add(Self.EditPath.Text);
    EditPath.Text:= '';
  end;
end;

procedure TFormAddComplements.ListBoxPathClick(Sender: TObject);
begin

end;

procedure TFormAddComplements.SpeedButtonAddGradleDepClick(Sender: TObject);
begin
  if EditGradleDep.Text <> '' then
  begin
    ListBoxGradleDep.Items.Add(Self.EditGradleDep.Text);
    EditGradleDep.Text:= '';
  end;
end;

end.

