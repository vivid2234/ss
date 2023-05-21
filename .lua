GameSense API for Lua
cvar.console_print
cvar.console_color_print
cvar.find_var
cvar.get_command_line_value
cvar.get_float
cvar.set_float
cvar.get_int
cvar.set_int
globals.realtime
globals.framecount
globals.absoluteframetime
globals.curtime
globals.frametime
globals.maxclients
globals.tickcount
globals.tickinterval
globals.get_client_entity
globals.get_client_entity_from_handle
globals.get_highest_entity_index
globals.number_of_entities
models.get_model_index
models.get_model_materials
models.get_model_name
models.get_studio_model
engine.client_cmd
engine.client_cmd_unrestricted
engine.execute_client_cmd
engine.get_game_directory
engine.get_last_timestamp
engine.get_level_name
engine.get_level_name_short
engine.get_local_player_index
engine.get_max_clients
engine.get_mouse_delta
engine.get_netchannel
engine.get_net_channel_info
engine.get_player_for_user_id
engine.get_player_info
engine.get_screen_size
engine.get_timescale
engine.get_view_angles
engine.is_connected
engine.is_in_game
engine.is_taking_screenshot
engine.set_timescale
engine.set_view_angles
engine.write_screenshot
utils.get_player_data
utils.clamp
utils.distance_on_screen
utils.world_to_screen
trace.get_point_contents
trace.trace_ray
surface.create_font
surface.create_texture
surface.draw_filled_rect
surface.draw_line
surface.draw_outlined_circle
surface.draw_outlined_rect
surface.draw_textured_rect
surface.draw_filled_rect_fade
surface.draw_text
surface.get_text_size
surface.indicator
surface.set_color
surface.set_texture
surface.set_text_color
surface.set_text_font
surface.set_text_pos
overlay.add_box_overlay
overlay.add_capsule_overlay
overlay.add_entity_text_overlay
overlay.add_line_overlay
overlay.add_screen_text_overlay
overlay.add_sphere_overlay
overlay.add_text_overlay
overlay.add_triangle_overlay
overlay.screen_position
surface.screen_position
cvar.set_string
syntax: cvar.set_string(value)

value - String value

Back to TOC


cvar.get_string
syntax: cvar.get_string()

Returns nil on failure.

Back to TOC


cvar.set_float
syntax: cvar.set_float(value)

value - Float value

cvar.cl_interp_ratio:set_float(1)

Back to TOC


cvar.set_raw_float
syntax: cvar.set_raw_float(value)

value - Float value

This sets the float value without changing the integer and string values.

Back to TOC


cvar.get_float
syntax: cvar.get_float()

Returns nil if called on a ConCommand.

Back to TOC


cvar.set_int
syntax: cvar.set_int(value)

value - Integer value

Back to TOC


cvar.set_raw_int
syntax: cvar.set_raw_int(value)

value - Integer value

This sets the integer value without changing the float and string values.

Back to TOC


cvar.get_int
syntax: cvar.get_int()

Returns nil if called on a ConCommand.

Back to TOC


cvar.invoke_callback
syntax: cvar.invoke_callback()

For ConCommands, optionally pass extra arguments and they will be forwarded to the callback. For ConVars, optionally pass an extra integer argument specifying the index of the change callback to invoke, otherwise all change callbacks will be invoked.

cvar.snd_setmixer:invoke_callback("Ambient", "vol", "0") -- equivalent to typing "snd_setmixer Ambient vol 0" in console

Back to TOC


globals.realtime
syntax: globals.realtime()

Returns the local time in seconds.

Back to TOC


globals.curtime
syntax: globals.curtime()

Returns the game time in seconds. This number is synchronized with the server.

Back to TOC


globals.frametime
syntax: globals.frametime()

Returns the number of seconds elapsed during the last game frame.

Back to TOC


globals.absoluteframetime
syntax: globals.absoluteframetime()

Returns the number of seconds elapsed during the last game frame.

Back to TOC


globals.maxplayers
syntax: globals.maxplayers()

Returns the maximum number of players in the server.

Back to TOC


globals.tickcount
syntax: globals.tickcount()

Returns the number of ticks elapsed in the server.

