﻿unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Ani, FMX.Objects, FMX.Layouts, System.Rtti, FMX.Grid.Style,
  FMX.Memo.Types, FMX.Menus, FMX.StdCtrls, FMX.Memo, FMX.ListBox, FMX.Edit,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.TabControl,
  RTL.Controls, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope,  Winapi.Windows, System.IOUtils, ShellApi, StrUtils,
  System.Notification, Winapi.MMSystem,  FMX.Media;

type
  Tfrm_main = class(TForm)
    nav_bar: TRectangle;
    Rect_Exit: TRectangle;
    btn_logout: TRectangle;
    img_logoff: TImage;
    Text4: TText;
    ColorAnimation5: TColorAnimation;
    Text12: TText;
    VertScrollBox1: TVertScrollBox;
    Rect_houses: TRectangle;
    ColorAnimation6: TColorAnimation;
    img_patients: TImage;
    Text2: TText;
    current_tab: TRectangle;
    Rect_sales: TRectangle;
    ColorAnimation9: TColorAnimation;
    img_users: TImage;
    Text11: TText;
    rect_lands: TRectangle;
    img_dashboard: TImage;
    ColorAnimation11: TColorAnimation;
    Text1: TText;
    rect_logo: TRectangle;
    logo: TImage;
    SubMenu_Animation: TFloatAnimation;
    ShadowEffect2: TShadowEffect;
    TabControl1: TTabControl;
    tab_lands: TTabItem;
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    Rectangle7: TRectangle;
    edit_search_patients: TEdit;
    Rectangle8: TRectangle;
    ColorAnimation4: TColorAnimation;
    Text15: TText;
    Rectangle10: TRectangle;
    Edit_num_recent_ticket: TEdit;
    Rectangle11: TRectangle;
    grid_houses: TStringGrid;
    Rectangle12: TRectangle;
    Rectangle14: TRectangle;
    Text18: TText;
    PopupMenu_grid_lands: TPopupMenu;
    print_patient_id: TMenuItem;
    add_new_patient: TMenuItem;
    StyleBook1: TStyleBook;
    Rectangle2: TRectangle;
    RTLFixer1: TRTLFixer;
    tab_houses: TTabItem;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Edit1: TEdit;
    Rectangle9: TRectangle;
    ColorAnimation1: TColorAnimation;
    Text3: TText;
    Rectangle13: TRectangle;
    Edit2: TEdit;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Text5: TText;
    Rectangle18: TRectangle;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    tab_sales: TTabItem;
    Rectangle19: TRectangle;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    Edit3: TEdit;
    Rectangle22: TRectangle;
    ColorAnimation2: TColorAnimation;
    Text6: TText;
    Rectangle23: TRectangle;
    Edit4: TEdit;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Rectangle26: TRectangle;
    Text7: TText;
    Rectangle27: TRectangle;
    StringGrid2: TStringGrid;
    PopupMenu2: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    popup_add_land: TRectangle;
    Rectangle29: TRectangle;
    VertScrollBox2: TVertScrollBox;
    Rectangle30: TRectangle;
    edit_note: TEdit;
    Rectangle32: TRectangle;
    Text8: TText;
    Rectangle34: TRectangle;
    edit_street: TEdit;
    Rectangle37: TRectangle;
    Text10: TText;
    edit_num_graph: TEdit;
    Rectangle38: TRectangle;
    Text13: TText;
    Rectangle39: TRectangle;
    edit_district: TEdit;
    Rectangle40: TRectangle;
    Text16: TText;
    edit_surface: TEdit;
    Rectangle41: TRectangle;
    Text17: TText;
    Rectangle42: TRectangle;
    edit_land_number: TEdit;
    Rectangle43: TRectangle;
    Text19: TText;
    edit_type: TEdit;
    Rectangle44: TRectangle;
    Text20: TText;
    Rectangle31: TRectangle;
    edit_sale: TEdit;
    Rectangle35: TRectangle;
    Text14: TText;
    edit_lengths: TEdit;
    Rectangle36: TRectangle;
    Text21: TText;
    Rectangle45: TRectangle;
    edit_phone: TEdit;
    Rectangle46: TRectangle;
    Text22: TText;
    edit_elssom: TEdit;
    Rectangle47: TRectangle;
    Text23: TText;
    Rectangle48: TRectangle;
    edit_num_piece: TEdit;
    Rectangle49: TRectangle;
    Text24: TText;
    edit_owner_name: TEdit;
    Rectangle50: TRectangle;
    Text25: TText;
    Rectangle28: TRectangle;
    Text9: TText;
    ColorAnimation3: TColorAnimation;
    btn_add_lands: TRectangle;
    Text26: TText;
    ColorAnimation7: TColorAnimation;
    green: TBrushObject;
    Text27: TText;
    ComboBox1: TComboBox;
    NotificationCenter1: TNotificationCenter;
    procedure Rect_housesClick(Sender: TObject);
    procedure Rect_salesClick(Sender: TObject);
    procedure rect_landsClick(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure btn_add_landsClick(Sender: TObject);
    procedure Rectangle28Click(Sender: TObject);
    procedure Push_Notification(Name,Title,AlertBody :string; FireDate: tdatetime);
    procedure ShowNotification(const Title, Message, Link: string);
  private
    { Private declarations }
  public
    { Public declarations }
    USERNAME, PASSWORD, FULLNAME, USER_TYPE :string
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

uses DM;

procedure Tfrm_main.Push_Notification(Name, Title, AlertBody: string;
  FireDate: tdatetime);
var
  MyNotification: TNotification;
begin

  MyNotification := TNotification.Create;
  try
    MyNotification.Name := Name;
    MyNotification.Title := Title;
    MyNotification.AlertBody := AlertBody;
    MyNotification.FireDate := FireDate;
    MyNotification.Number := 1;
    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
end;

procedure Tfrm_main.Rectangle28Click(Sender: TObject);
begin
  popup_add_land.Visible := false;
end;

procedure Tfrm_main.btn_add_landsClick(Sender: TObject);
var
  Handle: THandle;

  land_number,tp,District,street,num_graph,num_piece,owner_name,phone,elssom,sale,lengths,note :string;
  surface :real;
  i :integer;

begin


//  if (edit_land_number.Text='') then begin
//    Rectangle43.Stroke.Color := TAlphacolorRec.red;
//    showmessage('رقم الوجه ضروري!');
//  end else begin
//
//    land_number := edit_land_number.text;
//    tp := edit_type.text;
//    District := edit_District.text;
//    surface := strtofloat(edit_surface.text);
//    street := edit_street.text;
//    num_graph := edit_num_graph.text;
//    num_piece := edit_num_piece.text;
//    owner_name := edit_owner_name.text;
//    phone := edit_phone.text;
//    elssom := edit_elssom.text;
//    sale := edit_sale.text;
//    lengths := edit_lengths.text;
//    note := edit_note.text;
//
//
//      frm_dm.FDQuery1.SQL.Clear;
//      frm_dm.FDQuery1.SQL.Add('select count(*) from lands where land_number=:land_number');
//      frm_dm.FDQuery1.ParamByName('land_number').AsWideString := land_number;
//      frm_dm.FDQuery1.Open;
//
//      i := frm_dm.FDQuery1.Fields[0].AsInteger;
//
////      showmessage(inttostr(i));
//
//      if i=1 then begin
//        Rectangle43.Stroke.Color := TAlphacolorRec.red;
//        showmessage('رقم الوجه غير متاح، جرب رقم آخر');
//      end else begin
//        frm_dm.FDQuery1.SQL.Clear;
//        frm_dm.FDQuery1.SQL.Add('INSERT INTO lands values (:land_number,:tp,:District,:surface,:street,:num_graph,:num_piece,:owner_name,:phone,:elssom,:sale,:lengths,:note)');
//        frm_dm.FDQuery1.ParamByName('land_number').AsWideString := land_number;
//        frm_dm.FDQuery1.ParamByName('tp').AsWideString := tp;
//        frm_dm.FDQuery1.ParamByName('District').AsWideString := District;
//        frm_dm.FDQuery1.ParamByName('surface').AsFloat := surface;
//        frm_dm.FDQuery1.ParamByName('street').AsWideString := street;
//        frm_dm.FDQuery1.ParamByName('num_graph').AsWideString := num_graph;
//        frm_dm.FDQuery1.ParamByName('num_piece').AsWideString := num_piece;
//        frm_dm.FDQuery1.ParamByName('owner_name').AsWideString := owner_name;
//        frm_dm.FDQuery1.ParamByName('phone').AsWideString := phone;
//        frm_dm.FDQuery1.ParamByName('elssom').AsWideString := elssom;
//        frm_dm.FDQuery1.ParamByName('sale').AsCurrency := StrToCurr(sale);
//        frm_dm.FDQuery1.ParamByName('lengths').AsWideString := lengths;
//        frm_dm.FDQuery1.ParamByName('note').AsWideString := note;
//        frm_dm.FDQuery1.Execute;
////        showmessage('تم إضافة العرض بنجاح');
//
//        Push_Notification('تم إضافة العرض بنجاح', 'تم إضافة العرض بنجاح', 'لقد تم إضافة عرض جديد في عروض الأراضي ', now);
//
//
//
//        edit_land_number.text := '';
//        edit_type.text := '';
//        edit_District.text := '';
//        edit_street.text := '';
//        edit_num_graph.text := '';
//        edit_num_piece.text := '';
//        edit_owner_name.text := '';
//        edit_phone.text := '';
//        edit_elssom.text := '';
//        edit_sale.text := '';
//        edit_lengths.text := '';
//        edit_note.text := '';
//
//        Rectangle28click(nil);
//
//
//
//        frm_dm.table_lands.Refresh;
//      end;
//  end;

    ShowNotification('My Title', 'My message', 'http://www.google.com');




//  getcurrentdir();
//  Handle := WinExec('python assets/python/sender.py', SW_HIDE);
end;

procedure Tfrm_main.Rectangle8Click(Sender: TObject);
begin
  popup_add_land.Visible := true;
end;

procedure Tfrm_main.Rect_housesClick(Sender: TObject);
begin
  current_tab.Parent := Rect_houses;
  tabcontrol1.TabIndex := 1;
end;

procedure Tfrm_main.rect_landsClick(Sender: TObject);
begin
  current_tab.Parent := rect_lands;
  tabcontrol1.TabIndex := 0;
end;

procedure Tfrm_main.Rect_salesClick(Sender: TObject);
begin
  current_tab.Parent := Rect_sales;
  tabcontrol1.TabIndex := 2;
end;

procedure Tfrm_main.ShowNotification(const Title, Message, Link: string);
var
  Info: TShellExecuteInfo;
  Handle: THandle;
begin
  FillChar(Info, SizeOf(Info), 0);
  Info.cbSize := SizeOf(Info);
  Info.fMask := SEE_MASK_NOCLOSEPROCESS;
  Info.Wnd := 0;
  Info.lpVerb := nil;
  Info.lpFile := PChar(Link);
  Info.lpParameters := nil;
  Info.lpDirectory := nil;
  Info.nShow := SW_SHOW;
  Info.hInstApp := 0;
  if ShellExecuteEx(@Info) then
  begin
    Handle := Info.hProcess;
    MessageBox(0, PChar(Message), PChar(Title), MB_OK or MB_ICONINFORMATION);
    WaitForSingleObject(Handle, INFINITE);
    CloseHandle(Handle);
  end;
end;

end.
