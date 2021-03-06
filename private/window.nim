
import enumerations
import widget
import group
import image

const
  flh = "FL/Fl_Window.H"
  flh_singlewin = "FL/Fl_Single_Window.H"
  flh_menuwin = "FL/Fl_Menu_Window.H"
type
  Cursor* {.importc: "Cursor*", header: flh.} = object

const
  FL_WINDOW*        = 0xF0
  FL_DOUBLE_WINDOW* = 0xF1

type
  WindowObj* {.importc: "Fl_Window".} = object of GroupObj
  Window* = ptr WindowObj

# TODO
#if ! (defined(WIN32) || defined(__APPLE__) || defined(FL_DOXYGEN))
#void combine_mask(void);
#endif

proc make_window*(w, h: cint; title: cstring = nil): Window {.importcpp: "new Fl_Window(@)", header: flh.}
proc make_window*(x, y, w, h: cint; title: cstring = nil): Window {.importcpp: "new Fl_Window(@)", header: flh.}
proc free_window*(self: Window) {.importcpp: "delete @", header: flh.}

proc shape*(self: Window; img: Image) {.importcpp: "#->shape(@)", header: flh.}
proc shape*(self: Window; b: ref ImageObj) {.importcpp: "#->shape(@)", header: flh.}
proc x_root*(self: Window): cint {.importcpp: "#->x_root(@)", header: flh.}
proc y_root*(self: Window): cint {.importcpp: "#->y_root(@)", header: flh.}
proc handle*(self: Window; h: cint): cint {.importcpp: "#->handle(@)", header: flh.}
proc resize*(self: Window; X, Y, W, H: cint) {.importcpp: "#->resize(@)", header: flh.}
proc clear_border*(self: Window) {.importcpp: "#->clear_border(@)", header: flh.}
proc border*(self: Window): cuint {.importcpp: "#->border(@)", header: flh.}
proc `border=`*(self: Window; b: cint) {.importcpp: "#->border(@)", header: flh.}
proc set_override*(self: Window) {.importcpp: "#->set_override(@)", header: flh.}
proc override*(self: Window): cuint {.importcpp: "#->override(@)", header: flh.}
proc set_modal*(self: Window) {.importcpp: "#->set_modal(@)", header: flh.}
proc set_non_modal*(self: Window) {.importcpp: "#->set_non_modal(@)", header: flh.}
proc modal*(self: Window): cuint {.importcpp: "#->modal(@)", header: flh.}
proc non_modal*(self: Window): cuint {.importcpp: "#->non_modal(@)", header: flh.}
proc clear_modal_states*(self: Window) {.importcpp: "#->clear_modal_states(@)", header: flh.}
proc set_menu_window*(self: Window) {.importcpp: "#->set_menu_window(@)", header: flh.}
proc menu_window*(self: Window): cuint {.importcpp: "#->menu_window(@)", header: flh.}
proc set_tooltip_window*(self: Window) {.importcpp: "#->set_tooltip_window(@)", header: flh.}
proc tooltip_window*(self: Window): cuint {.importcpp: "#->tooltip_window(@)", header: flh.}
proc hotspot*(self: Window; x, y: cint; offscreen: cint = 0) {.importcpp: "#->hotspot(@)", header: flh.}
proc hotspot*(self: Window; w: Widget; offscreen: cint = 0) {.importcpp: "#->hotspot(@)", header: flh.}
proc hotspot*(self: Window; w: ref WidgetObj; offscreen: cint = 0) {.importcpp: "#->hotspot(@)", header: flh.}
proc free_position*(self: Window) {.importcpp: "#->free_position(@)", header: flh.}
proc size_range*(self: Window; minw, minh: cint; maxw, maxh, dw, dh, aspect: cint = 0) {.importcpp: "#->size_range(@)", header: flh.}

proc label*(self: Window): cstring {.importcpp: "#->label(@)", header: flh.}
proc `label=`*(self: Window; text: cstring) {.importcpp: "#->label(@)", header: flh.}

proc iconlabel*(self: Window): cstring {.importcpp: "#->iconlabel(@)", header: flh.}
proc `iconlabel=`*(self: Window; text: cstring) {.importcpp: "#->iconlabel(@)", header: flh.}

