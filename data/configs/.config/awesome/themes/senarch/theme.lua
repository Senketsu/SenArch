---------------------------
-- SenArch awesome theme --
---------------------------

theme = {}

theme.font          = "sans 11"

theme.bg_normal     = "#1a1a1a"
theme.bg_focus      = "#995c00"
theme.bg_urgent     = "#800000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#b3b3b3"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = 0
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

theme.notification_font           = "Cantarel 12"
theme.notification_bg             = "#1793d1"
theme.notification_fg             = "#ffffff"
theme.notification_border_width   = 1
theme.notification_border_color   = "#800000"
-- theme.notification_shape          =
-- theme.notification_opacity        = 1
-- theme.notification_margin         = 20
-- theme.notification_width          = 400
-- theme.notification_height         = 100


-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "~/.config/awesome/themes/senarch/taglist/squarefw.png"
theme.taglist_squares_unsel = "~/.config/awesome/themes/senarch/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "~/.config/awesome/themes/senarch/icon/submenu-white.png"
theme.menu_bg_normal = "#1a1a1a"
theme.menu_bg_focus  = "#1793d1"
theme.menu_fg_normal = "#b3b3b3"
theme.menu_fg_focus  = "#ffffff"
theme.menu_height = 24
theme.menu_width  = 180

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/themes/senarch/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/themes/senarch/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/themes/senarch/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/themes/senarch/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "~/.config/awesome/themes/senarch/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "~/.config/awesome/themes/senarch/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/themes/senarch/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/themes/senarch/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "~/.config/awesome/themes/senarch/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "~/.config/awesome/themes/senarch/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/themes/senarch/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/themes/senarch/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "~/.config/awesome/themes/senarch/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "~/.config/awesome/themes/senarch/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/themes/senarch/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/themes/senarch/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "~/.config/awesome/themes/senarch/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "~/.config/awesome/themes/senarch/titlebar/maximized_focus_active.png"


-- You can use your own layout icons like this:
theme.layout_fairh = "~/.config/awesome/themes/senarch/layouts/fairhw.png"
theme.layout_fairv = "~/.config/awesome/themes/senarch/layouts/fairvw.png"
theme.layout_floating  = "~/.config/awesome/themes/senarch/layouts/floatingw.png"
theme.layout_magnifier = "~/.config/awesome/themes/senarch/layouts/magnifierw.png"
theme.layout_max = "~/.config/awesome/themes/senarch/layouts/maxw.png"
theme.layout_fullscreen = "~/.config/awesome/themes/senarch/layouts/fullscreenw.png"
theme.layout_tilebottom = "~/.config/awesome/themes/senarch/layouts/tilebottomw.png"
theme.layout_tileleft   = "~/.config/awesome/themes/senarch/layouts/tileleftw.png"
theme.layout_tile = "~/.config/awesome/themes/senarch/layouts/tilew.png"
theme.layout_tiletop = "~/.config/awesome/themes/senarch/layouts/tiletopw.png"
theme.layout_spiral  = "~/.config/awesome/themes/senarch/layouts/spiralw.png"
theme.layout_dwindle = "~/.config/awesome/themes/senarch/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"


--[[
theme.lain_icons         = os.getenv("HOME") ..
                           "/.config/awesome/lain/icons/layout/default/"
theme.layout_termfair    = theme.lain_icons .. "termfairw.png"
theme.layout_centerfair  = theme.lain_icons .. "centerfairw.png"  -- termfair.center
theme.layout_cascade     = theme.lain_icons .. "cascadew.png"
theme.layout_cascadetile = theme.lain_icons .. "cascadetilew.png" -- cascade.tile
theme.layout_centerwork  = theme.lain_icons .. "centerworkw.png"
theme.layout_centerworkh = theme.lain_icons .. "centerworkhw.png" -- centerwork.horizontal
--]]

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- @@@@@@@@@@@@@@@@@@@@@@@@@
-- @@ SenArch theme icons @@
-- @@@@@@@@@@@@@@@@@@@@@@@@@
theme.wallpaper = "~/.config/awesome/themes/senarch/background.png"

theme.icon_archlinux = "~/.config/awesome/themes/senarch/icon/archlinux-64.png"
theme.icon_internet = "~/.config/awesome/themes/senarch/icon/internet-64-white.png"
theme.icon_media = "~/.config/awesome/themes/senarch/icon/media-64-white.png"
theme.icon_games = "~/.config/awesome/themes/senarch/icon/games-64-white.png"
theme.icon_work = "~/.config/awesome/themes/senarch/icon/work-64-white.png"
theme.icon_cli = "~/.config/awesome/themes/senarch/icon/cli-64-white.png"

theme.icon_subico = "~/.config/awesome/themes/senarch/icon/games-64-white.png"
theme.icon_subico = "~/.config/awesome/themes/senarch/icon/work-64-white.png"


theme.icon_vol = "~/.config/awesome/themes/senarch/icon/audio/vol.png"
theme.icon_vol_mid = "~/.config/awesome/themes/senarch/icon/audio/vol_mid.png"
theme.icon_vol_low = "~/.config/awesome/themes/senarch/icon/audio/vol_low.png"
theme.icon_vol_no = "~/.config/awesome/themes/senarch/icon/audio/vol_no.png"
theme.icon_vol_m = "~/.config/awesome/themes/senarch/icon/audio/vol_m.png"
theme.icon_vol_mid_m = "~/.config/awesome/themes/senarch/icon/audio/vol_mid_m.png"
theme.icon_vol_low_m = "~/.config/awesome/themes/senarch/icon/audio/vol_low_m.png"
theme.icon_vol_no_m = "~/.config/awesome/themes/senarch/icon/audio/vol_no_m.png"
theme.icon_vol_hp = "~/.config/awesome/themes/senarch/icon/audio/vol_hp.png"
theme.icon_vol_hp_m = "~/.config/awesome/themes/senarch/icon/audio/vol_hp_m.png"
theme.iSeparator = "~/.config/awesome/themes/senarch/icon/sep.png"







return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