Back to TOC


globals.tickinterval
syntax: globals.tickinterval()

Returns the time elapsed in one game tick in seconds.

Back to TOC


globals.framecount
syntax: globals.framecount()

Returns the number of frames since the game started

Back to TOC


globals.mapname
syntax: globals.mapname()

Returns the name of the loaded map, or nil if you are not in game.

Back to TOC


globals.lastoutgoingcommand
syntax: globals.lastoutgoingcommand()

Returns the command number of the last outgoing command.

Back to TOC


entity.get_local_player
syntax: entity.get_local_player()

Returns the entity index for the local player, or nil on failure.

Back to TOC


entity.get_all
syntax: entity.get_all(classname)

classname - Optional string that specifies the class name of entities that will be added to the list, for example "CCSPlayer".

Returns an array of entity indices. Pass no arguments for all entities.

Back to TOC


entity.get_players
syntax: entity.get_players(enemies_only)

enemies_only - Optional. If true then you and the players on your team will not be added to the list.

Returns an array of player entity indices. Dormant and dead players will not be added to the list.

Back to TOC


entity.get_game_rules
syntax: entity.get_game_rules()

Returns entity index of CCSGameRulesProxy instance, or nil if none exists.

Back to TOC


entity.get_player_resource
syntax: entity.get_player_resource()

Returns entity index of CCSPlayerResource instance, or nil if none exists.

Back to TOC


entity.get_classname
syntax: entity.get_classname(ent)

ent - Entity index.

Returns the name of the entity's class, or nil on failure.

Back to TOC


entity.set_prop
syntax: entity.set_prop(ent, propname, value, array_index)

ent - Entity index.

propname - Name of the networked property.

value - The property will be set to this value. For vectors or angles, separate the components by commas.

array_index - Optional. If propname is an array, the value at this array index will be set.

Back to TOC


entity.get_prop
syntax: entity.get_prop(ent, propname, array_index)

ent - Entity index.

propname - Name of the networked property.

array_index - Optional. If propname is an array, the value at this array index will be returned.

Returns the value of the property, or nil on failure. For vectors or angles, this returns three values.

Back to TOC


entity.is_enemy
syntax: entity.is_enemy(ent)

ent - Entity index.

Returns true if the entity is on the other team.

Back to TOC


entity.is_alive
syntax: entity.is_alive(ent)

ent - Entity index.

Returns true if the player is not dead.

Back to TOC


entity.is_dormant
syntax: entity.is_dormant(ent)

ent - Entity index.

Returns true if the player is not dormant.

Back to TOC


entity.get_player_name
syntax: entity.get_player_name(ent)

ent - Player entity index.

Returns the player's name, or the string "unknown" on failure.

Back to TOC


entity.get_player_weapon
syntax: entity.get_player_weapon(ent)

ent - Player entity index.

Returns the entity index of the player's active weapon, or nil if the player is not alive, dormant, etc.

Back to TOC


entity.hitbox_position
syntax: entity.hitbox_position(player, hitbox)

player - Entity index of the player.

hitbox - Either a string of the hitbox name, or an integer index of the hitbox.

Returns world coordinates x, y, z, or nil on failure.

Back to TOC


entity.get_steam64
syntax: entity.get_steam64(player)

player - Entity index of the player.

Returns steamID3, or nil on failure.

Back to TOC


entity.get_bounding_box
syntax: entity.get_bounding_box(player)

player - Entity index of the player.

Returns x1, y1, x2, y2, alpha_multiplier. The contents of x1, y1, x2, y2 must be ignored when alpha_multiplier is zero, which indicates that the bounding box is invalid and should not be drawn.

Back to TOC


client.set_event_callback
syntax: client.set_event_callback(event_name, callback)

event_name - Name of the event.

callback - Lua function to call when this event occurs.

Raises an error and prints a message in console upon failure.

Back to TOC


client.log
syntax: client.log(msg, ...)

msg - The message

... - Optional comma-separated arguments to concatenate with msg.

Back to TOC


client.color_log
syntax: client.color_log(r, g, b, msg, ...)

r - Red (0-255)

g - Red (0-255)

