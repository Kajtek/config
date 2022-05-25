--[[

     Multicolor Awesome WM theme 2.0
     github.com/lcpz

--]]
pcall(require, "luarocks.loader")

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi
local math  = require("math")
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
require("lgi")
-- Paths used in the theme
local config_dir = gears.filesystem.get_configuration_dir() -- current user's config dir
local theme_dir  = config_dir .. "/themes/uplink"           -- path to this theme dir
local icons_dir  = theme_dir  .. "/icons"                   -- path to icons dir
local walls_dir  = theme_dir  .. "/wallpapers"              -- path to wallpapers dir

-- List of wallpapers
local wallpapers = {
		"wallpapersden.com_76339-1920x1200.jpg",
		"wallpapersden.com_anonymous-hacker-caught-by-police-artistic_1920x1200.jpg",
		"wallpapersden.com_anonymous-hacker-working_1920x1200.jpg",
		"wallpapersden.com_locked-system-hd_1920x1200.jpg",
		"wallpapersden.com_the-great-hack_1920x1200.jpg"
}

-- Initializes random number generator.
math.randomseed(os.time())

-- Returns random wallpaper from the array above.
function get_wallpaper(screen)
	local dir = gears.filesystem.get_configuration_dir() .. "/themes/uplink/wallpapers/"
	return dir .. wallpapers[math.random(1, #(wallpapers))]
end

local theme                                     = {}
theme.wallpaper                                 = get_wallpaper
theme.font                                      = "Dungeon 10"

theme.menu_bg_normal                            = "#000000"
theme.menu_bg_focus                             = "#000000"

theme.bg_normal                                 = "#000000"
theme.bg_focus                                  = "#000000"
theme.bg_urgent                                 = "#000000"

theme.fg_normal                                 = "#4F9928"
theme.fg_focus                                  = "#50DB04"
theme.fg_urgent                                 = "#71F52A"
theme.fg_minimize                               = "#A3BF93"

theme.border_width                              = dpi(1)
theme.border_normal                             = "#1c2022"
theme.border_focus                              = "#606060"
theme.border_marked                             = "#3ca4d8"

theme.menu_width                                = dpi(200)
theme.menu_fg_normal                            = "#4F9928"
theme.menu_fg_focus                             = "#50DB04"
theme.menu_bg_normal                            = "#000000"
theme.menu_bg_focus                             = "#808080"

theme.menu_border_width                         = dpi(2)
theme.menu_border_normal                        = "#000000"
theme.menu_border_focus                         = "#FFFFFF"
theme.menu_submenu_icon                         = icons_dir .. "/submenu.png"

theme.widget_temp                               = icons_dir .. "/temp.png"
theme.widget_uptime                             = icons_dir .. "/ac.png"
theme.widget_cpu                                = icons_dir .. "/cpu.png"
theme.widget_weather                            = icons_dir .. "/dish.png"
theme.widget_fs                                 = icons_dir .. "/fs.png"
theme.widget_mem                                = icons_dir .. "/mem.png"
theme.widget_note                               = icons_dir .. "/note.png"
theme.widget_note_on                            = icons_dir .. "/note_on.png"
theme.widget_netdown                            = icons_dir .. "/net_down.png"
theme.widget_netup                              = icons_dir .. "/net_up.png"
theme.widget_mail                               = icons_dir .. "/mail.png"
theme.widget_batt                               = icons_dir .. "/bat.png"
theme.widget_clock                              = icons_dir .. "/clock.png"
theme.widget_vol                                = icons_dir .. "/spkr.png"
theme.taglist_squares_sel                       = icons_dir .. "/square_a.png"
theme.taglist_squares_unsel                     = icons_dir .. "/square_b.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true

theme.useless_gap                               = 0

theme.layout_tile                               = icons_dir .. "/tile.png"
theme.layout_tilegaps                           = icons_dir .. "/tilegaps.png"
theme.layout_tileleft                           = icons_dir .. "/tileleft.png"
theme.layout_tilebottom                         = icons_dir .. "/tilebottom.png"
theme.layout_tiletop                            = icons_dir .. "/tiletop.png"
theme.layout_fairv                              = icons_dir .. "/fairv.png"
theme.layout_fairh                              = icons_dir .. "/fairh.png"
theme.layout_spiral                             = icons_dir .. "/spiral.png"
theme.layout_dwindle                            = icons_dir .. "/dwindle.png"
theme.layout_max                                = icons_dir .. "/max.png"
theme.layout_fullscreen                         = icons_dir .. "/fullscreen.png"
theme.layout_magnifier                          = icons_dir .. "/magnifier.png"
theme.layout_floating                           = icons_dir .. "/floating.png"

theme.titlebar_close_button_normal              = icons_dir .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = icons_dir .. "/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = icons_dir .. "/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = icons_dir .. "/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = icons_dir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = icons_dir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = icons_dir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = icons_dir .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = icons_dir .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = icons_dir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = icons_dir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = icons_dir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = icons_dir .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = icons_dir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = icons_dir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = icons_dir .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = icons_dir .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = icons_dir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = icons_dir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = icons_dir .. "/titlebar/maximized_focus_active.png"

local markup = lain.util.markup

-- Textclock
os.setlocale(os.getenv("LANG")) -- to localize the clock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local mytextclock = wibox.widget.textclock(markup("#7788af", " %a %d %B ") .. markup("#ab7367", ">") .. markup("#de5e1e", " %H:%M "))
mytextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = theme.font,
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Weather
-- to be set before use
local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 3099424, -- placeholder (London)
    notification_preset = { font = "Terminus 10", fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#eca4c4", "N/A "),
})


-- / fs
-- commented because it needs Gio/Glib >= 2.54--]]
local fsicon = wibox.widget.imagebox(theme.widget_fs, true)
theme.fs = lain.widget.fs({
    notification_preset = { font = theme.font, fg = theme.fg_normal },
    settings  = function()
        widget:set_markup(markup.fontfg(theme.font, "#80d9d8", string.format("%.1f", fs_now["/"].used) .. "% "))
    end
})

