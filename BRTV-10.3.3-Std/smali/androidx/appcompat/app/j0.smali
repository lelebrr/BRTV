.class public final Landroidx/appcompat/app/j0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/View;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/j0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/j0;->b:Landroid/view/View;

    .line 4
    iput-object p2, p0, Landroidx/appcompat/app/j0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll6/h;Landroid/widget/EditText;Landroid/widget/TextView;Lsa/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/j0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/j0;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/j0;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/app/j0;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/app/j0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/j0;->c:Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, ""

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/appcompat/app/j0;->b:Landroid/view/View;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, p0, Landroidx/appcompat/app/j0;->a:I

    .line 11
    .line 12
    packed-switch v6, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v3, Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v6, p0, Landroidx/appcompat/app/j0;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v6, Ll6/h;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object p1, v6, Ll6/h;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroid/content/Context;

    .line 42
    .line 43
    const v2, 0x7f1201b4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v7, 0x4

    .line 56
    if-ge v3, v7, :cond_1

    .line 57
    .line 58
    iget-object p1, v6, Ll6/h;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroid/content/Context;

    .line 61
    .line 62
    const v2, 0x7f1201b7

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-array v3, v5, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v2, v3, v4

    .line 76
    .line 77
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget-object v3, Lea/g;->g:Ljava/lang/String;

    .line 83
    .line 84
    sget-object v7, Lea/h;->x:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v3, v7}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    iget-object p1, v6, Ll6/h;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Landroid/content/Context;

    .line 99
    .line 100
    const v2, 0x7f1201b5

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const/4 v5, 0x0

    .line 109
    :goto_0
    if-eqz v5, :cond_3

    .line 110
    .line 111
    check-cast v1, Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    iget-object p1, v6, Ll6/h;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    .line 123
    .line 124
    iget-object v1, p0, Landroidx/appcompat/app/j0;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, Lsa/e;

    .line 127
    .line 128
    invoke-interface {p1, v1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :pswitch_0
    iget-object v6, p0, Landroidx/appcompat/app/j0;->d:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v6, Ljava/lang/reflect/Method;

    .line 138
    .line 139
    if-nez v6, :cond_8

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :goto_2
    move-object v7, v1

    .line 146
    check-cast v7, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->isRestricted()Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-nez v8, :cond_4

    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    new-array v9, v5, [Ljava/lang/Class;

    .line 161
    .line 162
    const-class v10, Landroid/view/View;

    .line 163
    .line 164
    aput-object v10, v9, v4

    .line 165
    .line 166
    invoke-virtual {v8, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    if-eqz v7, :cond_4

    .line 171
    .line 172
    iput-object v7, p0, Landroidx/appcompat/app/j0;->d:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v6, p0, Landroidx/appcompat/app/j0;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :catch_0
    nop

    .line 178
    :cond_4
    instance-of v7, v6, Landroid/content/ContextWrapper;

    .line 179
    .line 180
    if-eqz v7, :cond_5

    .line 181
    .line 182
    check-cast v6, Landroid/content/ContextWrapper;

    .line 183
    .line 184
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    goto :goto_2

    .line 189
    :cond_5
    const/4 v6, 0x0

    .line 190
    goto :goto_2

    .line 191
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-ne p1, v0, :cond_7

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v1, " with id \'"

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p1, "\'"

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    const-string v0, "Could not find method "

    .line 232
    .line 233
    const-string v1, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "

    .line 234
    .line 235
    invoke-static {v0, v7, v1}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_8
    :goto_4
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/app/j0;->d:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Ljava/lang/reflect/Method;

    .line 260
    .line 261
    iget-object v1, p0, Landroidx/appcompat/app/j0;->e:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v1, Landroid/content/Context;

    .line 264
    .line 265
    new-array v2, v5, [Ljava/lang/Object;

    .line 266
    .line 267
    aput-object p1, v2, v4

    .line 268
    .line 269
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :catch_1
    move-exception p1

    .line 274
    goto :goto_5

    .line 275
    :catch_2
    move-exception p1

    .line 276
    goto :goto_6

    .line 277
    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string v1, "Could not execute method for android:onClick"

    .line 280
    .line 281
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :goto_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    const-string v1, "Could not execute non-public method for android:onClick"

    .line 288
    .line 289
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