b - Red (0-255)

msg - The message

... - Optional comma-separated arguments to concatenate with msg.

Back to TOC


client.exec
syntax: client.exec(cmd, ...)

cmd - The console command(s) to execute.

... - Optional comma-separated arguments to concatenate with cmd.

Back to TOC


client.userid_to_entindex
syntax: client.userid_to_entindex(userid)

userid - This is given by some game events.

Returns the entity index, or 0 on failure.

Back to TOC


client.draw_debug_text
syntax: client.draw_debug_text(x, y, z, line_offset, duration, r, g, b, a, ...)

x - Position in world space

y - Position in world space

z - Position in world space

line_offset - Used for vertical alignment, use 0 for the first line.

duration - Time in seconds that the text will remain on the screen.

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

... - The text that will be drawn

Avoid calling this during the paint event.

Back to TOC


client.draw_hitboxes
syntax: client.draw_hitboxes(entindex, duration, hitboxes, r, g, b, a, tick)

entindex - Entity index

duration - Time in seconds

hitboxes - Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

tick - Optional integer

Draws hitbox overlays. Avoid calling this during the paint event.

Back to TOC


client.random_int
syntax: client.random_int(minimum, maximum)

minimum - Lowest possible result

maximum - Highest possible result

Returns a random integer between minimum and maximum.

Back to TOC


client.random_float
syntax: client.random_float(minimum, maximum)

minimum - Lowest possible result

maximum - Highest possible result

Returns a random float between minimum and maximum.

Back to TOC


client.screen_size
syntax: client.screen_size()

Returns (width, height).

Back to TOC


client.visible
syntax: client.visible(x, y, z)

x - Position in world space

y - Position in world space

z - Position in world space

Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.

Back to TOC


client.trace_line
syntax: client.trace_line(skip_entindex, from_x, from_y, from_z, to_x, to_y, to_z)

skip_entindex - Ignore this entity while tracing

from_x - Position in world space

from_y - Position in world space

from_z - Position in world space

to_x - Position in world space

to_y - Position in world space

to_z - Position in world space

Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.

Back to TOC


client.trace_bullet
syntax: client.trace_bullet(from_player, from_x, from_y, from_z, to_x, to_y, to_z)

from_player - Entity index of the player whose weapon will be used for this trace

from_x - Position in world space

from_y - Position in world space

from_z - Position in world space

to_x - Position in world space

to_y - Position in world space

to_z - Position in world space

Returns entindex, damage. Entindex is nil when no player is hit.

Back to TOC


client.scale_damage
syntax: client.scale_damage(entindex, hitgroup, damage)

entindex - Player entity index

hitgroup - Hit group index

damage - Damage

Returns adjusted damage for the specified hitgroup

Back to TOC


client.delay_call
syntax: client.delay_call(delay, callback, ...)

delay - Time in seconds to wait before calling callback.

callback - The lua function that will be called after delay seconds.

... - Optional arguments that will be passed to the callback.

Back to TOC


client.latency
syntax: client.latency()

Returns your latency in seconds.

Back to TOC


client.camera_angles
syntax: client.camera_angles()

Returns pitch, yaw, roll of where you are looking.

Back to TOC


client.camera_angles
syntax: client.camera_angles(pitch, yaw)

pitch - Pitch

yaw - Yaw

Set camera angles

Back to TOC


client.timestamp
syntax: client.timestamp()

Returns high precision timestamp in milliseconds.

Back to TOC


client.eye_position
syntax: client.eye_position()

Returns x, y, z world coordinates of the local player's eye position, or nil on failure.

Back to TOC


client.set_clan_tag
syntax: client.set_clan_tag(...)

... - The text that will be drawn

The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.

Back to TOC


client.system_time
syntax: client.system_time()

Returns hour, minute, seconds, milliseconds.

local h, m, s, ms = client.system_time()

Back to TOC


client.reload_active_scripts
syntax: client.reload_active_scripts()

Reloads all scripts the following frame.

Back to TOC


ui.new_checkbox
syntax: ui.new_checkbox(tab, container, name)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this control will be added.

name - The name of the checkbox.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

Back to TOC