-- Mail IMAP check
--[[ to be set before use
local mailicon = wibox.widget.imagebox()
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            mailicon:set_image(theme.widget_mail)
            widget:set_markup(markup.fontfg(theme.font, "#cccccc", mailcount .. " "))
        else
            widget:set_text("")
            --mailicon:set_image() -- not working in 4.0
            mailicon._private.image = nil
            mailicon:emit_signal("widget::redraw_needed")
            mailicon:emit_signal("widget::layout_changed")
        end
    end
})
--]]

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e33a6e", cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#f1af5f", coretemp_now .. "°C "))
    end
})

-- Battery: detect
local baticon = wibox.widget.imagebox(theme.widget_batt)
local bat = lain.widget.bat({
    settings = function()
        local perc = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc

        if bat_now.ac_status == 1 then
            perc = perc .. " plug"
        end

        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, perc .. " "))
    end
})

-- ALSA volume, pulseadio?
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volume_now.level = volume_now.level .. "M"
        end

        widget:set_markup(markup.fontfg(theme.font, "#7493d2", volume_now.level .. "% "))
    end
})

-- Net
local netdownicon = wibox.widget.imagebox(theme.widget_netdown)
local netdowninfo = wibox.widget.textbox()
local netupicon = wibox.widget.imagebox(theme.widget_netup)
local netupinfo = lain.widget.net({
    settings = function()
        -- uncomment if using the weather widget
	if iface ~= "network off" and
           string.match(theme.weather.widget.text, "N/A")
        then
            theme.weather.update()
        end


        widget:set_markup(markup.fontfg(theme.font, "#e54c62", net_now.sent .. " "))
        netdowninfo:set_markup(markup.fontfg(theme.font, "#87af5f", net_now.received .. " "))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local memory = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e0da37", mem_now.used .. "M "))
    end
})

-- MPD
local mpdicon = wibox.widget.imagebox()
theme.mpd = lain.widget.mpd({
    settings = function()
        mpd_notification_preset = {
            text = string.format("%s [%s] - %s\n%s", mpd_now.artist,
                   mpd_now.album, mpd_now.date, mpd_now.title)
        }

        if mpd_now.state == "play" then
            artist = mpd_now.artist .. " > "
            title  = mpd_now.title .. " "
            mpdicon:set_image(theme.widget_note_on)
        elseif mpd_now.state == "pause" then
            artist = "mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            --mpdicon:set_image() -- not working in 4.0
            mpdicon._private.image = nil
            mpdicon:emit_signal("widget::redraw_needed")
            mpdicon:emit_signal("widget::layout_changed")
        end
        widget:set_markup(markup.fontfg(theme.font, "#e54c62", artist) .. markup.fontfg(theme.font, "#b2b2b2", title))
    end
})

function theme.at_screen_connect(s)
    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(16), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --s.mylayoutbox,
            s.mytaglist,
            s.mypromptbox,
            mpdicon,
            theme.mpd.widget,
        },
       -- s.mytasklist, -- Middle widget
        nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            --mailicon,
            --theme.mail.widget,
            netdownicon,
            netdowninfo,
            netupicon,
            netupinfo.widget,
            volicon,
            theme.volume.widget,
            memicon,
            memory.widget,
            cpuicon,
            cpu.widget,
            fsicon,
            theme.fs.widget,
            weathericon,
            theme.weather.widget,
            tempicon,
            temp.widget,
            mytextclock,
        },
    }

    -- Create the bottom wibox
    s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
    s.mybottomwibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            s.mylayoutbox,
        },
    }
end

return theme
