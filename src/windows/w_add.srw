HA$PBExportHeader$w_misth_zpepidom_list.srw
$PBExportComments$
forward
global type w_misth_zpepidom_list from w_list
end type
end forward

global type w_misth_zpepidom_list from w_list
integer width = 3250
integer height = 2200
string title = "title"
string menuname = "m_misth_zpepidom_list"
string icon = "res\pinakes.ico"
string is_tablename = "misth_zpepidom"
string is_order = " order by descepidom asc "
string is_formwin = "w_misth_zpepidom_form"
boolean ib_editwithkey = true
boolean ib_retrieve = true
boolean ib_sort = true
boolean ib_noview = true
event me_create_yvar ( )
event me_create_krat ( )
end type
global w_misth_zpepidom_list w_misth_zpepidom_list

public subroutine of_swetha (ref datawindow adw, long row);string	ls_kodepidom

ls_kodepidom = adw.object.kodepidom[row]

delete from misth_zpepidom
where kodepidom = :ls_kodepidom and kodxrisi = :gs_kodxrisi;
fn_sqlerror()
commit;
end subroutine


protected subroutine of_testing (ref datawindow adw, long row);adw.object.kodepidom[row] = gsc_misth_zpepidom.kodepidom
adw.object.kodxrisi[row] = gsc_misth_zpepidom.kodxrisi
adw.object.descepidom[row] = gsc_misth_zpepidom.descepidom
adw.object.hasforo[row] = gsc_misth_zpepidom.hasforo
adw.object.expr[row] = gsc_misth_zpepidom.expr
adw.object.isasf[row] = gsc_misth_zpepidom.isasf
adw.object.autoforos[row] = gsc_misth_zpepidom.autoforos
adw.object.hasasf[row] = gsc_misth_zpepidom.hasasf
end subroutine
