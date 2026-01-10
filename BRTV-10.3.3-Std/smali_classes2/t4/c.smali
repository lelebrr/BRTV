.class public final Lt4/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lt4/b;


# direct methods
.method public synthetic constructor <init>(Lt4/b;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt4/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lt4/c;->b:Lt4/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lt4/c;->b:Lt4/b;

    .line 6
    .line 7
    iget v5, p0, Lt4/c;->a:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4}, Lt4/b;->p()Lr4/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lr4/f;->i()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, v4, Lt4/b;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 26
    .line 27
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lr4/g;

    .line 32
    .line 33
    invoke-direct {v0}, Lr4/g;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroidx/fragment/app/a;

    .line 44
    .line 45
    invoke-direct {v4, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "TRACKS_CHOOSER_DIALOG_TAG"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4, p1}, Landroidx/fragment/app/a;->h(Landroidx/fragment/app/s;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iput-boolean v3, v0, Landroidx/fragment/app/m;->h0:Z

    .line 64
    .line 65
    iput-boolean v2, v0, Landroidx/fragment/app/m;->i0:Z

    .line 66
    .line 67
    invoke-virtual {v4, v3, v0, v1, v2}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/s;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iput-boolean v3, v0, Landroidx/fragment/app/m;->g0:Z

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroidx/fragment/app/a;->e(Z)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, v0, Landroidx/fragment/app/m;->c0:I

    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {v4}, Lt4/b;->p()Lr4/f;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Lr4/f;->i()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1}, Lr4/f;->D()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1}, Lr4/f;->c()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    sub-long/2addr v2, v0

    .line 102
    iget-object v0, v4, Lt4/b;->e:Lr4/n;

    .line 103
    .line 104
    invoke-virtual {v0}, Lr4/n;->d()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-long v4, v1

    .line 109
    invoke-virtual {v0}, Lr4/n;->e()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    add-long/2addr v0, v4

    .line 114
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    invoke-virtual {p1, v0, v1}, Lr4/f;->u(J)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p1}, Lr4/f;->c()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    sub-long/2addr v2, v0

    .line 127
    invoke-virtual {p1, v2, v3}, Lr4/f;->u(J)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_1
    return-void

    .line 131
    :pswitch_1
    invoke-virtual {v4}, Lt4/b;->p()Lr4/f;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1}, Lr4/f;->i()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    invoke-virtual {p1}, Lr4/f;->D()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    invoke-virtual {p1}, Lr4/f;->c()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    add-long/2addr v2, v0

    .line 154
    iget-object v0, v4, Lt4/b;->e:Lr4/n;

    .line 155
    .line 156
    invoke-virtual {v0}, Lr4/n;->c()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    int-to-long v4, v1

    .line 161
    invoke-virtual {v0}, Lr4/n;->e()J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    add-long/2addr v0, v4

    .line 166
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    invoke-virtual {p1, v0, v1}, Lr4/f;->u(J)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {p1}, Lr4/f;->c()J

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    add-long/2addr v2, v0

    .line 179
    invoke-virtual {p1, v2, v3}, Lr4/f;->u(J)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_2
    return-void

    .line 183
    :pswitch_2
    invoke-virtual {v4}, Lt4/b;->p()Lr4/f;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_7

    .line 188
    .line 189
    invoke-virtual {p1}, Lr4/f;->i()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    invoke-virtual {p1}, Lr4/f;->r()V

    .line 196
    .line 197
    .line 198
    :cond_7
    return-void

    .line 199
    :pswitch_3
    invoke-virtual {v4}, Lt4/b;->p()Lr4/f;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1}, Lr4/f;->i()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    invoke-virtual {p1}, Lr4/f;->q()V

    .line 212
    .line 213
    .line 214
    :cond_8
    return-void

    .line 215
    :pswitch_4
    check-cast p1, Landroid/widget/ImageView;

    .line 216
    .line 217
    invoke-virtual {v4}, Lt4/b;->p()Lr4/f;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_9

    .line 222
    .line 223
    invoke-virtual {p1}, Lr4/f;->i()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_9

    .line 228
    .line 229
    invoke-virtual {p1}, Lr4/f;->v()V

    .line 230
    .line 231
    .line 232
    :cond_9
    return-void

    .line 233
    :pswitch_5
    check-cast p1, Landroid/widget/ImageView;

    .line 234
    .line 235
    iget-object p1, v4, Lt4/b;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Lq4/a;->b(Landroid/content/Context;)Lq4/a;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lq4/a;->a()Lq4/f;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lq4/f;->c()Lq4/b;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_c

    .line 254
    .line 255
    invoke-virtual {p1}, Lq4/e;->a()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_a

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    :try_start_0
    const-string v0, "Must be called from the main thread."

    .line 263
    .line 264
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p1, Lq4/b;->i:Lp4/o;

    .line 268
    .line 269
    if-eqz v0, :cond_b

    .line 270
    .line 271
    invoke-virtual {v0}, Lp4/o;->j()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_b

    .line 276
    .line 277
    invoke-virtual {v0}, Lp4/o;->j()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    const-string v4, "Not connected to device"

    .line 282
    .line 283
    invoke-static {v4, v1}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 284
    .line 285
    .line 286
    iget-boolean v0, v0, Lp4/o;->v:Z

    .line 287
    .line 288
    if-eqz v0, :cond_b

    .line 289
    .line 290
    const/4 v0, 0x1

    .line 291
    goto :goto_3

    .line 292
    :cond_b
    const/4 v0, 0x0

    .line 293
    :goto_3
    xor-int/2addr v0, v2

    .line 294
    invoke-virtual {p1, v0}, Lq4/b;->g(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :catch_0
    move-exception p1

    .line 299
    goto :goto_4

    .line 300
    :catch_1
    move-exception p1

    .line 301
    :goto_4
    new-array v0, v2, [Ljava/lang/Object;

    .line 302
    .line 303
    aput-object p1, v0, v3

    .line 304
    .line 305
    sget-object p1, Lt4/b;->h:Lv4/b;

    .line 306
    .line 307
    iget-object v1, p1, Lv4/b;->a:Ljava/lang/String;

    .line 308
    .line 309
    const-string v2, "Unable to call CastSession.setMute(boolean)."

    .line 310
    .line 311
    invoke-virtual {p1, v2, v0}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    :cond_c
    :goto_5
    return-void

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
