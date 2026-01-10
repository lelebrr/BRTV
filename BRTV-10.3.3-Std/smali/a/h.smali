.class public final La/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/u;


# static fields
.field public static c:I

.field public static d:Ljava/lang/reflect/Field;

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Ljava/lang/reflect/Field;


# instance fields
.field public final synthetic a:I

.field public b:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, La/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, La/h;->a:I

    iput-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/w;Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    iget p1, p0, La/h;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 7
    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget p1, La/h;->c:I

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    :try_start_0
    sput v0, La/h;->c:I

    .line 21
    .line 22
    const-string v0, "mServedView"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, La/h;->e:Ljava/lang/reflect/Field;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "mNextServedView"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, La/h;->f:Ljava/lang/reflect/Field;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "mH"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sput-object p1, La/h;->d:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    .line 54
    .line 55
    sput p2, La/h;->c:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    nop

    .line 59
    :cond_1
    :goto_0
    sget p1, La/h;->c:I

    .line 60
    .line 61
    if-ne p1, p2, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    .line 64
    .line 65
    const-string p2, "input_method"

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    .line 73
    :try_start_1
    sget-object p2, La/h;->d:Ljava/lang/reflect/Field;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    monitor-enter p2

    .line 83
    :try_start_2
    sget-object v0, La/h;->e:Ljava/lang/reflect/Field;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    :try_start_3
    monitor-exit p2

    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :try_start_4
    sget-object v0, La/h;->f:Ljava/lang/reflect/Field;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_1
    :try_start_6
    monitor-exit p2

    .line 117
    goto :goto_2

    .line 118
    :catch_2
    monitor-exit p2

    .line 119
    goto :goto_2

    .line 120
    :catch_3
    monitor-exit p2

    .line 121
    goto :goto_2

    .line 122
    :goto_1
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    throw p1

    .line 124
    :catch_4
    :cond_5
    :goto_2
    return-void

    .line 125
    :pswitch_0
    iget-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    .line 126
    .line 127
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/z0;

    .line 128
    .line 129
    if-nez p2, :cond_7

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, La/j;

    .line 136
    .line 137
    if-eqz p2, :cond_6

    .line 138
    .line 139
    iget-object p2, p2, La/j;->a:Landroidx/lifecycle/z0;

    .line 140
    .line 141
    iput-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/z0;

    .line 142
    .line 143
    :cond_6
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/z0;

    .line 144
    .line 145
    if-nez p2, :cond_7

    .line 146
    .line 147
    new-instance p2, Landroidx/lifecycle/z0;

    .line 148
    .line 149
    invoke-direct {p2}, Landroidx/lifecycle/z0;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/z0;

    .line 153
    .line 154
    :cond_7
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/y;

    .line 155
    .line 156
    invoke-virtual {p1, p0}, Landroidx/lifecycle/y;->c(Landroidx/lifecycle/v;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_1
    sget-object p1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 161
    .line 162
    if-ne p2, p1, :cond_8

    .line 163
    .line 164
    iget-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    .line 165
    .line 166
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->b:Lb/a;

    .line 167
    .line 168
    const/4 p2, 0x0

    .line 169
    iput-object p2, p1, Lb/a;->a:Ljava/lang/Object;

    .line 170
    .line 171
    iget-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_8

    .line 178
    .line 179
    iget-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->e()Landroidx/lifecycle/z0;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroidx/lifecycle/z0;->a()V

    .line 186
    .line 187
    .line 188
    :cond_8
    return-void

    .line 189
    :pswitch_2
    sget-object p1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 190
    .line 191
    if-ne p2, p1, :cond_a

    .line 192
    .line 193
    iget-object p1, p0, La/h;->b:Landroidx/activity/ComponentActivity;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_9

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    goto :goto_3

    .line 206
    :cond_9
    const/4 p1, 0x0

    .line 207
    :goto_3
    if-eqz p1, :cond_a

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 210
    .line 211
    .line 212
    :cond_a
    return-void

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