proc label*(self: Window; label, iconlabel: cstring) {.importcpp: "#->label(@)", header: flh.}
proc copy_label*(self: Window; text: cstring) {.importcpp: "#->copy_label(@)", header: flh.}
proc xclass*(self: Window): cstring {.importcpp: "#->xclass(@)", header: flh.}
proc `xclass=`*(self: Window; c: cstring) {.importcpp: "#->xclass(@)", header: flh.}

proc icon*(self: Window): pointer {.importcpp: "#->icon(@)", header: flh.}
proc `icon=`*(self: Window; img: RGB_Image) {.importcpp: "#->icon(@)", header: flh.}

proc icons*(self: Window; img: ptr RGB_Image; count: cint) {.importcpp: "#->icons(@)", header: flh.}
proc `icon=`*(self: Window; ic: pointer) {.importcpp: "#->icon(@)", header: flh.}
proc shown*(self: Window): cint {.importcpp: "#->shown(@)", header: flh.}
proc show*(self: Window) {.importcpp: "#->show(@)", header: flh.}
proc hide*(self: Window) {.importcpp: "#->hide(@)", header: flh.}
proc show*(self: Window; argc: cint; argv: ptr cstring) {.importcpp: "#->show(@)", header: flh.}
proc wait_for_expose*(self: Window) {.importcpp: "#->wait_for_expose(@)", header: flh.}
proc fullscreen*(self: Window) {.importcpp: "#->fullscreen(@)", header: flh.}
proc fullscreen_off*(self: Window) {.importcpp: "#->fullscreen_off(@)", header: flh.}
proc fullscreen_off*(self: Window; X, Y, W, H: cint) {.importcpp: "#->fullscreen_off(@)", header: flh.}
proc fullscreen_active*(self: Window): cuint {.importcpp: "#->fullscreen_active(@)", header: flh.}
proc fullscreen_screens*(self: Window;top, bottom, left, right: cint) {.importcpp: "#->fullscreen_screens(@)", header: flh.}
proc iconize*(self: Window) {.importcpp: "#->iconize(@)", header: flh.}
proc make_current*(self: Window) {.importcpp: "#->make_current(@)", header: flh.}
proc as_window*(self: Window): Window {.importcpp: "#->as_window(@)", header: flh.}
proc cursor*(self: Window; c: Cursor) {.importcpp: "#->cursor(@)", header: flh.}
proc cursor*(self: Window; img: RGB_Image; a, b: cint) {.importcpp: "#->cursor(@)", header: flh.}
proc cursor*(self: Window; c: Cursor; a: Color; b: Color = WHITE) {.importcpp: "#->cursor(@)", header: flh.}
proc default_cursor*(self: Window; c: Cursor) {.importcpp: "#->default_cursor(@)", header: flh.}
proc default_cursor*(self: Window; c: Cursor; a: Color; b: Color = WHITE) {.importcpp: "#->default_cursor(@)", header: flh.}
proc decorated_w*(self: Window): cint {.importcpp: "#->decorated_w(@)", header: flh.}
proc decorated_h*(self: Window): cint {.importcpp: "#->decorated_h(@)", header: flh.}

#when defined(windows):
#  static void default_icons(HICON big_icon, HICON small_icon)
#  void icons(HICON big_icon, HICON small_icon)

proc window*(self: Widget): Window {.importcpp: "#.window(@)".}
proc top_window*(self: Widget): Window {.importcpp: "#.top_window(@)".}
proc top_window_offset*(self: Widget; xoff, yoff: out cint): Window {.importcpp: "#.top_window_offset(@)".}

# static values
proc current*(): Window {.importcpp: "Fl_Window::current(@)", header: flh.}
proc default_callback*(w: Window; v: pointer) {.importcpp: "Fl_Window::default_callback(@)", header: flh.}
proc `default_xclass=`*(c: cstring) {.importcpp: "Fl_Window::default_xclass(@)", header: flh.}
proc default_xclass*(): cstring {.importcpp: "Fl_Window::default_xclass(@)", header: flh.}
proc `default_icon=`*(img: RGB_Image) {.importcpp: "Fl_Window::default_icon(@)", header: flh.}
proc default_icons*(img: ptr RGB_Image, count: cint) {.importcpp: "Fl_Window::default_icons(@)", header: flh.}