ui.new_slider
syntax: ui.new_slider(tab, container, name, min, max, init_value, show_tooltip, unit, scale, tooltips)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this control will be added.

name - The name of the slider.

min - The minimum value that can be set using the slider.

max - The maximum value that can be set using the slider.

init_value - Optional integer. The initial value. If not provided, the initial value will be min.

show_tooltip - Optional boolean. true if the slider should display its current value.

unit - Optional string that is two characters or less. This will be appended to the display value. For example, "px" for pixels or "%" for a percentage.

scale - Optional The display value will be multiplied by this scale. For example, 0.1 will make a slider with the range [0-1800] show as 0.0-180.0 with one decimal place.

tooltips - Optional table used to override the tooltip for the specified values. The key must be within min-max. The value is a string that will be shown instead of the numeric value whenever that value is selected.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

Back to TOC


ui.new_combobox
syntax: ui.new_combobox(tab, container, name, ...)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this control will be added.

name - The name of the combobox.

... - One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

Back to TOC


ui.new_multiselect
syntax: ui.new_multiselect(tab, container, name, ...)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this control will be added.

name - The name of the multiselect.

... - One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

Back to TOC


ui.new_hotkey
syntax: ui.new_hotkey(tab, container, name, inline)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this control will be added.

name - The name of the hotkey.

inline - Optional boolean. If set to true, the hotkey will be placed to the right of the preceding menu item.

Returns a special value that can be passed to ui.get to see if the hotkey is pressed, or throws an error on failure.

Back to TOC


ui.new_button
syntax: ui.new_button(tab, container, name, callback)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this checkbox will be added.

name - The name of the button.

callback - The lua function that will be called when the button is pressed.

Throws an error on failure. The return value should not be used with ui.set or ui.get.

Back to TOC


ui.new_color_picker
syntax: ui.new_color_picker(tab, container, name, r, g, b, a)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this checkbox will be added.

name - The name of the color picker. This will not be shown, it is only used to identify this item in saved configs.

r - Optional initial red value (0-255)

g - Optional initial green value (0-255)

b - Optional initial blue value (0-255)

a - Optional initial alpha value (0-255)

Throws an error on failure. The color picker is placed to the right of the previous menu item.

Back to TOC


ui.new_textbox
syntax: ui.new_textbox(tab, container)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this textbox will be added.

Throws an error on failure. Returns a special value that can be used with ui.get

Back to TOC


ui.reference
syntax: ui.reference(tab, container, name)

tab - The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS.

container - The name of the existing container to which this checkbox will be added.

name - The name of the menu item.

Avoid calling this from inside a function. Returns a reference that can be passed to ui.get and ui.set, or throws an error on failure. This allows you to access a built-in pre-existing menu items. This function returns multiple values when the specified menu item is followed by unnamed menu items, for example a color picker or a hotkey.

Back to TOC


ui.set
syntax: ui.set(item, value, ...)

item - The result of either ui.new_checkbox, ui.new_slider, or ui.reference.

value - The value to which the menu item will be set.

... - Optional. For multiselect comboboxes, you may want to set more than one option.

For checkboxes, pass true or false. For a slider, pass a number that is within the slider's minimum/maximum values. For a combobox, pass a string value. For a multiselect combobox, pass zero or more strings. For referenced buttons, param is ignored and the button's callback is invoked. For color pickers, pass the arguments r, g, b, a.

Back to TOC


ui.get
syntax: ui.get(item)

item - The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.

For a checkbox, returns true or false. For a slider, returns an integer. For a combobox, returns a string. For a multiselect combobox, returns an array of strings. For a hotkey, returns true if the hotkey is active. For a color picker, returns r, g, b, a. Throws an error on failure.

Back to TOC


ui.set_callback
syntax: ui.set_callback(item, callback)

item - The special value returned by ui.new_*. Do not try passing a reference to an existing menu item.

callback - Lua function that will be called when the menu item changes values. For example, this will be called when the user checks or unchecks a checkbox.

Back to TOC


ui.set_visible
syntax: ui.set_visible(item, visible)

item - A menu item reference.

visible - Boolean. Pass false to hide the control from the menu.

Back to TOC


