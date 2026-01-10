.class public final Landroidx/appcompat/app/z;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Landroidx/appcompat/app/q0;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final synthetic f:Landroidx/appcompat/app/g0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/g0;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Window callback may not be null"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/appcompat/app/z;->c:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/app/z;->c:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, Landroidx/appcompat/app/z;->c:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lj/l;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/z;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/g0;->u(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->B()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, v0, p1}, Ll5/a;->F(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, v2, Landroidx/appcompat/app/g0;->N:Landroidx/appcompat/app/f0;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v0, v3, p1}, Landroidx/appcompat/app/g0;->G(Landroidx/appcompat/app/f0;ILandroid/view/KeyEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p1, v2, Landroidx/appcompat/app/g0;->N:Landroidx/appcompat/app/f0;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iput-boolean v1, p1, Landroidx/appcompat/app/f0;->l:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, v2, Landroidx/appcompat/app/g0;->N:Landroidx/appcompat/app/f0;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/g0;->A(I)Landroidx/appcompat/app/f0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/app/g0;->H(Landroidx/appcompat/app/f0;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v2, v0, v4, p1}, Landroidx/appcompat/app/g0;->G(Landroidx/appcompat/app/f0;ILandroid/view/KeyEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput-boolean v3, v0, Landroidx/appcompat/app/f0;->k:Z

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v1, 0x0

    .line 77
    :cond_3
    :goto_0
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Landroid/view/ActionMode$Callback;)Lj/f;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, La0/f;

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 5
    .line 6
    iget-object v3, v2, Landroidx/appcompat/app/g0;->k:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v1, v3, p1}, La0/f;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lj/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance p1, La7/f;

    .line 19
    .line 20
    invoke-direct {p1, v2, v0, v1}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->B()V

    .line 24
    .line 25
    .line 26
    iget-object v3, v2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ll5/a;->T(La7/f;)Lj/a;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 35
    .line 36
    :cond_1
    iget-object v3, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    if-nez v3, :cond_f

    .line 40
    .line 41
    iget-object v3, v2, Landroidx/appcompat/app/g0;->y:Ln0/a1;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Ln0/a1;->b()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v3, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3}, Lj/a;->a()V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v3, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    if-nez v3, :cond_8

    .line 59
    .line 60
    iget-boolean v3, v2, Landroidx/appcompat/app/g0;->J:Z

    .line 61
    .line 62
    iget-object v6, v2, Landroidx/appcompat/app/g0;->k:Landroid/content/Context;

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    new-instance v3, Landroid/util/TypedValue;

    .line 67
    .line 68
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const v8, 0x7f040009

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v8, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 79
    .line 80
    .line 81
    iget v8, v3, Landroid/util/TypedValue;->resourceId:I

    .line 82
    .line 83
    if-eqz v8, :cond_4

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 94
    .line 95
    .line 96
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    .line 97
    .line 98
    invoke-virtual {v8, v7, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 99
    .line 100
    .line 101
    new-instance v7, Lj/d;

    .line 102
    .line 103
    invoke-direct {v7, v6, v5}, Lj/d;-><init>(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 111
    .line 112
    .line 113
    move-object v6, v7

    .line 114
    :cond_4
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 115
    .line 116
    invoke-direct {v7, v6, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    .line 118
    .line 119
    iput-object v7, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 120
    .line 121
    new-instance v7, Landroid/widget/PopupWindow;

    .line 122
    .line 123
    const v8, 0x7f040018

    .line 124
    .line 125
    .line 126
    invoke-direct {v7, v6, v4, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    .line 128
    .line 129
    iput-object v7, v2, Landroidx/appcompat/app/g0;->w:Landroid/widget/PopupWindow;

    .line 130
    .line 131
    const/4 v8, 0x2

    .line 132
    invoke-static {v7, v8}, Ll5/a;->Q(Landroid/widget/PopupWindow;I)V

    .line 133
    .line 134
    .line 135
    iget-object v7, v2, Landroidx/appcompat/app/g0;->w:Landroid/widget/PopupWindow;

    .line 136
    .line 137
    iget-object v8, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 138
    .line 139
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    iget-object v7, v2, Landroidx/appcompat/app/g0;->w:Landroid/widget/PopupWindow;

    .line 143
    .line 144
    const/4 v8, -0x1

    .line 145
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const v8, 0x7f040003

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v8, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 156
    .line 157
    .line 158
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-static {v3, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iget-object v6, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 173
    .line 174
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 175
    .line 176
    .line 177
    iget-object v3, v2, Landroidx/appcompat/app/g0;->w:Landroid/widget/PopupWindow;

    .line 178
    .line 179
    const/4 v6, -0x2

    .line 180
    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 181
    .line 182
    .line 183
    new-instance v3, Landroidx/appcompat/app/r;

    .line 184
    .line 185
    invoke-direct {v3, v2, v0}, Landroidx/appcompat/app/r;-><init>(Landroidx/appcompat/app/g0;I)V

    .line 186
    .line 187
    .line 188
    iput-object v3, v2, Landroidx/appcompat/app/g0;->x:Landroidx/appcompat/app/r;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    iget-object v3, v2, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 192
    .line 193
    const v7, 0x7f0b004f

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    .line 201
    .line 202
    if-eqz v3, :cond_8

    .line 203
    .line 204
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->B()V

    .line 205
    .line 206
    .line 207
    iget-object v7, v2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 208
    .line 209
    if-eqz v7, :cond_6

    .line 210
    .line 211
    invoke-virtual {v7}, Ll5/a;->v()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    goto :goto_0

    .line 216
    :cond_6
    move-object v7, v4

    .line 217
    :goto_0
    if-nez v7, :cond_7

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_7
    move-object v6, v7

    .line 221
    :goto_1
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Landroidx/appcompat/widget/ActionBarContextView;

    .line 233
    .line 234
    iput-object v3, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 235
    .line 236
    :cond_8
    :goto_2
    iget-object v3, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 237
    .line 238
    if-eqz v3, :cond_e

    .line 239
    .line 240
    iget-object v3, v2, Landroidx/appcompat/app/g0;->y:Ln0/a1;

    .line 241
    .line 242
    if-eqz v3, :cond_9

    .line 243
    .line 244
    invoke-virtual {v3}, Ln0/a1;->b()V

    .line 245
    .line 246
    .line 247
    :cond_9
    iget-object v3, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 248
    .line 249
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 250
    .line 251
    .line 252
    new-instance v3, Lj/e;

    .line 253
    .line 254
    iget-object v6, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 255
    .line 256
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    iget-object v7, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object v6, v3, Lj/e;->c:Landroid/content/Context;

    .line 266
    .line 267
    iput-object v7, v3, Lj/e;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 268
    .line 269
    iput-object p1, v3, Lj/e;->e:La7/f;

    .line 270
    .line 271
    new-instance v6, Lk/l;

    .line 272
    .line 273
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-direct {v6, v7}, Lk/l;-><init>(Landroid/content/Context;)V

    .line 278
    .line 279
    .line 280
    iput v0, v6, Lk/l;->l:I

    .line 281
    .line 282
    iput-object v6, v3, Lj/e;->h:Lk/l;

    .line 283
    .line 284
    iput-object v3, v6, Lk/l;->e:Lk/j;

    .line 285
    .line 286
    iget-object p1, p1, La7/f;->b:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast p1, La0/f;

    .line 289
    .line 290
    invoke-virtual {p1, v3, v6}, La0/f;->h(Lj/a;Lk/l;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_d

    .line 295
    .line 296
    invoke-virtual {v3}, Lj/e;->g()V

    .line 297
    .line 298
    .line 299
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 300
    .line 301
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/a;)V

    .line 302
    .line 303
    .line 304
    iput-object v3, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 305
    .line 306
    iget-boolean p1, v2, Landroidx/appcompat/app/g0;->A:Z

    .line 307
    .line 308
    if-eqz p1, :cond_a

    .line 309
    .line 310
    iget-object p1, v2, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 311
    .line 312
    if-eqz p1, :cond_a

    .line 313
    .line 314
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 315
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_a

    .line 321
    .line 322
    const/4 p1, 0x1

    .line 323
    goto :goto_3

    .line 324
    :cond_a
    const/4 p1, 0x0

    .line 325
    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 326
    .line 327
    if-eqz p1, :cond_b

    .line 328
    .line 329
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 330
    .line 331
    const/4 v5, 0x0

    .line 332
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 333
    .line 334
    .line 335
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 336
    .line 337
    invoke-static {p1}, Ln0/s0;->a(Landroid/view/View;)Ln0/a1;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1, v3}, Ln0/a1;->a(F)V

    .line 342
    .line 343
    .line 344
    iput-object p1, v2, Landroidx/appcompat/app/g0;->y:Ln0/a1;

    .line 345
    .line 346
    new-instance v3, Landroidx/appcompat/app/t;

    .line 347
    .line 348
    invoke-direct {v3, v0, v2}, Landroidx/appcompat/app/t;-><init>(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v3}, Ln0/a1;->d(Ln0/b1;)V

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_b
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 356
    .line 357
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 358
    .line 359
    .line 360
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 361
    .line 362
    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    instance-of p1, p1, Landroid/view/View;

    .line 372
    .line 373
    if-eqz p1, :cond_c

    .line 374
    .line 375
    iget-object p1, v2, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 376
    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Landroid/view/View;

    .line 382
    .line 383
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 384
    .line 385
    invoke-static {p1}, Ln0/e0;->c(Landroid/view/View;)V

    .line 386
    .line 387
    .line 388
    :cond_c
    :goto_4
    iget-object p1, v2, Landroidx/appcompat/app/g0;->w:Landroid/widget/PopupWindow;

    .line 389
    .line 390
    if-eqz p1, :cond_e

    .line 391
    .line 392
    iget-object p1, v2, Landroidx/appcompat/app/g0;->l:Landroid/view/Window;

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iget-object v0, v2, Landroidx/appcompat/app/g0;->x:Landroidx/appcompat/app/r;

    .line 399
    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_d
    iput-object v4, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 405
    .line 406
    :cond_e
    :goto_5
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->J()V

    .line 407
    .line 408
    .line 409
    iget-object p1, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 410
    .line 411
    iput-object p1, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 412
    .line 413
    :cond_f
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->J()V

    .line 414
    .line 415
    .line 416
    iget-object p1, v2, Landroidx/appcompat/app/g0;->u:Lj/a;

    .line 417
    .line 418
    if-eqz p1, :cond_10

    .line 419
    .line 420
    invoke-virtual {v1, p1}, La0/f;->f(Lj/a;)Lj/f;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    return-object p1

    .line 425
    :cond_10
    return-object v4
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/z;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p2, Lk/l;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->b:Landroidx/appcompat/app/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/view/View;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/appcompat/app/q0;->a:Landroidx/appcompat/app/s0;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/appcompat/app/s0;->r:Landroidx/appcompat/widget/v3;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/appcompat/widget/v3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/z;->b(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/app/g0;->B()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v1, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ll5/a;->r(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/z;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/z;->c(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 15
    .line 16
    const/16 v0, 0x6c

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/appcompat/app/g0;->B()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ll5/a;->r(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/g0;->A(I)Landroidx/appcompat/app/f0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-boolean v0, p1, Landroidx/appcompat/app/f0;->m:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/g0;->s(Landroidx/appcompat/app/f0;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lj/m;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    instance-of v0, p3, Lk/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lk/l;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-boolean v2, v0, Lk/l;->x:Z

    .line 20
    .line 21
    :cond_2
    iget-object v3, p0, Landroidx/appcompat/app/z;->b:Landroidx/appcompat/app/q0;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object v3, v3, Landroidx/appcompat/app/q0;->a:Landroidx/appcompat/app/s0;

    .line 28
    .line 29
    iget-boolean v4, v3, Landroidx/appcompat/app/s0;->u:Z

    .line 30
    .line 31
    if-nez v4, :cond_3

    .line 32
    .line 33
    iget-object v4, v3, Landroidx/appcompat/app/s0;->r:Landroidx/appcompat/widget/v3;

    .line 34
    .line 35
    iput-boolean v2, v4, Landroidx/appcompat/widget/v3;->l:Z

    .line 36
    .line 37
    iput-boolean v2, v3, Landroidx/appcompat/app/s0;->u:Z

    .line 38
    .line 39
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 40
    .line 41
    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iput-boolean v1, v0, Lk/l;->x:Z

    .line 48
    .line 49
    :cond_4
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/g0;->A(I)Landroidx/appcompat/app/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/appcompat/app/f0;->h:Lk/l;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, Landroidx/appcompat/app/z;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/app/z;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lj/k;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    iget-boolean v0, v0, Landroidx/appcompat/app/g0;->z:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/z;->e(Landroid/view/ActionMode$Callback;)Lj/f;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/z;->f:Landroidx/appcompat/app/g0;

    iget-boolean v0, v0, Landroidx/appcompat/app/g0;->z:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/z;->e(Landroid/view/ActionMode$Callback;)Lj/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lj/k;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