type
  SingleWindowObj* {.importc: "Fl_Single_Window".} = object of WindowObj
  SingleWindow* = ptr SingleWindowObj

proc make_single_window*(W, H: cint; text: cstring = nil): SingleWindow {.importcpp: "new Fl_Single_Window(@)", header: flh_singlewin.}
proc make_single_window*(X, Y, W, H: cint; text: cstring = nil): SingleWindow {.importcpp: "new Fl_Single_Window(@)", header: flh_singlewin.}

proc show*(self: SingleWindow) {.importcpp: "#.show(@)", header: flh_singlewin.}
proc show*(self: SingleWindow; a: cint; b: ptr ptr cchar) {.importcpp: "#.show(@)", header: flh_singlewin.}
proc flush*(self: SingleWindow) {.importcpp: "#.flush(@)", header: flh_singlewin.}
proc make_current*(self: SingleWindow): cint {.importcpp: "#.make_current(@)", header: flh_singlewin.}

type
  MenuWindowObj* {.importc: "Fl_Menu_Window", header: flh_menuwin.} = object of SingleWindowObj
  MenuWindow* = ptr MenuWindowObj

proc make_menu_window*(W, H: cint; text: cstring = nil): MenuWindow {.importcpp: "new Fl_Menu_Window(@)", header: flh_menuwin.}
proc make_menu_window*(X, Y, W, H: cint; text: cstring = nil): MenuWindow {.importcpp: "new Fl_Menu_Window(@)", header: flh_menuwin.}

proc show*(self: MenuWindow) {.importcpp: "#.show(@)", header: flh_menuwin.}
proc erase*(self: MenuWindow) {.importcpp: "#.erase(@)", header: flh_menuwin.}
proc flush*(self: MenuWindow) {.importcpp: "#.flush(@)", header: flh_menuwin.}
proc hide*(self: MenuWindow) {.importcpp: "#.hide(@)", header: flh_menuwin.}
proc overlay*(self: MenuWindow): cuint {.importcpp: "#.overlay(@)", header: flh_menuwin.}
proc set_overlay*(self: MenuWindow) {.importcpp: "#.set_overlay(@)", header: flh_menuwin.}
proc clear_overlay*(self: MenuWindow) {.importcpp: "#.clear_overlay(@)", header: flh_menuwin.}

const
  flh_doublewindow = "FL/Fl_Double_Window.H"

type
  DoubleWindowObj* {.importc: "Fl_Double_Window", header: flh_doublewindow.} = object of WindowObj
  DoubleWindow* = ptr DoubleWindowObj

proc make_double_window*(W, H: cint; text: cstring = nil): DoubleWindow {.importcpp: "new Fl_Double_Window(@)", header: flh_doublewindow.}
proc make_double_window*(X, Y, W, H: cint; text: cstring = nil): DoubleWindow {.importcpp: "new Fl_Double_Window(@)", header: flh_doublewindow.}

const
  flh_overlaywindow = "FL/Fl_Overlay_Window.H"
type
  OverlayWindowObj* {.importc: "Fl_Overlay_Window", header: flh_overlaywindow.} = object of DoubleWindowObj
  OverlayWindow* = ptr OverlayWindowObj

proc show*(self: OverlayWindow) {.importcpp: "#.show(@)", header: flh_overlaywindow.}
proc flush*(self: OverlayWindow) {.importcpp: "#.flush(@)", header: flh_overlaywindow.}
proc hide*(self: OverlayWindow) {.importcpp: "#.hide(@)", header: flh_overlaywindow.}
proc resize*(self: OverlayWindow; x, y, w, h: cint) {.importcpp: "#.resize(@)", header: flh_overlaywindow.}
proc can_do_overlay*(self: OverlayWindow): cint {.importcpp: "#.can_do_overlay(@)", header: flh_overlaywindow.}
proc redraw_overlay*(self: OverlayWindow) {.importcpp: "#.redraw_overlay(@)", header: flh_overlaywindow.}
proc show*(self: OverlayWindow; a: cint; b: ptr cstring) {.importcpp: "#.show(@)", header: flh_overlaywindow.}
