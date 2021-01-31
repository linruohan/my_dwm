# 我的dwm 使用说明书

## 标记窗口数字或汉字
/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
//static const char *tags[] = { "一", "二", "三", "四", "五", "六", "七", "八", "九" };
//static const char *tags[] = { "\uf120", "\uf7ae", "\uf121", "\uf04b", "\ue62e", "\uf251", "\ue727", "\uf537", "\uf684" };

## 快捷键备注
static Key keys[] = {
	/* modifier            key                      function        argument */
=====================================================================================

	{ MODKEY,              XK_s,                    spawn,          {.v = dmenucmd } },打开dmenu
	{ MODKEY,              XK_Return,               spawn,          {.v = termcmd } },打开终端
	{ MODKEY,              XK_c,                    spawn,          {.v = browsercmd } },打开浏览器
	{ MODKEY|ShiftMask,    XK_w,                    spawn,          {.v = setqwertycmd } },设置智能命令行模式
	//{ MODKEY|ShiftMask,    XK_m,                    spawn,          {.v = setcolemakcmd } },置colemak键盘模式
	{ MODKEY|ShiftMask,    XK_p,                    spawn,          {.v = suspendcmd } },
	{ MODKEY|ControlMask,  XK_s,                    spawn,          {.v = sktogglecmd } },
	{ 0,                   XF86XK_AudioLowerVolume, spawn,          {.v = downvol } },
	{ 0,                   XF86XK_AudioMute,        spawn,          {.v = mutevol } },
	{ 0,                   XF86XK_AudioRaiseVolume, spawn,          {.v = upvol   } },
	{ MODKEY,              XK_bracketleft,          spawn,          {.v = downvol } },
	{ MODKEY,              XK_backslash,            spawn,          {.v = mutevol } },
	{ MODKEY,              XK_bracketright,         spawn,          {.v = upvol   } },
	{ MODKEY,              XK_b,                    spawn,          {.v = wpcmd } },
	{ 0,                   XK_Print,                spawn,          {.v = screenshotcmd } },截图
	{ MODKEY|ShiftMask,    XK_e,                    rotatestack,    {.i = +1 } },切换左右pane窗口
	{ MODKEY|ShiftMask,    XK_u,                    rotatestack,    {.i = -1 } },切换右右pane窗口
	{ MODKEY,              XK_e,                    focusstack,     {.i = +1 } },换光标在pane窗口之间
	{ MODKEY,              XK_u,                    focusstack,     {.i = -1 } },换光标在pane窗口之间
	{ MODKEY,              XK_n,                    viewtoleft,     {0} },上一个window
	{ MODKEY,              XK_i,                    viewtoright,    {0} },下一个window
	{ MODKEY|ShiftMask,    XK_n,                    tagtoleft,      {0} },合并到上一个window
	{ MODKEY|ShiftMask,    XK_i,                    tagtoright,     {0} },合并到下一个window
	{ MODKEY|ShiftMask,    XK_h,                    incnmaster,     {.i = +1 } },切换pane上下-左右布局
	{ MODKEY|ShiftMask,    XK_l,                    incnmaster,     {.i = -1 } },切换pane左右-上下布局
	{ MODKEY,              XK_h,                    setmfact,       {.f = -0.05} },缩小pane宽度
	{ MODKEY,              XK_l,                    setmfact,       {.f = +0.05} },增大pane宽度
	{ MODKEY,              XK_k,                    hidewin,        {0} },隐藏当前pane
	{ MODKEY|ShiftMask,    XK_k,                    restorewin,     {0} },显示当前pane
	{ MODKEY,              XK_o,                    hideotherwins,  {0}},隐藏除当前pane之外的所有pane
	{ MODKEY|ShiftMask,    XK_o,                    restoreotherwins, {0}},取消所其他pane的隐藏
	{ MODKEY|ShiftMask,    XK_Return,               zoom,           {0} },切换为主pane
	{ MODKEY,              XK_Tab,                  view,           {0} },切换两个window
	{ MODKEY,              XK_q,                    killclient,     {0} },杀死pane
	{ MODKEY,              XK_t,                    setlayout,      {.v = &layouts[0]} },设置显示模式0
	{ MODKEY,              XK_m,                    setlayout,      {.v = &layouts[2]} },设置显示模式2
	{ MODKEY|ShiftMask,    XK_f,                    fullscreen,     {0} },最大化pane
	{ MODKEY,              XK_space,                setlayout,      {0} },
	{ MODKEY|ShiftMask,    XK_space,                togglefloating, {0} },置位浮动pane
	{ MODKEY,              XK_apostrophe,           togglescratch,  {.v = scratchpadcmd } },
	{ MODKEY,              XK_0,                    view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,    XK_0,                    tag,            {.ui = ~0 } },显示所有pane到一个window
	{ MODKEY,              XK_comma,                focusmon,       {.i = -1 } },
	{ MODKEY,              XK_period,               focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,    XK_comma,                tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,    XK_period,               tagmon,         {.i = +1 } },
	{ MODKEY|ControlMask,  XK_q,      quit,           {0} },注销

