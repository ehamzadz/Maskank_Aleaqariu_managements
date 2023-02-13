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
  System.Notification, Winapi.MMSystem,  FMX.Media, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, FireDAC.VCLUI.Wait, Vcl.Dialogs, FMX.DialogService,
  FMX.DateTimeCtrls, DateUtils;

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
    edit_search_lands: TEdit;
    btn_show_add_lands: TRectangle;
    ColorAnimation4: TColorAnimation;
    Text15: TText;
    Rectangle10: TRectangle;
    Edit_num_recent_ticket: TEdit;
    Rectangle11: TRectangle;
    grid_lands: TStringGrid;
    Rectangle12: TRectangle;
    Rectangle14: TRectangle;
    Text18: TText;
    PopupMenu_grid_lands: TPopupMenu;
    StyleBook1: TStyleBook;
    Rectangle2: TRectangle;
    RTLFixer1: TRTLFixer;
    tab_houses: TTabItem;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    edit_search_houses: TEdit;
    btn_show_add_houses: TRectangle;
    ColorAnimation1: TColorAnimation;
    Text3: TText;
    Rectangle13: TRectangle;
    Edit2: TEdit;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Text5: TText;
    Rectangle18: TRectangle;
    grid_houses: TStringGrid;
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
    NotificationCenter1: TNotificationCenter;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    popup_add_house: TRectangle;
    Rectangle9: TRectangle;
    VertScrollBox3: TVertScrollBox;
    Rectangle33: TRectangle;
    edit_url2: TEdit;
    Rectangle51: TRectangle;
    Text28: TText;
    Rectangle52: TRectangle;
    edit_flat2: TEdit;
    Rectangle53: TRectangle;
    Text29: TText;
    edit_owner_name2: TEdit;
    Rectangle54: TRectangle;
    Text30: TText;
    Rectangle55: TRectangle;
    edit_street2: TEdit;
    Rectangle56: TRectangle;
    Text31: TText;
    edit_surface2: TEdit;
    Rectangle57: TRectangle;
    Text32: TText;
    Rectangle58: TRectangle;
    edit_house_number: TEdit;
    Rectangle59: TRectangle;
    Text33: TText;
    edit_type2: TEdit;
    Rectangle60: TRectangle;
    Text34: TText;
    Rectangle61: TRectangle;
    edit_sale2: TEdit;
    Rectangle62: TRectangle;
    Text35: TText;
    edit_marketer: TEdit;
    Rectangle63: TRectangle;
    Text36: TText;
    Rectangle64: TRectangle;
    edit_phone2: TEdit;
    Rectangle65: TRectangle;
    Text37: TText;
    edit_elssom2: TEdit;
    Rectangle66: TRectangle;
    Text38: TText;
    Text41: TText;
    Rectangle70: TRectangle;
    Text42: TText;
    ColorAnimation8: TColorAnimation;
    Rectangle71: TRectangle;
    Text43: TText;
    ColorAnimation10: TColorAnimation;
    share_to_whatsapp: TMenuItem;
    TabItem1: TTabItem;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Rectangle8: TRectangle;
    edit_note2: TEdit;
    Rectangle67: TRectangle;
    Text39: TText;
    PopupMenu_grid_houses: TPopupMenu;
    share_to_whatsapp2: TMenuItem;
    delete_record: TMenuItem;
    delete_record2: TMenuItem;
    rect_costumer_requests: TRectangle;
    ColorAnimation12: TColorAnimation;
    Image1: TImage;
    Text40: TText;
    tab_costumer_requests: TTabItem;
    Rectangle68: TRectangle;
    Rectangle69: TRectangle;
    Rectangle72: TRectangle;
    edit_search_costumer_requests: TEdit;
    Rectangle73: TRectangle;
    ColorAnimation13: TColorAnimation;
    Text44: TText;
    Rectangle74: TRectangle;
    Edit5: TEdit;
    Rectangle75: TRectangle;
    Rectangle76: TRectangle;
    Rectangle77: TRectangle;
    Text45: TText;
    Rectangle78: TRectangle;
    grid_costumer_requests: TStringGrid;
    popup_add_costumer_requests: TRectangle;
    Rectangle80: TRectangle;
    VertScrollBox4: TVertScrollBox;
    Rectangle81: TRectangle;
    edit_note3: TEdit;
    Rectangle82: TRectangle;
    Text46: TText;
    Rectangle83: TRectangle;
    edit_street3: TEdit;
    Rectangle84: TRectangle;
    Text47: TText;
    edit_follow: TEdit;
    Rectangle85: TRectangle;
    Text48: TText;
    Rectangle86: TRectangle;
    edit_request: TEdit;
    Rectangle87: TRectangle;
    Text49: TText;
    Rectangle89: TRectangle;
    edit_name3: TEdit;
    Rectangle90: TRectangle;
    Text51: TText;
    edit_phone3: TEdit;
    Rectangle91: TRectangle;
    Text52: TText;
    Rectangle92: TRectangle;
    edit_update: TEdit;
    Rectangle93: TRectangle;
    Text53: TText;
    Text59: TText;
    Rectangle101: TRectangle;
    Text60: TText;
    ColorAnimation14: TColorAnimation;
    btn_add_customer_request: TRectangle;
    Text61: TText;
    ColorAnimation15: TColorAnimation;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    PopupMenu_customer_requests: TPopupMenu;
    delete_costumer_requests: TMenuItem;
    rect_expenses: TRectangle;
    ColorAnimation16: TColorAnimation;
    Image2: TImage;
    Text50: TText;
    tab_expenses: TTabItem;
    Rectangle79: TRectangle;
    Rectangle88: TRectangle;
    Rectangle94: TRectangle;
    edit_search_expenses: TEdit;
    btn_show_add_expenses: TRectangle;
    ColorAnimation17: TColorAnimation;
    Text54: TText;
    Rectangle96: TRectangle;
    edit_total_expenses: TEdit;
    Rectangle97: TRectangle;
    Rectangle98: TRectangle;
    Rectangle99: TRectangle;
    Text55: TText;
    Rectangle100: TRectangle;
    grid_expenses: TStringGrid;
    PopupMenu_expenses: TPopupMenu;
    delete_expenses: TMenuItem;
    BindSourceDB4: TBindSourceDB;
    popup_add_expenses: TRectangle;
    Rectangle102: TRectangle;
    VertScrollBox5: TVertScrollBox;
    Rectangle105: TRectangle;
    edit_type4: TEdit;
    Rectangle106: TRectangle;
    Text57: TText;
    edit_amount: TEdit;
    Rectangle107: TRectangle;
    Text58: TText;
    Rectangle108: TRectangle;
    edit_emp_name: TEdit;
    Rectangle109: TRectangle;
    Text62: TText;
    Rectangle110: TRectangle;
    Edit10: TEdit;
    Rectangle111: TRectangle;
    Text63: TText;
    edit_invoice_num: TEdit;
    Rectangle112: TRectangle;
    Text64: TText;
    Text66: TText;
    Rectangle115: TRectangle;
    Text67: TText;
    ColorAnimation18: TColorAnimation;
    Text68: TText;
    ColorAnimation19: TColorAnimation;
    btn_add_expenses: TRectangle;
    DateEdit1: TDateEdit;
    Timer1: TTimer;
    DateEdit2: TDateEdit;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    rect_transactions: TRectangle;
    ColorAnimation20: TColorAnimation;
    Image3: TImage;
    Text56: TText;
    popup_add_transaction: TRectangle;
    Rectangle103: TRectangle;
    VertScrollBox6: TVertScrollBox;
    Rectangle104: TRectangle;
    edit_owner_customer: TEdit;
    Rectangle113: TRectangle;
    Text65: TText;
    Edit6: TEdit;
    Rectangle114: TRectangle;
    Text69: TText;
    Rectangle116: TRectangle;
    edit_note5: TEdit;
    Rectangle117: TRectangle;
    Text70: TText;
    Rectangle118: TRectangle;
    edit_customer_name5: TEdit;
    Rectangle119: TRectangle;
    Text71: TText;
    edit_offer5: TEdit;
    Rectangle120: TRectangle;
    Text72: TText;
    Text73: TText;
    Rectangle121: TRectangle;
    Text74: TText;
    ColorAnimation21: TColorAnimation;
    btn_add_transaction: TRectangle;
    Text75: TText;
    ColorAnimation22: TColorAnimation;
    tab_transactions: TTabItem;
    Rectangle123: TRectangle;
    Rectangle124: TRectangle;
    Rectangle125: TRectangle;
    edit_search_transactions: TEdit;
    Rectangle126: TRectangle;
    ColorAnimation23: TColorAnimation;
    Text76: TText;
    Rectangle128: TRectangle;
    Rectangle129: TRectangle;
    Rectangle130: TRectangle;
    Text77: TText;
    DateEdit4: TDateEdit;
    Rectangle131: TRectangle;
    grid_transactions: TStringGrid;
    BindSourceDB6: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    Rectangle95: TRectangle;
    edit_owner_name5: TEdit;
    Rectangle127: TRectangle;
    Text78: TText;
    edit_bank5: TEdit;
    Rectangle132: TRectangle;
    Text79: TText;
    DateEdit3: TDateEdit;
    PopupMenu_transactions: TPopupMenu;
    delete_transaction: TMenuItem;
    TabItem2: TTabItem;
    Rectangle122: TRectangle;
    Rectangle133: TRectangle;
    Rectangle134: TRectangle;
    Edit1: TEdit;
    Rectangle135: TRectangle;
    ColorAnimation24: TColorAnimation;
    Text80: TText;
    Rectangle136: TRectangle;
    Edit7: TEdit;
    Rectangle137: TRectangle;
    Rectangle138: TRectangle;
    Rectangle139: TRectangle;
    Text81: TText;
    Rectangle140: TRectangle;
    grid_records: TStringGrid;
    PopupMenu3: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    rect_records: TRectangle;
    ColorAnimation25: TColorAnimation;
    Image4: TImage;
    Text82: TText;
    Text83: TText;
    Text84: TText;
    Rectangle141: TRectangle;
    Text85: TText;
    Text86: TText;
    procedure Rect_housesClick(Sender: TObject);
    procedure Rect_salesClick(Sender: TObject);
    procedure rect_landsClick(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure btn_add_landsClick(Sender: TObject);
    procedure Rectangle28Click(Sender: TObject);
    procedure Push_Notification(Name,Title,AlertBody :string; FireDate: tdatetime);
    procedure ShowNotification(const Title, Message, Link: string);
    procedure edit_search_landsTyping(Sender: TObject);
//    procedure scrollToEndHZ(grid :TStringGrid;n:integer);
    procedure edit_search_housesTyping(Sender: TObject);
    procedure btn_show_add_landsClick(Sender: TObject);
    procedure Rectangle71Click(Sender: TObject);
    procedure btn_show_add_housesClick(Sender: TObject);
    procedure share_to_whatsappClick(Sender: TObject);
    procedure ClearTextFile(const FileName: string);
    procedure WriteMemoLinesToFile(const FileName: string; Memo: TMemo);
    procedure Rectangle70Click(Sender: TObject);
    procedure share_to_whatsapp2Click(Sender: TObject);
    procedure delete_recordClick(Sender: TObject);
    procedure delete_record2Click(Sender: TObject);
    procedure grid_housesEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure grid_landsEditingDone(Sender: TObject; const ACol, ARow: Integer);
    procedure rect_costumer_requestsClick(Sender: TObject);
    procedure edit_search_costumer_requestsTyping(Sender: TObject);
    procedure btn_add_customer_requestClick(Sender: TObject);
    procedure Rectangle101Click(Sender: TObject);
    procedure Rectangle73Click(Sender: TObject);
    procedure grid_costumer_requestsEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure delete_costumer_requestsClick(Sender: TObject);
    procedure rect_expensesClick(Sender: TObject);
    procedure edit_search_expensesTyping(Sender: TObject);
    procedure StringGrid1EditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure btn_add_expensesClick(Sender: TObject);
    procedure Rectangle115Click(Sender: TObject);
    procedure btn_show_add_expensesClick(Sender: TObject);
    procedure delete_expensesClick(Sender: TObject);
    procedure grid_expensesEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure grid_expensesCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure grid_landsCellDblClick(const Column: TColumn; const Row: Integer);
    procedure grid_housesCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid2CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure grid_costumer_requestsCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure tab_expensesDblClick(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure Rectangle126Click(Sender: TObject);
    procedure Rectangle122Click(Sender: TObject);
    procedure Rectangle121Click(Sender: TObject);
    procedure btn_add_transactionClick(Sender: TObject);
    procedure grid_transactionsCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure grid_transactionsEditingDone(Sender: TObject; const ACol,
      ARow: Integer);
    procedure rect_transactionsClick(Sender: TObject);
    procedure DateEdit4Change(Sender: TObject);
    procedure edit_search_transactionsTyping(Sender: TObject);
    procedure delete_transactionClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rec(type_rc: string);
    procedure rect_recordsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    USERNAME, PASSWORD, FULLNAME, USER_TYPE :string;
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

uses DM;


procedure Tfrm_main.edit_search_costumer_requestsTyping(Sender: TObject);
begin
  if (trim(edit_search_costumer_requests.text)='') then begin
    frm_dm.table_costumer_requests.Filtered := false;
  end else begin
    frm_dm.table_costumer_requests.Filtered := false;
    frm_dm.table_costumer_requests.Filter := ' id_costumer like '''+edit_search_costumer_requests.Text+'%''';
    frm_dm.table_costumer_requests.Filtered := true;
  end;
end;

procedure Tfrm_main.edit_search_expensesTyping(Sender: TObject);
begin
  if (trim(edit_search_expenses.text)='') then begin
    frm_dm.FDQuery2.Filtered := false;
  end else begin
    frm_dm.FDQuery2.Filtered := false;
    frm_dm.FDQuery2.Filter := ' id_expenses like '''+edit_search_expenses.Text+'%''';
    frm_dm.FDQuery2.Filtered := true;
  end;
end;

procedure Tfrm_main.edit_search_housesTyping(Sender: TObject);
begin
  if (trim(edit_search_houses.text)='') then begin
    frm_dm.table_houses.Filtered := false;
  end else begin
    frm_dm.table_houses.Filtered := false;
    frm_dm.table_houses.Filter := ' house_num like '''+edit_search_houses.Text+'%''';
    frm_dm.table_houses.Filtered := true;
  end;
end;

procedure Tfrm_main.edit_search_landsTyping(Sender: TObject);
begin

  if (trim(edit_search_lands.text)='') then begin
    frm_dm.table_lands.Filtered := false;
  end else begin
    frm_dm.table_lands.Filtered := false;
    frm_dm.table_lands.Filter := ' land_number like '''+edit_search_lands.Text+'%''';
    frm_dm.table_lands.Filtered := true;
  end;

//  scrollToEndHZ(grid_lands,7);

end;

procedure Tfrm_main.edit_search_transactionsTyping(Sender: TObject);
begin
  if (trim(edit_search_transactions.text)='') then begin
    frm_dm.table_transactions.Filtered := false;
  end else begin
    frm_dm.table_transactions.Filtered := false;
    frm_dm.table_transactions.Filter := ' id_transaction like '''+edit_search_transactions.Text+'%''';
    frm_dm.table_transactions.Filtered := true;
  end;
end;

procedure Tfrm_main.FormResize(Sender: TObject);
var
  form_width, grid_lands_width, grid_houses_width, grid_expenses_width, grid_costumer_requests_width, grid_transactions_width, rest_width, grid_records_width: real;
begin

  // Auto Adjust Columns width for ***LANDS*** StringGrid////////////////////////////////////////////////////////
  form_width := frm_main.Width;                                                                               ///
  grid_lands_width := form_width - 240 - 60 - 130;                                                              ///
  rest_width := grid_lands_width;                                                                        ///
  LinkGridToDataSourceBindSourceDB1.Columns[13].Width := 70;
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[13].Width;                              ///
  LinkGridToDataSourceBindSourceDB1.Columns[12].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[12].Width;                              ///
  LinkGridToDataSourceBindSourceDB1.Columns[11].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[11].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[10].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[10].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[9].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[9].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[8].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[8].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[7].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[7].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[6].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[6].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[5].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[5].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[4].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[4].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[3].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[3].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[2].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[2].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[1].Width := round((8.66) * grid_lands_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB1.Columns[1].Width;                             ///
  LinkGridToDataSourceBindSourceDB1.Columns[0].Width := round(rest_width);                              ///
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Auto Adjust Columns width for ***HOUSES*** StringGrid////////////////////////////////////////////////////////
  form_width := frm_main.Width;                                                                               ///
  grid_houses_width := form_width - 240 - 60 - 102;                                                              ///
  rest_width := grid_houses_width;                                                                        ///
  LinkGridToDataSourceBindSourceDB2.Columns[11].Width := 70;
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[11].Width;                              ///
  LinkGridToDataSourceBindSourceDB2.Columns[10].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[10].Width;                              ///
  LinkGridToDataSourceBindSourceDB2.Columns[9].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[9].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[8].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[8].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[7].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[7].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[6].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[6].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[5].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[5].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[4].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[4].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[3].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[3].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[2].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[2].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[1].Width := round((10) * grid_houses_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB2.Columns[1].Width;                             ///
  LinkGridToDataSourceBindSourceDB2.Columns[0].Width := round(rest_width);                              ///
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////


  // Auto Adjust Columns width for ***Costumer_requests*** StringGrid////////////////////////////////////////////////////////
  form_width := frm_main.Width;                                                                               ///
  grid_costumer_requests_width := form_width - 240 - 60 - 33;                                                              ///
  rest_width := grid_costumer_requests_width;                                                                        ///
  LinkGridToDataSourceBindSourceDB3.Columns[7].Width := 70;
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[7].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[6].Width := round((14.28) * grid_costumer_requests_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[6].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[5].Width := round((14.28) * grid_costumer_requests_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[5].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[4].Width := round((14.28) * grid_costumer_requests_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[4].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[3].Width := round((14.28) * grid_costumer_requests_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[3].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[2].Width := round((14.28) * grid_costumer_requests_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[2].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[1].Width := round((14.28) * grid_costumer_requests_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[1].Width;                             ///
  LinkGridToDataSourceBindSourceDB3.Columns[0].Width := round(rest_width);                              ///
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////


  // Auto Adjust Columns width for ***RECORDS*** StringGrid////////////////////////////////////////////////////////
  form_width := frm_main.Width;                                                                               ///
  grid_records_width := form_width - 240 - 60 - 150 - 150 - 120;                                                              ///
  rest_width := grid_records_width;                                                                        ///
  LinkGridToDataSourceBindSourceDB7.Columns[0].Width := 150;                                              ///
  LinkGridToDataSourceBindSourceDB7.Columns[1].Width := 150;                                             ///
  LinkGridToDataSourceBindSourceDB7.Columns[3].Width := 70;                                              ///
  LinkGridToDataSourceBindSourceDB7.Columns[2].Width := round(rest_width);

  end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  text85.Text := 'إسم المستخدم';
  text86.Text := USERNAME;
end;

procedure Tfrm_main.grid_costumer_requestsCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.grid_costumer_requestsEditingDone(Sender: TObject;
  const ACol, ARow: Integer);
begin
  frm_dm.table_costumer_requests.Refresh;
  timer1.Enabled := true;
end;

procedure Tfrm_main.grid_expensesCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.grid_expensesEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  frm_dm.table_expenses.Refresh;
  timer1.Enabled := true;
end;

procedure Tfrm_main.grid_housesCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.grid_housesEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  frm_dm.table_houses.Refresh;
  timer1.Enabled := true;
end;

procedure Tfrm_main.grid_landsCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.grid_landsEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  frm_dm.table_lands.Refresh;
  timer1.Enabled := true;
end;

procedure Tfrm_main.grid_transactionsCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.grid_transactionsEditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  frm_dm.table_transactions.Refresh;
  timer1.Enabled := true;
end;

procedure Tfrm_main.Push_Notification(Name, Title, AlertBody: string;
  FireDate: tdatetime);
var
  MyNotification: TNotification;
  Icon: TBitmap;
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

procedure Tfrm_main.rec(type_rc: string);
var
  id_rc :integer;
begin

  frm_dm.FDQuery1.SQL.Clear;
  frm_dm.FDQuery1.SQL.Add('select top 1 * from records order by id_rc desc');
  frm_dm.FDQuery1.open;

  id_rc := frm_dm.FDQuery1.FieldByName('id_rc').AsInteger + 1;

  frm_dm.FDQuery1.SQL.Clear;
  frm_dm.FDQuery1.SQL.Add('insert into records values(:id_rc, :type, :date, :usr)');
  frm_dm.FDQuery1.ParamByName('id_rc').AsInteger := id_rc;
  frm_dm.FDQuery1.ParamByName('type').AswideString := type_rc;
  frm_dm.FDQuery1.ParamByName('date').AsDateTime := now;
  frm_dm.FDQuery1.ParamByName('usr').AswideString := USERNAME;
  frm_dm.FDQuery1.Execute;
end;

procedure Tfrm_main.btn_show_add_expensesClick(Sender: TObject);
begin
  popup_add_expenses.Visible := true;
end;

procedure Tfrm_main.btn_show_add_housesClick(Sender: TObject);
begin
  popup_add_house.Visible := true;
        edit_house_number.text := '';
        edit_type2.text := '';
        edit_street2.text := '';
        edit_flat2.text := '';
        edit_owner_name2.text := '';
        edit_phone2.text := '';
        edit_elssom2.text := '';
        edit_sale2.text := '';
        edit_marketer.text := '';
        edit_note2.text := '';
end;

procedure Tfrm_main.btn_show_add_landsClick(Sender: TObject);
begin
  popup_add_land.Visible := true;
        edit_land_number.text := '';
        edit_type.text := '';
        edit_District.text := '';
        edit_street.text := '';
        edit_num_graph.text := '';
        edit_num_piece.text := '';
        edit_owner_name.text := '';
        edit_phone.text := '';
        edit_elssom.text := '';
        edit_sale.text := '';
        edit_lengths.text := '';
        edit_note.text := '';
end;

procedure Tfrm_main.ClearTextFile(const FileName: string);
var
  FileStream: TFileStream;
begin
  FileStream := TFileStream.Create(FileName, fmOpenWrite or fmShareDenyNone);
  try
    FileStream.Size := 0;
  finally
    FileStream.Free;
  end;
end;

procedure Tfrm_main.DateEdit2Change(Sender: TObject);
var
  day, month, year, N :integer;
  SUM, enddt,startdt :string;
begin
//  day := dayOf(dateedit2.Date);

  month := monthof(dateedit2.Date);
  year := yearOf(dateedit2.Date);

  case month of
    1 : N := 31;
    2 : N := 28;
    3 : N := 31;
    4 : N := 30;
    5 : N := 31;
    6 : N := 30;
    7 : N := 31;
    8 : N := 31;
    9 : N := 30;
    10 : N := 31;
    11 : N := 30;
    12 : N := 31;
  end;

  enddt := inttostr(N)+'/' + inttostr(month)+'/'+inttostr(year);
  startdt := '1/'+inttostr(month)+'/'+inttostr(year);

//  showmessage(enddt+'    -   '+startdt);
//  showmessage(inttostr(day)+'/'+inttostr(month)+'/'+inttostr(year));

  frm_dm.FDQuery2.Active := false;
  frm_dm.FDQuery2.sql.Clear;
  frm_dm.FDQuery2.sql.Add('select * from expenses where (date>:startdt) and date<:enddt');
  frm_dm.FDQuery2.ParamByName('STARTDT').asdate := strtodate(startdt);
  frm_dm.FDQuery2.ParamByName('ENDDT').asdate := strtodate(enddt);
  frm_dm.FDQuery2.Open;
  frm_dm.FDQuery2.Active := true;

end;

procedure Tfrm_main.DateEdit4Change(Sender: TObject);
var
  day, month, year, N :integer;
  SUM, enddt,startdt, script:string;
begin
  day := dayOf(dateedit2.Date);
//
  month := monthof(dateedit4.Date);
  year := yearOf(dateedit4.Date);

  case month of
    1 : N := 31;
    2 : N := 20;
    3 : N := 31;
    4 : N := 30;
    5 : N := 31;
    6 : N := 30;
    7 : N := 31;
    8 : N := 31;
    9 : N := 30;
    10 : N := 31;
    11 : N := 30;
    12 : N := 31;
  end;

  enddt := inttostr(N)+'/' + inttostr(month)+'/'+inttostr(year);
  startdt := '1/'+inttostr(month)+'/'+inttostr(year);

  frm_dm.table_transactions.Filtered := false;
  frm_dm.table_transactions.Filter := '  MONTH(date_up) = '+inttostr(month)+' AND YEAR(date_up) = '+inttostr(year);
  frm_dm.table_transactions.Filtered := true;

end;

procedure Tfrm_main.delete_costumer_requestsClick(Sender: TObject);
var
  num :string;
begin

  num := grid_costumer_requests.Cells[7,grid_costumer_requests.Selected];

   if MessageDlg('هل أنت متأكد من أنك تريد مسح هذا الطلب ؟',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      try
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('DELETE FROM customer_requests where id_costumer=:id_costumer');
        frm_dm.FDQuery1.ParamByName('id_costumer').AsString := num;
        frm_dm.FDQuery1.ExecSQL;
      finally
        frm_dm.table_costumer_requests.Refresh;
        rec('تم المسح من طلبات العملاء، رقم :'+ num);
        Push_Notification('تم مسح الطلب بنجاح', 'تم مسح الطلب بنجاح', '', now);
      end;
    end;

end;

procedure Tfrm_main.delete_expensesClick(Sender: TObject);
var
  num :string;
begin

  num := grid_expenses.Cells[5,grid_expenses.Selected];

   if MessageDlg('هل أنت متأكد من أنك تريد مسح هذا المصروف ؟',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      try
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('DELETE FROM expenses where id_expenses=:id_expenses');
        frm_dm.FDQuery1.ParamByName('id_expenses').asinteger := strtoint(num);
        frm_dm.FDQuery1.ExecSQL;
      finally
        frm_dm.table_expenses.Refresh;
        rec('تم المسح من المصاريف، رقم :'+ num);
        Push_Notification('تم مسح المصروف بنجاح', 'تم مسح المصروف بنجاح', '', now);
      end;
    end;

end;

procedure Tfrm_main.delete_record2Click(Sender: TObject);
var
  num :string;
begin

  num := grid_houses.Cells[11,grid_lands.Selected];

   if MessageDlg('هل أنت متأكد من أنك تريد مسح هذا العرض ؟',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      try
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('DELETE FROM houses where house_num=:house_num');
        frm_dm.FDQuery1.ParamByName('house_num').AsString := num;
        frm_dm.FDQuery1.ExecSQL;
      finally
        frm_dm.table_houses.Refresh;
        Push_Notification('تم مسح العرض بنجاح', 'تم مسح العرض بنجاح', 'لقد تم مسح عرض من عروض المكتب فلل وأدوار ودبلكسات', now);
      end;
    end;

end;

procedure Tfrm_main.delete_recordClick(Sender: TObject);
var
  num :string;
begin

  num := grid_lands.Cells[13,grid_lands.Selected];

   if MessageDlg('هل أنت متأكد من أنك تريد مسح هذا العرض ؟',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      try
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('DELETE FROM lands where land_number=:land_number');
        frm_dm.FDQuery1.ParamByName('land_number').AsString := num;
        frm_dm.FDQuery1.ExecSQL;
        rec('تم المسح من عروض الأراضي رقم :'+ num);
      finally
        frm_dm.table_lands.Refresh;
        rec('تم المسح من عروض الأراضي رقم :'+ num);
        Push_Notification('تم مسح العرض بنجاح', 'تم مسح العرض بنجاح', 'لقد تم مسح عرض من عروض الأراضي', now);
      end;
    end;
end;

procedure Tfrm_main.delete_transactionClick(Sender: TObject);

var
  id_transaction :string;
begin

  id_transaction := grid_transactions.Cells[7,grid_transactions.Selected];

   if MessageDlg('هل أنت متأكد من أنك تريد مسحه ؟',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      try
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('DELETE FROM transactions where id_transaction=:id_transaction');
        frm_dm.FDQuery1.ParamByName('id_transaction').asinteger := strtoint(id_transaction);
        frm_dm.FDQuery1.ExecSQL;
      finally
        frm_dm.table_expenses.Refresh;
        rec('تم المسح من المعاملات المرفوعة رقم :'+ id_transaction);
        Push_Notification('تم مسحه  بنجاح', 'تم مسحه  بنجاح', '', now);
      end;
    end;

end;

procedure Tfrm_main.Rectangle101Click(Sender: TObject);
begin
  popup_add_costumer_requests.Visible := false;
end;

procedure Tfrm_main.Rectangle115Click(Sender: TObject);
begin
  popup_add_expenses.Visible := false;
end;

procedure Tfrm_main.Rectangle121Click(Sender: TObject);
begin
  popup_add_transaction.Visible := false;
end;

procedure Tfrm_main.Rectangle122Click(Sender: TObject);
var

  date,invoice_num,tp,amount,emp_name :string;

  i,id_expenses :integer;

  Handle: THandle;

begin


  if (edit_amount.text='') then begin
    Rectangle107.Stroke.Color := TAlphacolorRec.red;
    showmessage('حقل ضروري!');
  end else begin
//
    date := dateedit1.text;
    invoice_num := edit_invoice_num.text;
    tp := edit_type4.text;
    amount := edit_amount.text;
    emp_name := edit_emp_name.text;


      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('select top 1 * from expenses order by id_expenses DESC');
      frm_dm.FDQuery1.Open;
      id_expenses := frm_dm.FDQuery1.Fields[0].AsInteger+1;


      if i=1 then begin
        Rectangle43.Stroke.Color := TAlphacolorRec.red;
        showmessage('حطأ مجهول يستوجب الإتصال بالمبرمج');
      end else begin
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('INSERT INTO expenses values (:id_expenses,:date,:invoice_num,:tp,:amount,:emp_name)');
        frm_dm.FDQuery1.ParamByName('id_expenses').asinteger := id_expenses;
        frm_dm.FDQuery1.ParamByName('date').asdate := strtodate(date);
        frm_dm.FDQuery1.ParamByName('invoice_num').AsWideString := invoice_num;
        frm_dm.FDQuery1.ParamByName('tp').AsWideString := tp;
        frm_dm.FDQuery1.ParamByName('amount').AsCurrency := strtocurr(amount);
        frm_dm.FDQuery1.ParamByName('emp_name').AsWideString := emp_name;
        frm_dm.FDQuery1.Execute;
//        showmessage('تم إضافة العرض بنجاح');

        Push_Notification('تم إضافة المصروف بنجاح', 'تم إضافة المصروف بنجاح', '', now);


        edit_invoice_num.text := '';
        edit_type4.text := '';
        edit_amount.text := '';
        edit_emp_name.text := '';

        popup_add_expenses.Visible := false;

        frm_dm.table_expenses.Refresh;
//        rec('تم الإضافة في عروض المكتب فلل أدوار ودبلكسات، رقم: '+ house_number);
      end;
  end;


end;

procedure Tfrm_main.Rectangle126Click(Sender: TObject);
begin
  popup_add_transaction.Visible := true;
end;

procedure Tfrm_main.Rectangle28Click(Sender: TObject);
begin
  popup_add_land.Visible := false;
end;

procedure Tfrm_main.Rectangle70Click(Sender: TObject);
begin
  popup_add_house.Visible := false;
end;

procedure Tfrm_main.Rectangle71Click(Sender: TObject);
var
  Handle: THandle;

  house_number,tp,street,surface,owner_name,phone,elssom,sale,flat,note,marketer,url :string;

  i :integer;

begin


  if (edit_house_number.Text='') then begin
    Rectangle59.Stroke.Color := TAlphacolorRec.red;
    showmessage('رقم الوجه ضروري!');
  end else begin

    house_number := edit_house_number.text;
    tp := edit_type2.text;
    surface := edit_surface2.text;
    street := edit_street2.text;
    owner_name := edit_owner_name2.text;
    phone := edit_phone2.text;
    elssom := edit_elssom2.text;
    sale := edit_sale2.text;
    flat := edit_flat2.text;
    note := edit_note2.text;
    marketer := edit_marketer.text;
    url := edit_url2.text;

      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('select count(*) from houses where house_num=:house_num');
      frm_dm.FDQuery1.ParamByName('house_num').AsWideString := house_number;
      frm_dm.FDQuery1.Open;

      i := frm_dm.FDQuery1.Fields[0].AsInteger;

//      showmessage(inttostr(i));

      if i=1 then begin
        Rectangle59.Stroke.Color := TAlphacolorRec.red;
        showmessage('رقم الوجه غير متاح، جرب رقم آخر');
      end else begin
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('INSERT INTO houses values (:house_number,:tp,:street,:surface,:flat,:owner_name,:phone,:elssom,:sale,:marketer,:note,:url)');
        frm_dm.FDQuery1.ParamByName('house_number').AsWideString := house_number;
        frm_dm.FDQuery1.ParamByName('tp').AsWideString := tp;
        frm_dm.FDQuery1.ParamByName('street').AsWideString := street;
        frm_dm.FDQuery1.ParamByName('surface').AsWideString := surface;
        frm_dm.FDQuery1.ParamByName('flat').AsWideString := flat;
        frm_dm.FDQuery1.ParamByName('owner_name').AsWideString := owner_name;
        frm_dm.FDQuery1.ParamByName('phone').AsWideString := phone;
        frm_dm.FDQuery1.ParamByName('elssom').AsWideString := elssom;
        frm_dm.FDQuery1.ParamByName('sale').AsWideString := sale;
        frm_dm.FDQuery1.ParamByName('marketer').AsWideString := marketer;
        frm_dm.FDQuery1.ParamByName('note').AsWideString := note;
        frm_dm.FDQuery1.ParamByName('url').AsWideString := url;
        frm_dm.FDQuery1.Execute;
//        showmessage('تم إضافة العرض بنجاح');

        Push_Notification('تم إضافة العرض بنجاح', 'تم إضافة العرض بنجاح', 'لقد تم إضافة عرض جديد في عروض المكتب فلل وأدوار ودبلكسات', now);


        edit_house_number.text := '';
        edit_type2.text := '';
        edit_street2.text := '';
        edit_flat2.text := '';
        edit_owner_name2.text := '';
        edit_phone2.text := '';
        edit_elssom2.text := '';
        edit_sale2.text := '';
        edit_marketer.text := '';
        edit_note2.text := '';

        popup_add_house.Visible := false;

        frm_dm.table_houses.Refresh;
        rec('تم الإضافة في عروض المكتب ، رقم: '+ house_number);
      end;
  end;

end;

procedure Tfrm_main.Rectangle73Click(Sender: TObject);
begin
  popup_add_costumer_requests.Visible := true;
end;

procedure Tfrm_main.btn_add_customer_requestClick(Sender: TObject);
var
  Handle: THandle;

  fullName,phone,request,street,follow,note,update :string;

  i,id_costumer :integer;

begin


  if (edit_name3.Text='') then begin
//    Rectangle90.Stroke.Color := TAlphacolorRec.red;
//    showmessage('رقم الوجه ضروري!');
  end else begin

    fullName := edit_name3.text;
    phone := edit_phone3.text;
    request := edit_request.text;
    street := edit_street3.text;
    follow := edit_follow.text;
    note := edit_note3.text;
    update := edit_update.text;

      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('select count(*) from customer_requests where id_costumer=:id_costumer');
      frm_dm.FDQuery1.ParamByName('id_costumer').asinteger := id_costumer;
      frm_dm.FDQuery1.Open;

      i := frm_dm.FDQuery1.Fields[0].AsInteger;

//      showmessage(inttostr(i));

      if i=1 then begin
        Rectangle59.Stroke.Color := TAlphacolorRec.red;
        showmessage('رقم الوجه غير متاح، جرب رقم آخر');
      end else begin

        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('select top 1 id_costumer from customer_requests order by id_costumer DESC');
        frm_dm.FDQuery1.Open;

        i := frm_dm.FDQuery1.Fields[0].AsInteger;

        id_costumer := i+1;

        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('INSERT INTO customer_requests values (:id_costumer,:fullName,:phone,:request,:street,:follow,:note,:update)');
        frm_dm.FDQuery1.ParamByName('id_costumer').asinteger := id_costumer;
        frm_dm.FDQuery1.ParamByName('fullName').AsWideString := fullName;
        frm_dm.FDQuery1.ParamByName('phone').AsWideString := phone;
        frm_dm.FDQuery1.ParamByName('request').AsWideString := request;
        frm_dm.FDQuery1.ParamByName('street').AsWideString := street;
        frm_dm.FDQuery1.ParamByName('follow').AsWideString := follow;
        frm_dm.FDQuery1.ParamByName('note').AsWideString := note;
        frm_dm.FDQuery1.ParamByName('update').AsWideString := update;
        frm_dm.FDQuery1.Execute;
//        showmessage('تم إضافة العرض بنجاح');

        Push_Notification('تم إضافة الطلب بنجاح', 'تم إضافة الطلب بنجاح', 'تم إضافة الطلب بنجاح', now);

        edit_name3.text :='';
        edit_phone3.text :='';
        edit_request.text :='';
        edit_street3.text :='';
        edit_follow.text :='';
        edit_note3.text :='';
        edit_update.text :='';

        popup_add_costumer_requests.Visible := false;

        frm_dm.table_costumer_requests.Refresh;
        rec('تم الإضافة في طلبات العملاء، رقم: '+ inttostr(id_costumer));
      end;
  end;
end;

procedure Tfrm_main.btn_add_expensesClick(Sender: TObject);
var

  date,invoice_num,tp,amount,emp_name :string;

  i,id_expenses :integer;

  Handle: THandle;

begin


  if (edit_amount.text='') then begin
    Rectangle107.Stroke.Color := TAlphacolorRec.red;
    showmessage('حقل ضروري!');
  end else begin
//
    date := dateedit1.text;
    invoice_num := edit_invoice_num.text;
    tp := edit_type4.text;
    amount := edit_amount.text;
    emp_name := edit_emp_name.text;


      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('select top 1 * from expenses order by id_expenses DESC');
      frm_dm.FDQuery1.Open;
      id_expenses := frm_dm.FDQuery1.Fields[0].AsInteger+1;


      if i=1 then begin
        Rectangle43.Stroke.Color := TAlphacolorRec.red;
        showmessage('حطأ مجهول يستوجب الإتصال بالمبرمج');
      end else begin
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('INSERT INTO expenses values (:id_expenses,:date,:invoice_num,:tp,:amount,:emp_name)');
        frm_dm.FDQuery1.ParamByName('id_expenses').asinteger := id_expenses;
        frm_dm.FDQuery1.ParamByName('date').asdate := strtodate(date);
        frm_dm.FDQuery1.ParamByName('invoice_num').AsWideString := invoice_num;
        frm_dm.FDQuery1.ParamByName('tp').AsWideString := tp;
        frm_dm.FDQuery1.ParamByName('amount').AsCurrency := strtocurr(amount);
        frm_dm.FDQuery1.ParamByName('emp_name').AsWideString := emp_name;
        frm_dm.FDQuery1.Execute;
//        showmessage('تم إضافة العرض بنجاح');

        Push_Notification('تم إضافة المصروف بنجاح', 'تم إضافة المصروف بنجاح', '', now);


        edit_invoice_num.text := '';
        edit_type4.text := '';
        edit_amount.text := '';
        edit_emp_name.text := '';

        popup_add_expenses.Visible := false;

        frm_dm.table_expenses.Refresh;
        rec('تم الإضافة في المصاريف، رقم: '+ inttostr(id_expenses));
      end;
  end;

end;

procedure Tfrm_main.btn_add_landsClick(Sender: TObject);
var

  land_number,tp,District,surface,street,num_graph,num_piece,owner_name,phone,elssom,sale,lengths,note :string;

  i :integer;

  Handle: THandle;

begin


  if (edit_land_number.Text='') then begin
    Rectangle43.Stroke.Color := TAlphacolorRec.red;
    showmessage('رقم الوجه ضروري!');
  end else begin

    land_number := edit_land_number.text;
    tp := edit_type.text;
    District := edit_District.text;
    surface := edit_surface.text;
    street := edit_street.text;
    num_graph := edit_num_graph.text;
    num_piece := edit_num_piece.text;
    owner_name := edit_owner_name.text;
    phone := edit_phone.text;
    elssom := edit_elssom.text;
    sale := edit_sale.text;
    lengths := edit_lengths.text;
    note := edit_note.text;


      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('select count(*) from lands where land_number=:land_number');
      frm_dm.FDQuery1.ParamByName('land_number').AsWideString := land_number;
      frm_dm.FDQuery1.Open;

      i := frm_dm.FDQuery1.Fields[0].AsInteger;

      showmessage(inttostr(1));

      if i=1 then begin
        Rectangle43.Stroke.Color := TAlphacolorRec.red;
        showmessage('رقم الوجه غير متاح، جرب رقم آخر');
      end else begin
        frm_dm.FDQuery1.SQL.Clear;
        frm_dm.FDQuery1.SQL.Add('INSERT INTO lands values (:land_number,:tp,:District,:surface,:street,:num_graph,:num_piece,:owner_name,:phone,:elssom,:sale,:lengths,:note,:url)');
        frm_dm.FDQuery1.ParamByName('land_number').AsWideString := land_number;
        frm_dm.FDQuery1.ParamByName('tp').AsWideString := tp;
        frm_dm.FDQuery1.ParamByName('District').AsWideString := District;
        frm_dm.FDQuery1.ParamByName('surface').AsWideString := surface;
        frm_dm.FDQuery1.ParamByName('street').AsWideString := street;
        frm_dm.FDQuery1.ParamByName('num_graph').AsWideString := num_graph;
        frm_dm.FDQuery1.ParamByName('num_piece').AsWideString := num_piece;
        frm_dm.FDQuery1.ParamByName('owner_name').AsWideString := owner_name;
        frm_dm.FDQuery1.ParamByName('phone').AsWideString := phone;
        frm_dm.FDQuery1.ParamByName('elssom').AsWideString := elssom;
        frm_dm.FDQuery1.ParamByName('sale').AsWideString := sale;
        frm_dm.FDQuery1.ParamByName('lengths').AsWideString := lengths;
        frm_dm.FDQuery1.ParamByName('note').AsWideString := note;
        frm_dm.FDQuery1.ParamByName('url').AsWideString := '';
        showmessage(inttostr(11));

        frm_dm.FDQuery1.Execute;
//        showmessage('تم إضافة العرض بنجاح');

        Push_Notification('تم إضافة العرض بنجاح', 'تم إضافة العرض بنجاح', 'لقد تم إضافة عرض جديد في عروض الأراضي ', now);


      showmessage(inttostr(2));

        edit_land_number.text := '';
        edit_type.text := '';
        edit_District.text := '';
        edit_street.text := '';
        edit_num_graph.text := '';
        edit_num_piece.text := '';
        edit_owner_name.text := '';
        edit_phone.text := '';
        edit_elssom.text := '';
        edit_sale.text := '';
        edit_lengths.text := '';
        edit_note.text := '';

        popup_add_land.Visible := false;

        frm_dm.table_lands.Refresh;
        rec('تم الإضافة في عروض الأراضي، رقم: '+ land_number);
      end;
  end;
//  getcurrentdir();
//  Handle := WinExec('python assets/python/sender.py', SW_HIDE);
end;

procedure Tfrm_main.btn_add_transactionClick(Sender: TObject);
var

  customer_name,offer,owner_name,bank,owner_customer,date_up,note :string;

  id_transaction :integer;

  Handle: THandle;

begin


  if (edit_customer_name5.Text='') then begin
    Rectangle43.Stroke.Color := TAlphacolorRec.red;
    showmessage('رقم الوجه ضروري!');
  end else begin


      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('select * from transactions order by id_transaction DESC');
      frm_dm.FDQuery1.Open;

      id_transaction := frm_dm.FDQuery1.Fields[0].AsInteger+1;



     customer_name   := edit_customer_name5.text;
     offer           := edit_offer5.text;
     owner_name      := edit_owner_name5.text;
     bank            := edit_bank5.text;
     owner_customer  := edit_owner_customer.text;
     date_up         := dateedit3.Text;
     note            := edit_note5.text;


      frm_dm.FDQuery1.SQL.Clear;
      frm_dm.FDQuery1.SQL.Add('INSERT INTO transactions values (:id_transaction,:customer_name,:offer,:owner_name,:bank,:owner_customer,:date_up,:note)');
      frm_dm.FDQuery1.ParamByName('id_transaction').asinteger := id_transaction;
      frm_dm.FDQuery1.ParamByName('customer_name').AsWideString := customer_name;
      frm_dm.FDQuery1.ParamByName('offer').AsWideString := offer;
      frm_dm.FDQuery1.ParamByName('owner_name').AsWideString := owner_name;
      frm_dm.FDQuery1.ParamByName('bank').AsWideString := bank;
      frm_dm.FDQuery1.ParamByName('owner_customer').AsWideString := owner_customer;
      frm_dm.FDQuery1.ParamByName('date_up').asdate := strtodate(date_up);
      frm_dm.FDQuery1.ParamByName('note').AsWideString := note;
      frm_dm.FDQuery1.Execute;

      Push_Notification('تم', 'تم الإضافة بنجاح', '', now);

      edit_customer_name5.text := '';
      edit_offer5.text := '';
      edit_owner_name5.text := '';
      edit_bank5.text := '';
      edit_owner_customer.text := '';
      edit_note5.text := '';

      popup_add_transaction.Visible := false;

      frm_dm.table_transactions.Refresh;


      rec('تم الإضافة في المعاملات المرفوعة، رقم: '+ inttostr(id_transaction));
  end;

end;

procedure Tfrm_main.Rectangle8Click(Sender: TObject);
begin
  popup_add_land.Visible := true;
end;

procedure Tfrm_main.rect_costumer_requestsClick(Sender: TObject);
begin
  current_tab.Parent := Rect_costumer_requests;
  tabcontrol1.TabIndex := 4;
end;

procedure Tfrm_main.rect_expensesClick(Sender: TObject);
begin
  current_tab.Parent := Rect_expenses;
  tabcontrol1.TabIndex := 5;
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

procedure Tfrm_main.rect_recordsClick(Sender: TObject);
begin
  current_tab.Parent := rect_records;
  tabcontrol1.TabIndex := 7;
end;

procedure Tfrm_main.Rect_salesClick(Sender: TObject);
begin
  current_tab.Parent := Rect_sales;
  tabcontrol1.TabIndex := 2;
end;
procedure Tfrm_main.rect_transactionsClick(Sender: TObject);
begin
  current_tab.Parent := Rect_transactions;
  tabcontrol1.TabIndex := 6;
end;

procedure Tfrm_main.share_to_whatsapp2Click(Sender: TObject);
var
  Handle: THandle;
  num, msg :string;
begin

  if FileExists('assets/python/sender.py') and FileExists('assets/python/contacts.py') and FileExists('assets/python/messages.py') then begin


    RenameFile('assets/python/contacts.py','assets/python/contacts.txt');
    RenameFile('assets/python/messages.py','assets/python/messages.txt');

    ClearTextFile('assets/python/contacts.txt');
    ClearTextFile('assets/python/messages.txt');
//
//    DeleteFile('assets/python/contacts.py');
//    DeleteFile('assets/python/messages.py');

    memo1.Lines.Clear;

    num := grid_houses.Cells[11,grid_houses.Selected];


    msg := 'msg = "\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"عرض جديد ومميز"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"رقم: '+grid_houses.Cells[11,grid_houses.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"النوع: '+grid_houses.Cells[10,grid_houses.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+" - "';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"حي '+grid_houses.Cells[9,grid_houses.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"مساحة '+grid_houses.Cells[8,grid_houses.Selected]+'م"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+" - المسطح '+grid_houses.Cells[7,grid_houses.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"'+grid_houses.Cells[1,grid_houses.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[6,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[5,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[4,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[3,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[2,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[1,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\nصور العقار\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"'+grid_houses.Cells[0,grid_houses.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);


    Memo1.Lines.AddStrings(Memo3.Lines);

    Memo1.Lines.SaveToFile('assets/python/messages.txt', TEncoding.UTF8);
    Memo2.Lines.SaveToFile('assets/python/contacts.txt', TEncoding.UTF8);

    RenameFile('assets/python/contacts.txt','assets/python/contacts.py');
    RenameFile('assets/python/messages.txt','assets/python/messages.py');

    Memo1.Lines.Assign(Memo3.Lines);

    Handle := WinExec('python assets/python/sender.py', SW_HIDE);

    rec( 'تم مشاركة عرض من عروض المكتب رقم:'+ num);

  end else begin
    showmessage('بعض الملفات ناقصة');
  end;

end;

procedure Tfrm_main.share_to_whatsappClick(Sender: TObject);
var
  Handle: THandle;
  num, msg :string;
begin

  if FileExists('assets/python/sender.py') and FileExists('assets/python/contacts.py') and FileExists('assets/python/messages.py') then begin


    RenameFile('assets/python/contacts.py','assets/python/contacts.txt');
    RenameFile('assets/python/messages.py','assets/python/messages.txt');

    ClearTextFile('assets/python/contacts.txt');
    ClearTextFile('assets/python/messages.txt');
//
//    DeleteFile('assets/python/contacts.py');
//    DeleteFile('assets/python/messages.py');

    memo1.Lines.Clear;

    num := grid_lands.Cells[12,grid_lands.Selected];


    msg := 'msg = "\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"عرض جديد ومميز"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"رقم: '+grid_lands.Cells[13,grid_lands.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"النوع: '+grid_lands.Cells[12,grid_lands.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+" - "';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"حي '+grid_lands.Cells[11,grid_lands.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"مساحة '+grid_lands.Cells[10,grid_lands.Selected]+'م"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+" - شارع '+grid_lands.Cells[9,grid_lands.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"'+grid_lands.Cells[1,grid_lands.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[6,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[5,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[4,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[3,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[2,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"\n"';
//    Memo1.Lines.Add(msg);
//    msg := 'msg = msg+"'+grid_lands.Cells[1,grid_lands.Selected]+'"';
//    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\nصور العقار\n"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"'+grid_lands.Cells[0,grid_lands.Selected]+'"';
    Memo1.Lines.Add(msg);
    msg := 'msg = msg+"\n"';
    Memo1.Lines.Add(msg);


    Memo1.Lines.AddStrings(Memo3.Lines);

    Memo1.Lines.SaveToFile('assets/python/messages.txt', TEncoding.UTF8);
    Memo2.Lines.SaveToFile('assets/python/contacts.txt', TEncoding.UTF8);

    RenameFile('assets/python/contacts.txt','assets/python/contacts.py');
    RenameFile('assets/python/messages.txt','assets/python/messages.py');

    Memo1.Lines.Assign(Memo3.Lines);

    Handle := WinExec('python assets/python/sender.py', SW_HIDE);

    msg := 'تم مشاركة عرض من عروض الأراضي رقم: '+ num;
    rec(msg);

  end else begin
    showmessage('بعض الملفات ناقصة');
  end;

end;

//
//procedure Tfrm_main.scrollToEndHZ(grid: TStringGrid;n:integer);
//var
//  NewColumn: Integer;
//begin
//  grid_lands.BeginUpdate;
//  try
//    NewColumn := 0;
//    grid.LeftColumn := n;
//  finally
//    grid.EndUpdate;
//  end;
//end;


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

procedure Tfrm_main.StringGrid1EditingDone(Sender: TObject; const ACol,
  ARow: Integer);
begin
  frm_dm.table_expenses.Refresh;
end;

procedure Tfrm_main.StringGrid2CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.tab_expensesDblClick(Sender: TObject);
begin
  timer1.Enabled := false;
end;

procedure Tfrm_main.Timer1Timer(Sender: TObject);
var
  day, month, year, N :integer;
  SUM, enddt,startdt :string;
begin
  frm_dm.table_users.Refresh;
  frm_dm.table_lands.Refresh;
  frm_dm.table_houses.Refresh;
  frm_dm.table_costumer_requests.Refresh;
  frm_dm.table_expenses.Refresh;
  frm_dm.FDQuery2.Refresh;
  frm_dm.table_transactions.Refresh;
  frm_dm.qry_records.Refresh;

  day := dayOf(dateedit2.Date);

  month := monthof(dateedit2.Date);
  year := yearOf(dateedit2.Date);

  case month of
    1 : N := 31;
    2 : N := 28;
    3 : N := 31;
    4 : N := 30;
    5 : N := 31;
    6 : N := 30;
    7 : N := 31;
    8 : N := 31;
    9 : N := 30;
    10 : N := 31;
    11 : N := 30;
    12 : N := 31;
  end;

  enddt := inttostr(N)+'/' + inttostr(month)+'/'+inttostr(year);
  startdt := '1/'+inttostr(month)+'/'+inttostr(year);

//  showmessage(enddt+'    -   '+startdt);
//  showmessage(inttostr(day)+'/'+inttostr(month)+'/'+inttostr(year));
//  frm_DM.table_expenses.Filtered := false;
//  frm_DM.table_expenses.Filter := 'date > '+ quotedstr(enddt);
//  frm_DM.table_expenses.Filtered := true;

  frm_dm.FDQuery3.SQL.Clear;
  frm_dm.FDQuery3.SQL.Add('select SUM(amount) from expenses WHERE date > :stardate and date < :enddate ');
  frm_dm.FDQuery3.ParamByName('stardate').asdate := strtodate(startdt);
  frm_dm.FDQuery3.ParamByName('enddate').asdate := strtodate(enddt);
  frm_dm.FDQuery3.Open;

  edit_total_expenses.Text := 'المجموع: '+frm_dm.FDQuery3.Fields[0].asstring+ ' ر.س';

end;

procedure Tfrm_main.WriteMemoLinesToFile(const FileName: string; Memo: TMemo);
var
  FileStream: TFileStream;
  text,line: string;
begin
  FileStream := TFileStream.Create(FileName, fmOpenWrite or fmShareDenyNone);
  try
    FileStream.Size := 0;
    for line in Memo.Lines do
    begin
      text := Line + sLineBreak;
      FileStream.Write(text[1], Length(text) * SizeOf(Char));
    end;
  finally
    FileStream.Free;
  end;
end;

end.