ui.is_menu_open
syntax: ui.is_menu_open()

Returns true if the menu is currently open.

Back to TOC


ui.mouse_position
syntax: ui.mouse_position()

Returns current mouse coordinates x, y

Back to TOC


renderer.text
syntax: renderer.text(x, y, r, g, b, a, flags, max_width, ...)

x - Screen coordinate

y - Screen coordinate

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

flags - "+" for large text, "-" for small text, "c" for centered text, "r" for right-aligned text, "b" for bold text. "c" can be combined with other flags. nil can be specified for normal sized uncentered text.

max_width - Text will be clipped if it exceeds this width in pixels. Use 0 for no limit.

... - Text that will be drawn

This can only be called from the paint callback.

Back to TOC


renderer.measure_text
syntax: renderer.measure_text(flags, ...)

flags - "+" for large text, "-" for small text, or nil for normal sized text.

... - Text that will be measured

Returns width, height. This can only be called from the paint callback.

Back to TOC


renderer.rectangle
syntax: renderer.rectangle(x, y, w, h, r, g, b, a)

x - Screen coordinate

y - Screen coordinate

w - Width in pixels

h - Height in pixels

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

This can only be called from the paint callback.

Back to TOC


renderer.line
syntax: renderer.line(xa, ya, xb, yb, r, g, b, a)

xa - Screen coordinate of point A

ya - Screen coordinate of point A

xb - Screen coordinate of point B

yb - Screen coordinate of point B

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

This can only be called from the paint callback.

Back to TOC


renderer.gradient
syntax: renderer.gradient(x, y, w, h, r1, g1, b1, a1, r2, g2, b2, a2, ltr)

x - Screen coordinate

y - Screen coordinate

w - Width in pixels

h - Height in pixels

r1 - Red (1-255)

g1 - Green (1-255)

b1 - Blue (1-255)

a1 - Alpha (1-255)

r2 - Red (1-255)

g2 - Green (1-255)

b2 - Blue (1-255)

a2 - Alpha (1-255)

ltr - Left to right. Pass true for horizontal gradient, or false for vertical.

This can only be called from the paint callback.

Back to TOC


renderer.circle
syntax: renderer.circle(x, y, r, g, b, a, radius, start_degrees, percentage)

x - Screen coordinate

y - Screen coordinate

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

radius - Radius of the circle in pixels.

start_degrees - 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.

percentage - Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.

This can only be called from the paint callback.

Back to TOC


renderer.circle_outline
syntax: renderer.circle_outline(x, y, r, g, b, a, radius, start_degrees, percentage, thickness)

x - Screen coordinate

y - Screen coordinate

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

radius - Radius of the circle in pixels.

start_degrees - 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.

percentage - Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.

thickness - Thickness of the outline in pixels.

This can only be called from the paint callback.

Back to TOC


renderer.triangle
syntax: renderer.triangle(x0, y0, x1, y1, x2, y2, r, g, b, a)

x0 - Screen coordinate X for point A

y0 - Screen coordinate Y for point A

x1 - Screen coordinate X for point B

y1 - Screen coordinate Y for point B

x2 - Screen coordinate X for point C

y2 - Screen coordinate Y for point C

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

This can only be called from the paint callback.

Back to TOC


renderer.world_to_screen
syntax: renderer.world_to_screen(x, y, z)

x - Position in world space

y - Position in world space

z - Position in world space

Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.

Back to TOC


renderer.indicator
syntax: renderer.indicator(r, g, b, a, ...)

r - Red (1-255)

g - Green (1-255)

b - Blue (1-255)

a - Alpha (1-255)

... - The text that will be drawn

Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.

Back to TOC


renderer.texture
syntax: renderer.texture(id, x, y, w, h, r, g, b, a)

id - Texture ID

x - X screen coordinate

y - Y screen coordinate

w - Width

h - Height

r - Red (0-255)

g - Green (0-255)

b - Blue (0-255)

a - Alpha (0-255)

Back to TOC


renderer.load_svg
syntax: renderer.load_svg(contents, width, height)

contents - SVG file contents

width - Width

height - Height

Returns a texture ID that can be used with renderer.texture, or nil on failure

Back to TOC
