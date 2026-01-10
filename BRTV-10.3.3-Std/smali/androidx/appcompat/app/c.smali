.class public final Landroidx/appcompat/app/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/app/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/appcompat/app/c;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/appcompat/app/c;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lka/j;Lcom/youth/banner/indicator/RectangleIndicator;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/app/c;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/n;

    .line 4
    .line 5
    iget-object v1, v0, Lp4/n;->d:Lp4/o;

    .line 6
    .line 7
    iget-object v1, v1, Lp4/o;->B:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lp4/b;

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, v0, Lp4/n;->d:Lp4/o;

    .line 28
    .line 29
    iget-object v0, v0, Lp4/o;->z:Lcom/google/android/gms/cast/CastDevice;

    .line 30
    .line 31
    check-cast v3, Lr4/f;

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Lr4/f;->p(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    sget-object v0, Lp4/o;->F:Lv4/b;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    const-string v2, "Discarded message for unknown namespace \'%s\'"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Landroidx/appcompat/app/c;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lv4/v;

    .line 11
    .line 12
    iget-object v3, v2, Lv4/v;->C:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-object v2, v2, Lv4/v;->C:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lp4/b;

    .line 26
    .line 27
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    check-cast v2, Lr4/f;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lr4/f;->p(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v3, Lv4/v;->S:Lv4/b;

    .line 45
    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v2, v0, v1

    .line 49
    .line 50
    const-string v1, "Discarded message for unknown namespace \'%s\'"

    .line 51
    .line 52
    invoke-virtual {v3, v1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw v0

    .line 59
    :pswitch_0
    invoke-direct {p0}, Landroidx/appcompat/app/c;->a()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lka/i0;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/16 v3, 0x54

    .line 80
    .line 81
    invoke-static {v2, v3}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    int-to-float v2, v2

    .line 86
    int-to-float v0, v0

    .line 87
    div-float/2addr v0, v2

    .line 88
    const/high16 v2, 0x40e00000    # 7.0f

    .line 89
    .line 90
    cmpl-float v2, v0, v2

    .line 91
    .line 92
    if-ltz v2, :cond_1

    .line 93
    .line 94
    const/4 v0, 0x7

    .line 95
    iput v0, v1, Lka/i0;->Y:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    float-to-int v0, v0

    .line 99
    iput v0, v1, Lka/i0;->Y:I

    .line 100
    .line 101
    :goto_1
    iget v0, v1, Lka/i0;->Y:I

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v0, v1, Lka/i0;->U:Lta/a;

    .line 106
    .line 107
    invoke-virtual {v0}, Lta/a;->h()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 114
    .line 115
    iget v2, v1, Lka/i0;->Y:I

    .line 116
    .line 117
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v1, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    iget-object v0, v1, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 129
    .line 130
    iget v1, v1, Lka/i0;->Y:I

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Landroidx/media3/exoplayer/hls/b;

    .line 138
    .line 139
    sget-object v1, Lka/i0;->i0:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v2, Lka/i0;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean;

    .line 152
    .line 153
    invoke-virtual {v2, v0, v1}, Lka/i0;->S(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_2
    iget-object v2, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v2, Lcom/youth/banner/indicator/RectangleIndicator;

    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-lez v2, :cond_5

    .line 166
    .line 167
    iget-object v3, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v3, Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    add-int/lit8 v5, v2, 0x18

    .line 176
    .line 177
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    iget-object v4, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v4, Lka/j;

    .line 185
    .line 186
    iget-object v5, v4, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/youth/banner/Banner;->getItemCount()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-le v5, v0, :cond_4

    .line 193
    .line 194
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_4
    const/4 v0, 0x4

    .line 199
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    :goto_3
    const-string v0, "nt400Byspk271DfB\n"

    .line 203
    .line 204
    const-string v1, "1rFZtVrexyo=\n"

    .line 205
    .line 206
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v3, "wqvkaRqyWmrZ5fdpHadGP4s=\n"

    .line 216
    .line 217
    const-string v5, "q8WAAHnTLgU=\n"

    .line 218
    .line 219
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v2, "kvPKLxQylA==\n"

    .line 230
    .line 231
    const-string v3, "r873EikPqQI=\n"

    .line 232
    .line 233
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object v2, v4, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/youth/banner/Banner;->getItemCount()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 254
    .line 255
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_5
    return-void

    .line 259
    :pswitch_3
    :try_start_2
    iget-object v0, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v0, Lk0/c;

    .line 262
    .line 263
    invoke-virtual {v0}, Lk0/c;->call()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    goto :goto_4

    .line 268
    :catch_0
    const/4 v0, 0x0

    .line 269
    :goto_4
    new-instance v2, La3/c;

    .line 270
    .line 271
    iget-object v3, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v3, Lk0/d;

    .line 274
    .line 275
    const/16 v4, 0x12

    .line 276
    .line 277
    invoke-direct {v2, v4, v3, v0, v1}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v0, Landroid/os/Handler;

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_4
    iget-object v0, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v0, Ljava/util/ArrayList;

    .line 291
    .line 292
    iget-object v1, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Landroidx/fragment/app/v0;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_6

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Landroidx/fragment/app/i;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget-object v0, v1, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/s;

    .line 313
    .line 314
    iget-object v0, v0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 315
    .line 316
    iget v1, v1, Landroidx/fragment/app/v0;->a:I

    .line 317
    .line 318
    invoke-static {v1, v0}, La/e;->a(ILandroid/view/View;)V

    .line 319
    .line 320
    .line 321
    :cond_6
    return-void

    .line 322
    :pswitch_5
    iget-object v0, p0, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Landroidx/appcompat/app/h;

    .line 325
    .line 326
    iget-object v0, v0, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 327
    .line 328
    iget-object v1, p0, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v1, Landroid/view/View;

    .line 331
    .line 332
    iget-object v2, p0, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v2, Landroid/view/View;

    .line 335
    .line 336
    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/h;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    nop

    .line 341
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
