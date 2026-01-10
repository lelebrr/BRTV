.class public final La3/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, La3/c;->a:I

    iput-object p2, p0, La3/c;->b:Ljava/lang/Object;

    iput-object p3, p0, La3/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, La3/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/c;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, La3/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, La3/c;->a:I

    iput-object p1, p0, La3/c;->c:Ljava/lang/Object;

    iput-object p3, p0, La3/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Register broadcast receiver of Bugly."

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/tencent/bugly/proguard/aq;

    .line 20
    .line 21
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/tencent/bugly/proguard/aq;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/tencent/bugly/proguard/aq;->b(Lcom/tencent/bugly/proguard/aq;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, La3/c;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lcom/tencent/bugly/proguard/aq;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/tencent/bugly/proguard/aq;->a(Lcom/tencent/bugly/proguard/aq;)Landroid/content/IntentFilter;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "com.tencent.bugly.BuglyBroadcastReceiver.permission"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, La3/c;->a:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lu4/d;

    .line 12
    .line 13
    iget-object v0, v0, Lu4/d;->b:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 14
    .line 15
    sget v1, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:I

    .line 16
    .line 17
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lr4/f;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->r(Lr4/f;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lsa/p;

    .line 28
    .line 29
    iget-object v0, v0, Lsa/p;->m0:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v3, p0, La3/c;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Lsa/l;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/16 v5, 0x54

    .line 58
    .line 59
    invoke-static {v4, v5}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    int-to-float v1, v1

    .line 65
    div-float/2addr v1, v4

    .line 66
    const/high16 v4, 0x40e00000    # 7.0f

    .line 67
    .line 68
    cmpl-float v4, v1, v4

    .line 69
    .line 70
    if-ltz v4, :cond_1

    .line 71
    .line 72
    const/4 v1, 0x7

    .line 73
    iput v1, v3, Lsa/l;->W:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    float-to-int v1, v1

    .line 77
    iput v1, v3, Lsa/l;->W:I

    .line 78
    .line 79
    :goto_0
    iget v1, v3, Lsa/l;->W:I

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object v1, v3, Lsa/l;->V:Lta/a;

    .line 84
    .line 85
    invoke-virtual {v1}, Lta/a;->h()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 92
    .line 93
    iget v4, v3, Lsa/l;->W:I

    .line 94
    .line 95
    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 103
    .line 104
    iget v1, v3, Lsa/l;->W:I

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    iget-object v0, v3, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_2
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lp8/g;

    .line 118
    .line 119
    iget-object v0, v0, Lp8/a;->j:Lo9/d;

    .line 120
    .line 121
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Lp8/f;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lo9/d;->F(Li8/c;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_3
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v3, Lp4/n;

    .line 132
    .line 133
    iget-object v3, v3, Lp4/n;->d:Lp4/o;

    .line 134
    .line 135
    sget-object v4, Lp4/o;->F:Lv4/b;

    .line 136
    .line 137
    iget-object v4, p0, La3/c;->c:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Lcom/google/android/gms/cast/internal/zza;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/google/android/gms/cast/internal/zza;->a:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v5, v3, Lp4/o;->t:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v4, v5}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_4

    .line 150
    .line 151
    iput-object v4, v3, Lp4/o;->t:Ljava/lang/String;

    .line 152
    .line 153
    const/4 v4, 0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const/4 v4, 0x0

    .line 156
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget-boolean v6, v3, Lp4/o;->m:Z

    .line 161
    .line 162
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    new-array v0, v0, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v5, v0, v2

    .line 169
    .line 170
    aput-object v6, v0, v1

    .line 171
    .line 172
    const-string v1, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 173
    .line 174
    sget-object v5, Lp4/o;->F:Lv4/b;

    .line 175
    .line 176
    invoke-virtual {v5, v1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, v3, Lp4/o;->C:Lcom/google/android/gms/internal/cast/j0;

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    if-nez v4, :cond_5

    .line 184
    .line 185
    iget-boolean v1, v3, Lp4/o;->m:Z

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/j0;->g()V

    .line 190
    .line 191
    .line 192
    :cond_6
    iput-boolean v2, v3, Lp4/o;->m:Z

    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_4
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v3, Lp4/n;

    .line 198
    .line 199
    iget-object v3, v3, Lp4/n;->d:Lp4/o;

    .line 200
    .line 201
    sget-object v4, Lp4/o;->F:Lv4/b;

    .line 202
    .line 203
    iget-object v4, p0, La3/c;->c:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v4, Lcom/google/android/gms/cast/internal/zzac;

    .line 206
    .line 207
    iget-object v5, v4, Lcom/google/android/gms/cast/internal/zzac;->d:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 208
    .line 209
    iget-object v6, v3, Lp4/o;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 210
    .line 211
    invoke-static {v5, v6}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    iget-object v7, v3, Lp4/o;->C:Lcom/google/android/gms/internal/cast/j0;

    .line 216
    .line 217
    if-nez v6, :cond_7

    .line 218
    .line 219
    iput-object v5, v3, Lp4/o;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 220
    .line 221
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/cast/j0;->e(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    iget-wide v5, v4, Lcom/google/android/gms/cast/internal/zzac;->a:D

    .line 225
    .line 226
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_8

    .line 231
    .line 232
    iget-wide v8, v3, Lp4/o;->u:D

    .line 233
    .line 234
    sub-double v8, v5, v8

    .line 235
    .line 236
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 237
    .line 238
    .line 239
    move-result-wide v8

    .line 240
    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    cmpl-double v12, v8, v10

    .line 246
    .line 247
    if-lez v12, :cond_8

    .line 248
    .line 249
    iput-wide v5, v3, Lp4/o;->u:D

    .line 250
    .line 251
    const/4 v5, 0x1

    .line 252
    goto :goto_3

    .line 253
    :cond_8
    const/4 v5, 0x0

    .line 254
    :goto_3
    iget-boolean v6, v3, Lp4/o;->v:Z

    .line 255
    .line 256
    iget-boolean v8, v4, Lcom/google/android/gms/cast/internal/zzac;->b:Z

    .line 257
    .line 258
    if-eq v8, v6, :cond_9

    .line 259
    .line 260
    iput-boolean v8, v3, Lp4/o;->v:Z

    .line 261
    .line 262
    const/4 v5, 0x1

    .line 263
    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    iget-boolean v8, v3, Lp4/o;->l:Z

    .line 268
    .line 269
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    new-array v9, v0, [Ljava/lang/Object;

    .line 274
    .line 275
    aput-object v6, v9, v2

    .line 276
    .line 277
    aput-object v8, v9, v1

    .line 278
    .line 279
    sget-object v6, Lp4/o;->F:Lv4/b;

    .line 280
    .line 281
    const-string v8, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 282
    .line 283
    invoke-virtual {v6, v8, v9}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    if-eqz v7, :cond_b

    .line 287
    .line 288
    if-nez v5, :cond_a

    .line 289
    .line 290
    iget-boolean v5, v3, Lp4/o;->l:Z

    .line 291
    .line 292
    if-eqz v5, :cond_b

    .line 293
    .line 294
    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/j0;->l()V

    .line 295
    .line 296
    .line 297
    :cond_b
    iget-wide v8, v4, Lcom/google/android/gms/cast/internal/zzac;->g:D

    .line 298
    .line 299
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 300
    .line 301
    .line 302
    iget v5, v3, Lp4/o;->w:I

    .line 303
    .line 304
    iget v8, v4, Lcom/google/android/gms/cast/internal/zzac;->c:I

    .line 305
    .line 306
    if-eq v8, v5, :cond_c

    .line 307
    .line 308
    iput v8, v3, Lp4/o;->w:I

    .line 309
    .line 310
    const/4 v5, 0x1

    .line 311
    goto :goto_4

    .line 312
    :cond_c
    const/4 v5, 0x0

    .line 313
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    iget-boolean v9, v3, Lp4/o;->l:Z

    .line 318
    .line 319
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    new-array v10, v0, [Ljava/lang/Object;

    .line 324
    .line 325
    aput-object v8, v10, v2

    .line 326
    .line 327
    aput-object v9, v10, v1

    .line 328
    .line 329
    const-string v8, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 330
    .line 331
    invoke-virtual {v6, v8, v10}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    if-eqz v7, :cond_e

    .line 335
    .line 336
    if-nez v5, :cond_d

    .line 337
    .line 338
    iget-boolean v5, v3, Lp4/o;->l:Z

    .line 339
    .line 340
    if-eqz v5, :cond_e

    .line 341
    .line 342
    :cond_d
    iget v5, v3, Lp4/o;->w:I

    .line 343
    .line 344
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/cast/j0;->a(I)V

    .line 345
    .line 346
    .line 347
    :cond_e
    iget v5, v3, Lp4/o;->x:I

    .line 348
    .line 349
    iget v8, v4, Lcom/google/android/gms/cast/internal/zzac;->e:I

    .line 350
    .line 351
    if-eq v8, v5, :cond_f

    .line 352
    .line 353
    iput v8, v3, Lp4/o;->x:I

    .line 354
    .line 355
    const/4 v5, 0x1

    .line 356
    goto :goto_5

    .line 357
    :cond_f
    const/4 v5, 0x0

    .line 358
    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    iget-boolean v9, v3, Lp4/o;->l:Z

    .line 363
    .line 364
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    new-array v0, v0, [Ljava/lang/Object;

    .line 369
    .line 370
    aput-object v8, v0, v2

    .line 371
    .line 372
    aput-object v9, v0, v1

    .line 373
    .line 374
    const-string v1, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 375
    .line 376
    invoke-virtual {v6, v1, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    if-eqz v7, :cond_11

    .line 380
    .line 381
    if-nez v5, :cond_10

    .line 382
    .line 383
    iget-boolean v0, v3, Lp4/o;->l:Z

    .line 384
    .line 385
    if-eqz v0, :cond_11

    .line 386
    .line 387
    :cond_10
    iget v0, v3, Lp4/o;->x:I

    .line 388
    .line 389
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/cast/j0;->j(I)V

    .line 390
    .line 391
    .line 392
    :cond_11
    iget-object v0, v3, Lp4/o;->y:Lcom/google/android/gms/cast/zzat;

    .line 393
    .line 394
    iget-object v1, v4, Lcom/google/android/gms/cast/internal/zzac;->f:Lcom/google/android/gms/cast/zzat;

    .line 395
    .line 396
    invoke-static {v0, v1}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_12

    .line 401
    .line 402
    iput-object v1, v3, Lp4/o;->y:Lcom/google/android/gms/cast/zzat;

    .line 403
    .line 404
    :cond_12
    iput-boolean v2, v3, Lp4/o;->l:Z

    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_5
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v0, Lfa/j0;

    .line 410
    .line 411
    iget-object v2, v0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 412
    .line 413
    check-cast v2, Lma/a;

    .line 414
    .line 415
    iput-boolean v1, v2, Lma/a;->l:Z

    .line 416
    .line 417
    iget-object v2, v2, Lma/a;->f:Lna/a;

    .line 418
    .line 419
    if-eqz v2, :cond_13

    .line 420
    .line 421
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v3, Landroid/view/View;

    .line 424
    .line 425
    iget v0, v0, Lfa/j0;->b:I

    .line 426
    .line 427
    invoke-virtual {v2, v3, v0, v1}, Lna/a;->a(Landroid/view/View;IZ)V

    .line 428
    .line 429
    .line 430
    :cond_13
    return-void

    .line 431
    :pswitch_6
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 434
    .line 435
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v1, Lka/m0;

    .line 438
    .line 439
    invoke-static {v1, v0, v2, v2}, Lka/m0;->Q(Lka/m0;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_7
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v0, Lka/i0;

    .line 446
    .line 447
    iget-object v1, v0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 448
    .line 449
    if-eqz v1, :cond_15

    .line 450
    .line 451
    iget-object v1, v0, Lka/i0;->U:Lta/a;

    .line 452
    .line 453
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v3, Lfa/m0;

    .line 456
    .line 457
    iget-object v3, v3, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v1, v3}, Lta/a;->e(Ljava/util/ArrayList;)I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    const/4 v3, -0x1

    .line 464
    if-ne v1, v3, :cond_14

    .line 465
    .line 466
    iget-object v0, v0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 467
    .line 468
    invoke-static {v0, v2}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 469
    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_14
    iget-object v0, v0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 473
    .line 474
    invoke-static {v0, v1}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 475
    .line 476
    .line 477
    :cond_15
    :goto_6
    return-void

    .line 478
    :pswitch_8
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Lka/f0;

    .line 481
    .line 482
    iget-object v1, v0, Lka/f0;->a:Lka/i0;

    .line 483
    .line 484
    invoke-virtual {v1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    iget-object v2, p0, La3/c;->b:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v2, Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v1, v2}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    check-cast v1, Lsa/l;

    .line 501
    .line 502
    if-eqz v1, :cond_16

    .line 503
    .line 504
    iget-object v0, v0, Lka/f0;->a:Lka/i0;

    .line 505
    .line 506
    invoke-virtual {v0, v2}, Lka/i0;->R(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_16
    const-string v0, "b+oSom52aelVwwSHbG9t7k0=\n"

    .line 511
    .line 512
    const-string v1, "OYV25gsCCIA=\n"

    .line 513
    .line 514
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    const-string v1, "ekFM9ZEU3r/urI0rCUaGjrI=\n"

    .line 519
    .line 520
    const-string v2, "CDQiz7H8YSc=\n"

    .line 521
    .line 522
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 527
    .line 528
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    :goto_7
    return-void

    .line 532
    :pswitch_9
    invoke-static {}, Le3/v;->a()Le3/v;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    invoke-static {}, Lr3/n;->a()V

    .line 540
    .line 541
    .line 542
    iget-object v0, v0, Le3/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 545
    .line 546
    .line 547
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Lk3/d;

    .line 550
    .line 551
    iget-object v0, v0, Lk3/d;->b:Lk3/e;

    .line 552
    .line 553
    iput-boolean v1, v0, Lk3/e;->b:Z

    .line 554
    .line 555
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v0, Lk3/d;

    .line 558
    .line 559
    iget-object v0, v0, Lk3/d;->a:Landroid/view/View;

    .line 560
    .line 561
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v1, Lk3/d;

    .line 564
    .line 565
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 570
    .line 571
    .line 572
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v0, Lk3/d;

    .line 575
    .line 576
    iget-object v0, v0, Lk3/d;->b:Lk3/e;

    .line 577
    .line 578
    iget-object v0, v0, Lk3/e;->a:Ljava/util/Set;

    .line 579
    .line 580
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 581
    .line 582
    .line 583
    return-void

    .line 584
    :pswitch_a
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v0, Lk0/d;

    .line 587
    .line 588
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 589
    .line 590
    invoke-virtual {v0, v1}, Lk0/d;->accept(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    :pswitch_b
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v0, La0/b;

    .line 597
    .line 598
    iget-object v0, v0, La0/b;->b:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v0, Le0/b;

    .line 601
    .line 602
    if-eqz v0, :cond_17

    .line 603
    .line 604
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v1, Landroid/graphics/Typeface;

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Le0/b;->j(Landroid/graphics/Typeface;)V

    .line 609
    .line 610
    .line 611
    :cond_17
    return-void

    .line 612
    :pswitch_c
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 613
    .line 614
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lorg/bitspark/android/Spark;

    .line 617
    .line 618
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v1, Landroid/os/Bundle;

    .line 621
    .line 622
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->e0(Landroid/os/Bundle;)V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    :goto_8
    :pswitch_d
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v0, Lorg/bitspark/android/Spark;

    .line 629
    .line 630
    iget-object v3, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 631
    .line 632
    iget-object v3, v3, Lta/a;->E:Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    if-ge v2, v3, :cond_19

    .line 639
    .line 640
    iget-object v3, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 641
    .line 642
    iget-object v3, v3, Lta/a;->E:Ljava/util/ArrayList;

    .line 643
    .line 644
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    check-cast v3, Lorg/bitspark/android/beans/VodMenu;

    .line 649
    .line 650
    invoke-virtual {v3}, Lorg/bitspark/android/beans/VodMenu;->getName()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    iget-object v4, p0, La3/c;->b:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v4, Ljava/lang/String;

    .line 657
    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eqz v3, :cond_18

    .line 663
    .line 664
    iget-object v1, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 665
    .line 666
    iput v2, v1, Lta/a;->x:I

    .line 667
    .line 668
    goto :goto_9

    .line 669
    :cond_18
    add-int/2addr v2, v1

    .line 670
    goto :goto_8

    .line 671
    :cond_19
    :goto_9
    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->W()Z

    .line 672
    .line 673
    .line 674
    move-result v1

    .line 675
    if-eqz v1, :cond_1a

    .line 676
    .line 677
    iget-object v1, v0, Lorg/bitspark/android/Spark;->z0:Landroidx/leanback/widget/HorizontalGridView;

    .line 678
    .line 679
    iget-object v0, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 680
    .line 681
    iget v0, v0, Lta/a;->x:I

    .line 682
    .line 683
    invoke-static {v1, v0}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 684
    .line 685
    .line 686
    :cond_1a
    return-void

    .line 687
    :pswitch_e
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    iget-object v0, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 692
    .line 693
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v1, Lorg/bitspark/android/Spark;

    .line 696
    .line 697
    if-eqz v0, :cond_1b

    .line 698
    .line 699
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    const/16 v2, 0x12

    .line 704
    .line 705
    if-lt v0, v2, :cond_1b

    .line 706
    .line 707
    iget-object v0, v1, Lorg/bitspark/android/Spark;->r1:Landroid/widget/ProgressBar;

    .line 708
    .line 709
    const/16 v2, 0x64

    .line 710
    .line 711
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 712
    .line 713
    .line 714
    iget-object v0, v1, Lorg/bitspark/android/Spark;->r1:Landroid/widget/ProgressBar;

    .line 715
    .line 716
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 717
    .line 718
    .line 719
    goto :goto_a

    .line 720
    :cond_1b
    iget-object v0, v1, Lorg/bitspark/android/Spark;->r1:Landroid/widget/ProgressBar;

    .line 721
    .line 722
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v1, Ljava/lang/Long;

    .line 725
    .line 726
    invoke-static {v1}, Lorg/bitspark/android/utils/m;->j(Ljava/lang/Long;)J

    .line 727
    .line 728
    .line 729
    move-result-wide v1

    .line 730
    long-to-int v2, v1

    .line 731
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 732
    .line 733
    .line 734
    :goto_a
    sget-object v0, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 735
    .line 736
    const-wide/16 v1, 0x3e8

    .line 737
    .line 738
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    .line 740
    .line 741
    return-void

    .line 742
    :pswitch_f
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 743
    .line 744
    check-cast v0, Lea/k;

    .line 745
    .line 746
    iget-object v1, v0, Lea/k;->b:Lorg/bitspark/android/Spark;

    .line 747
    .line 748
    iget-object v1, v1, Lorg/bitspark/android/Spark;->s0:Landroidx/media3/ui/SubtitleView;

    .line 749
    .line 750
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 755
    .line 756
    iget-object v2, v0, Lea/k;->b:Lorg/bitspark/android/Spark;

    .line 757
    .line 758
    const v3, 0x7f120025

    .line 759
    .line 760
    .line 761
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast v3, Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    if-eqz v2, :cond_1c

    .line 774
    .line 775
    const/16 v2, 0x30

    .line 776
    .line 777
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 778
    .line 779
    goto :goto_b

    .line 780
    :cond_1c
    const/16 v2, 0x50

    .line 781
    .line 782
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 783
    .line 784
    :goto_b
    iget-object v0, v0, Lea/k;->b:Lorg/bitspark/android/Spark;

    .line 785
    .line 786
    iget-object v0, v0, Lorg/bitspark/android/Spark;->s0:Landroidx/media3/ui/SubtitleView;

    .line 787
    .line 788
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    .line 790
    .line 791
    return-void

    .line 792
    :pswitch_10
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v0, Landroid/content/Context;

    .line 795
    .line 796
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v1, Lcom/tencent/bugly/BuglyStrategy;

    .line 799
    .line 800
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/s;->b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 801
    .line 802
    .line 803
    return-void

    .line 804
    :pswitch_11
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v0, Lcom/tencent/bugly/proguard/k0;

    .line 807
    .line 808
    iget-object v0, v0, Lcom/tencent/bugly/proguard/k0;->b:Lcom/tencent/bugly/proguard/ay;

    .line 809
    .line 810
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast v3, Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    if-eqz v4, :cond_21

    .line 819
    .line 820
    :try_start_0
    const-string v4, "read trace first dump for create time!"

    .line 821
    .line 822
    new-array v5, v2, [Ljava/lang/Object;

    .line 823
    .line 824
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    invoke-static {v3, v2}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    const-wide/16 v5, -0x1

    .line 832
    .line 833
    if-eqz v4, :cond_1d

    .line 834
    .line 835
    iget-wide v7, v4, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    .line 836
    .line 837
    goto :goto_c

    .line 838
    :catchall_0
    move-exception v0

    .line 839
    goto :goto_d

    .line 840
    :cond_1d
    move-wide v7, v5

    .line 841
    :goto_c
    cmp-long v4, v7, v5

    .line 842
    .line 843
    if-nez v4, :cond_1e

    .line 844
    .line 845
    const-string v4, "trace dump fail could not get time!"

    .line 846
    .line 847
    new-array v5, v2, [Ljava/lang/Object;

    .line 848
    .line 849
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 853
    .line 854
    .line 855
    move-result-wide v7

    .line 856
    :cond_1e
    invoke-virtual {v0, v7, v8}, Lcom/tencent/bugly/proguard/ay;->a(J)Z

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    if-eqz v4, :cond_1f

    .line 861
    .line 862
    goto :goto_e

    .line 863
    :cond_1f
    invoke-virtual {v0, v7, v8, v3}, Lcom/tencent/bugly/proguard/ay;->a(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    .line 865
    .line 866
    goto :goto_e

    .line 867
    :goto_d
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    if-nez v3, :cond_20

    .line 872
    .line 873
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 874
    .line 875
    .line 876
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    new-array v1, v1, [Ljava/lang/Object;

    .line 885
    .line 886
    aput-object v0, v1, v2

    .line 887
    .line 888
    const-string v0, "handle anr error %s"

    .line 889
    .line 890
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    :cond_21
    :goto_e
    return-void

    .line 894
    :pswitch_12
    invoke-direct {p0}, La3/c;->a()V

    .line 895
    .line 896
    .line 897
    return-void

    .line 898
    :pswitch_13
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v0, Ljava/lang/Runnable;

    .line 901
    .line 902
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 903
    .line 904
    .line 905
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 906
    .line 907
    check-cast v0, Lcom/tencent/bugly/proguard/ai;

    .line 908
    .line 909
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ai;->a(Lcom/tencent/bugly/proguard/ai;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    monitor-enter v0

    .line 914
    :try_start_1
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast v1, Lcom/tencent/bugly/proguard/ai;

    .line 917
    .line 918
    invoke-static {v1}, Lcom/tencent/bugly/proguard/ai;->b(Lcom/tencent/bugly/proguard/ai;)I

    .line 919
    .line 920
    .line 921
    monitor-exit v0

    .line 922
    return-void

    .line 923
    :catchall_1
    move-exception v1

    .line 924
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 925
    throw v1

    .line 926
    :pswitch_14
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v0, Lcom/google/android/material/textfield/b;

    .line 929
    .line 930
    iget-object v0, v0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/n;

    .line 931
    .line 932
    check-cast v0, Lcom/google/android/material/textfield/r;

    .line 933
    .line 934
    iget-object v0, v0, Lcom/google/android/material/textfield/r;->e:Lcom/google/android/material/textfield/i;

    .line 935
    .line 936
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 937
    .line 938
    check-cast v1, Landroid/widget/EditText;

    .line 939
    .line 940
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 941
    .line 942
    .line 943
    return-void

    .line 944
    :pswitch_15
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 945
    .line 946
    check-cast v0, Lcom/google/android/material/textfield/b;

    .line 947
    .line 948
    iget-object v0, v0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/n;

    .line 949
    .line 950
    check-cast v0, Lcom/google/android/material/textfield/m;

    .line 951
    .line 952
    iget-object v0, v0, Lcom/google/android/material/textfield/m;->e:Lcom/google/android/material/textfield/i;

    .line 953
    .line 954
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 955
    .line 956
    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 957
    .line 958
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 959
    .line 960
    .line 961
    return-void

    .line 962
    :pswitch_16
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 963
    .line 964
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 965
    .line 966
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 971
    .line 972
    check-cast v1, Lcom/google/android/material/textfield/i;

    .line 973
    .line 974
    iget-object v2, v1, Lcom/google/android/material/textfield/i;->b:Lcom/google/android/material/textfield/n;

    .line 975
    .line 976
    check-cast v2, Lcom/google/android/material/textfield/m;

    .line 977
    .line 978
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/m;->i(Z)V

    .line 979
    .line 980
    .line 981
    iget-object v1, v1, Lcom/google/android/material/textfield/i;->b:Lcom/google/android/material/textfield/n;

    .line 982
    .line 983
    check-cast v1, Lcom/google/android/material/textfield/m;

    .line 984
    .line 985
    iput-boolean v0, v1, Lcom/google/android/material/textfield/m;->l:Z

    .line 986
    .line 987
    return-void

    .line 988
    :pswitch_17
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v0, Lcom/google/android/material/textfield/b;

    .line 991
    .line 992
    iget-object v2, v0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/n;

    .line 993
    .line 994
    check-cast v2, Lcom/google/android/material/textfield/e;

    .line 995
    .line 996
    iget-object v2, v2, Lcom/google/android/material/textfield/e;->e:Landroidx/appcompat/widget/p2;

    .line 997
    .line 998
    iget-object v3, p0, La3/c;->b:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast v3, Landroid/widget/EditText;

    .line 1001
    .line 1002
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v0, v0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/n;

    .line 1006
    .line 1007
    check-cast v0, Lcom/google/android/material/textfield/e;

    .line 1008
    .line 1009
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/e;->e(Z)V

    .line 1010
    .line 1011
    .line 1012
    return-void

    .line 1013
    :pswitch_18
    :try_start_2
    sget-object v3, Landroidx/core/app/e;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1014
    .line 1015
    iget-object v4, p0, La3/c;->c:Ljava/lang/Object;

    .line 1016
    .line 1017
    iget-object v5, p0, La3/c;->b:Ljava/lang/Object;

    .line 1018
    .line 1019
    if-eqz v3, :cond_22

    .line 1020
    .line 1021
    const/4 v6, 0x3

    .line 1022
    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    .line 1023
    .line 1024
    aput-object v4, v6, v2

    .line 1025
    .line 1026
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1027
    .line 1028
    aput-object v2, v6, v1

    .line 1029
    .line 1030
    const-string v1, "AppCompat recreation"

    .line 1031
    .line 1032
    aput-object v1, v6, v0

    .line 1033
    .line 1034
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    goto :goto_11

    .line 1038
    :catchall_2
    move-exception v0

    .line 1039
    goto :goto_f

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    goto :goto_10

    .line 1042
    :cond_22
    sget-object v3, Landroidx/core/app/e;->e:Ljava/lang/reflect/Method;

    .line 1043
    .line 1044
    new-array v0, v0, [Ljava/lang/Object;

    .line 1045
    .line 1046
    aput-object v4, v0, v2

    .line 1047
    .line 1048
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1049
    .line 1050
    aput-object v2, v0, v1

    .line 1051
    .line 1052
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1053
    .line 1054
    .line 1055
    goto :goto_11

    .line 1056
    :goto_f
    const-string v1, "ActivityRecreator"

    .line 1057
    .line 1058
    const-string v2, "Exception while invoking performStopActivity"

    .line 1059
    .line 1060
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    .line 1062
    .line 1063
    goto :goto_11

    .line 1064
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    const-class v2, Ljava/lang/RuntimeException;

    .line 1069
    .line 1070
    if-ne v1, v2, :cond_24

    .line 1071
    .line 1072
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    if-eqz v1, :cond_24

    .line 1077
    .line 1078
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    const-string v2, "Unable to stop"

    .line 1083
    .line 1084
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v1

    .line 1088
    if-nez v1, :cond_23

    .line 1089
    .line 1090
    goto :goto_11

    .line 1091
    :cond_23
    throw v0

    .line 1092
    :cond_24
    :goto_11
    return-void

    .line 1093
    :pswitch_19
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 1094
    .line 1095
    check-cast v0, Landroid/app/Application;

    .line 1096
    .line 1097
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 1098
    .line 1099
    check-cast v1, Landroidx/core/app/d;

    .line 1100
    .line 1101
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1102
    .line 1103
    .line 1104
    return-void

    .line 1105
    :pswitch_1a
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 1106
    .line 1107
    check-cast v0, Landroidx/core/app/d;

    .line 1108
    .line 1109
    iget-object v1, p0, La3/c;->c:Ljava/lang/Object;

    .line 1110
    .line 1111
    iput-object v1, v0, Landroidx/core/app/d;->a:Ljava/lang/Object;

    .line 1112
    .line 1113
    return-void

    .line 1114
    :pswitch_1b
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 1115
    .line 1116
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 1117
    .line 1118
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lv0/d;

    .line 1119
    .line 1120
    if-eqz v0, :cond_25

    .line 1121
    .line 1122
    invoke-virtual {v0}, Lv0/d;->g()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v0

    .line 1126
    if-eqz v0, :cond_25

    .line 1127
    .line 1128
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 1129
    .line 1130
    iget-object v0, p0, La3/c;->b:Ljava/lang/Object;

    .line 1131
    .line 1132
    check-cast v0, Landroid/view/View;

    .line 1133
    .line 1134
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1135
    .line 1136
    .line 1137
    :cond_25
    return-void

    .line 1138
    :pswitch_1c
    iget-object v0, p0, La3/c;->c:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v0, La3/d;

    .line 1141
    .line 1142
    iget-boolean v1, v0, La3/d;->d:Z

    .line 1143
    .line 1144
    if-eqz v1, :cond_26

    .line 1145
    .line 1146
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1147
    .line 1148
    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1164
    .line 1165
    .line 1166
    :cond_26
    :try_start_4
    iget-object v1, p0, La3/c;->b:Ljava/lang/Object;

    .line 1167
    .line 1168
    check-cast v1, Ljava/lang/Runnable;

    .line 1169
    .line 1170
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1171
    .line 1172
    .line 1173
    goto :goto_12

    .line 1174
    :catchall_3
    move-exception v1

    .line 1175
    iget-object v0, v0, La3/d;->c:La3/e;

    .line 1176
    .line 1177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    const/4 v0, 0x6

    .line 1181
    const-string v2, "GlideExecutor"

    .line 1182
    .line 1183
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v0

    .line 1187
    if-eqz v0, :cond_27

    .line 1188
    .line 1189
    const-string v0, "Request threw uncaught throwable"

    .line 1190
    .line 1191
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1192
    .line 1193
    .line 1194
    :cond_27
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
