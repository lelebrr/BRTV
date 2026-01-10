.class public final synthetic Ls4/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ls4/h;->a:I

    iput-object p2, p0, Ls4/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz4/l;Lc6/b;)V
    .locals 0

    const/16 p1, 0xb

    iput p1, p0, Ls4/h;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls4/h;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls4/h;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lw0/e;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lw0/e;->c:Z

    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    sget-object v0, Lw0/e;->j:Ljava/lang/ref/ReferenceQueue;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Ls4/h;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lw0/e;

    .line 22
    .line 23
    iget-object v0, v0, Lw0/e;->d:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Ls4/h;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lw0/e;

    .line 34
    .line 35
    iget-object v0, v0, Lw0/e;->d:Landroid/view/View;

    .line 36
    .line 37
    sget-object v1, Lw0/e;->k:Lcom/google/android/material/internal/c0;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Ls4/h;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lw0/e;

    .line 45
    .line 46
    iget-object v0, v0, Lw0/e;->d:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Ls4/h;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lw0/e;

    .line 55
    .line 56
    iget-boolean v2, v0, Lw0/e;->e:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lw0/e;->S()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0}, Lw0/e;->P()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v2, 0x1

    .line 72
    iput-boolean v2, v0, Lw0/e;->e:Z

    .line 73
    .line 74
    invoke-virtual {v0}, Lw0/e;->O()V

    .line 75
    .line 76
    .line 77
    iput-boolean v1, v0, Lw0/e;->e:Z

    .line 78
    .line 79
    :goto_1
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ls4/h;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0

    .line 10
    :pswitch_0
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lz4/w;

    .line 13
    .line 14
    iget-object v0, v0, Lz4/w;->j:La/q;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, La/q;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ls2/c;

    .line 29
    .line 30
    iget-object v0, v0, Ls2/c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lz4/n;

    .line 33
    .line 34
    iget-object v0, v0, Lz4/n;->d:Ly4/c;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, " disconnecting because it was signed out."

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v0, v2}, Ly4/c;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lz4/n;

    .line 57
    .line 58
    invoke-virtual {v0}, Lz4/n;->f()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroidx/drawerlayout/widget/b;

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/drawerlayout/widget/b;->d:Lv0/d;

    .line 67
    .line 68
    iget v2, v2, Lv0/d;->o:I

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    const/4 v4, 0x1

    .line 72
    iget v5, v0, Landroidx/drawerlayout/widget/b;->c:I

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    if-ne v5, v3, :cond_0

    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v7, 0x0

    .line 80
    :goto_0
    const/4 v8, 0x5

    .line 81
    iget-object v9, v0, Landroidx/drawerlayout/widget/b;->f:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 82
    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {v9, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    if-eqz v10, :cond_1

    .line 90
    .line 91
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    neg-int v11, v11

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    const/4 v11, 0x0

    .line 98
    :goto_1
    add-int/2addr v11, v2

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v9, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    sub-int/2addr v11, v2

    .line 109
    :goto_2
    if-eqz v10, :cond_8

    .line 110
    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-lt v2, v11, :cond_4

    .line 118
    .line 119
    :cond_3
    if-nez v7, :cond_8

    .line 120
    .line 121
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-le v2, v11, :cond_8

    .line 126
    .line 127
    :cond_4
    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_8

    .line 132
    .line 133
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 138
    .line 139
    iget-object v0, v0, Landroidx/drawerlayout/widget/b;->d:Lv0/d;

    .line 140
    .line 141
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-virtual {v0, v10, v11, v7}, Lv0/d;->s(Landroid/view/View;II)Z

    .line 146
    .line 147
    .line 148
    iput-boolean v4, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->c:Z

    .line 149
    .line 150
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 151
    .line 152
    .line 153
    if-ne v5, v3, :cond_5

    .line 154
    .line 155
    const/4 v3, 0x5

    .line 156
    :cond_5
    invoke-virtual {v9, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-virtual {v9, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-boolean v0, v9, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    .line 166
    .line 167
    if-nez v0, :cond_8

    .line 168
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 170
    .line 171
    .line 172
    move-result-wide v12

    .line 173
    const/4 v14, 0x3

    .line 174
    const/4 v15, 0x0

    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    move-wide v10, v12

    .line 180
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    :goto_3
    if-ge v6, v2, :cond_7

    .line 189
    .line 190
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 195
    .line 196
    .line 197
    add-int/lit8 v6, v6, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 201
    .line 202
    .line 203
    iput-boolean v4, v9, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    .line 204
    .line 205
    :cond_8
    return-void

    .line 206
    :pswitch_4
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, La0/f;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    :goto_4
    :try_start_0
    iget-object v2, v0, La0/f;->d:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Ljava/lang/ref/ReferenceQueue;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Lx2/a;

    .line 222
    .line 223
    invoke-virtual {v0, v2}, La0/f;->d(Lx2/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Ls4/h;->a()V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_6
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 240
    .line 241
    move-object v2, v0

    .line 242
    check-cast v2, Ljava/net/DatagramSocket;

    .line 243
    .line 244
    :try_start_1
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catch_1
    move-exception v0

    .line 249
    move-object v3, v0

    .line 250
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .line 252
    .line 253
    :goto_5
    :try_start_2
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :catch_2
    move-exception v0

    .line 258
    move-object v2, v0

    .line 259
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    :goto_6
    return-void

    .line 263
    :pswitch_7
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v0, Lv4/n;

    .line 266
    .line 267
    sget-object v2, Lv4/n;->i:Ljava/lang/Object;

    .line 268
    .line 269
    monitor-enter v2

    .line 270
    :try_start_3
    invoke-virtual {v0}, Lv4/n;->d()Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-nez v3, :cond_9

    .line 275
    .line 276
    monitor-exit v2

    .line 277
    goto :goto_7

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    goto :goto_8

    .line 280
    :cond_9
    const/16 v3, 0xf

    .line 281
    .line 282
    invoke-virtual {v0, v3}, Lv4/n;->f(I)Z

    .line 283
    .line 284
    .line 285
    monitor-exit v2

    .line 286
    :goto_7
    return-void

    .line 287
    :goto_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    throw v0

    .line 289
    :pswitch_8
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v0, Lv0/d;

    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    invoke-virtual {v0, v2}, Lv0/d;->p(I)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_9
    iget-object v0, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 301
    .line 302
    const/4 v2, 0x4

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_a
    const/4 v0, 0x0

    .line 308
    iget-object v2, v1, Ls4/h;->b:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Ls4/k;

    .line 311
    .line 312
    invoke-virtual {v2, v0}, Ls4/k;->g(Z)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
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
