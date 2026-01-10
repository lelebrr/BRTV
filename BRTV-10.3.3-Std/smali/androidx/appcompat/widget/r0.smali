.class public final Landroidx/appcompat/widget/r0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/appcompat/widget/r0;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/widget/r0;->b:I

    iput-object p3, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/appcompat/widget/r0;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    iput p3, p0, Landroidx/appcompat/widget/r0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IIZ)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/appcompat/widget/r0;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/appcompat/widget/r0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/m1;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/cast/c3;

    .line 8
    .line 9
    iget v2, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 10
    .line 11
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/m1;->h:Lcom/google/android/gms/internal/cast/a0;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-enter v3

    .line 17
    :try_start_0
    new-instance v4, Lw5/d;

    .line 18
    .line 19
    invoke-direct {v4}, Lw5/d;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lcom/google/android/gms/internal/cast/k2;

    .line 27
    .line 28
    iget-object v7, v3, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/b1;

    .line 29
    .line 30
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/cast/k2;-><init>(Lcom/google/android/gms/internal/cast/b1;)V

    .line 31
    .line 32
    .line 33
    iput-object v6, v5, Lc6/c;->c:Ljava/lang/Object;

    .line 34
    .line 35
    const/16 v6, 0x1195

    .line 36
    .line 37
    iput v6, v5, Lc6/c;->a:I

    .line 38
    .line 39
    invoke-virtual {v5}, Lc6/c;->b()Lc6/c;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-virtual {v7, v6, v5}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-instance v6, Lcom/google/android/gms/internal/cast/y;

    .line 49
    .line 50
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/cast/y;-><init>(Lw5/d;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Lw5/g;->b(Lw5/c;)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Lcom/google/android/gms/internal/cast/y;

    .line 57
    .line 58
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/cast/y;-><init>(Lw5/d;)V

    .line 59
    .line 60
    .line 61
    sget-object v7, Lw5/e;->a:La4/r;

    .line 62
    .line 63
    new-instance v8, Lw5/f;

    .line 64
    .line 65
    invoke-direct {v8, v7, v6}, Lw5/f;-><init>(La4/r;Lw5/b;)V

    .line 66
    .line 67
    .line 68
    iget-object v6, v5, Lw5/g;->b:Lk3/t;

    .line 69
    .line 70
    invoke-virtual {v6, v8}, Lk3/t;->h(Lw5/f;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lw5/g;->g()V

    .line 74
    .line 75
    .line 76
    new-instance v5, Lcom/google/android/gms/internal/cast/z;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/internal/cast/z;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-wide v6, v3, Lcom/google/android/gms/internal/cast/a0;->a:J

    .line 83
    .line 84
    const-wide/16 v8, 0x3e8

    .line 85
    .line 86
    mul-long v6, v6, v8

    .line 87
    .line 88
    iget-object v8, v3, Lcom/google/android/gms/internal/cast/a0;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 89
    .line 90
    invoke-virtual {v8, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    .line 92
    .line 93
    iget-object v4, v4, Lw5/d;->a:Lw5/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    monitor-exit v3

    .line 96
    new-instance v3, Lcom/google/android/gms/internal/cast/e0;

    .line 97
    .line 98
    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/internal/cast/e0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Lw5/g;->b(Lw5/c;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/r0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Message;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 12
    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/view/View;

    .line 18
    .line 19
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lna/a;

    .line 24
    .line 25
    iget-object v1, v1, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 26
    .line 27
    iget-object v1, v1, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->o:Landroidx/mediarouter/app/c;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget v0, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lka/m0;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-static {v1, v2, v0, v0}, Lka/m0;->Q(Lka/m0;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lka/i0;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lsa/l;

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    iget-object v1, v1, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    iget v2, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 79
    .line 80
    invoke-static {v1, v2}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    const v2, 0x7f0b0378

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ne v2, v1, :cond_1

    .line 101
    .line 102
    iget-object v0, v0, Lka/i0;->d0:Landroid/os/Handler;

    .line 103
    .line 104
    new-instance v1, La/f;

    .line 105
    .line 106
    const/16 v2, 0x17

    .line 107
    .line 108
    invoke-direct {v1, v2, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const-wide/16 v2, 0x12c

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void

    .line 117
    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Lka/r;

    .line 128
    .line 129
    iget v2, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 130
    .line 131
    if-ge v2, v0, :cond_2

    .line 132
    .line 133
    iget-object v0, v1, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 142
    .line 143
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    if-lez v2, :cond_3

    .line 148
    .line 149
    iget-object v0, v1, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 150
    .line 151
    add-int/lit8 v2, v2, -0x1

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 160
    .line 161
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, v1, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 166
    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    iget-object v0, v1, Lka/r;->X:Lfa/g0;

    .line 170
    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    iget-object v0, v0, Lfa/g0;->e:Landroid/view/View;

    .line 174
    .line 175
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 176
    .line 177
    .line 178
    :cond_4
    sget-object v0, Lea/d;->a:Lea/d;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lka/r;->h0(Lea/d;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_0
    return-void

    .line 184
    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Lea/u;

    .line 187
    .line 188
    iget-object v1, v0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 189
    .line 190
    iget-object v1, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 191
    .line 192
    sget-object v2, Lea/d;->b:Lea/d;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lka/r;->h0(Lea/d;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 198
    .line 199
    iget-object v1, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 200
    .line 201
    iget-object v2, v1, Lka/r;->X:Lfa/g0;

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    iput-boolean v3, v2, Lfa/g0;->g:Z

    .line 205
    .line 206
    iget-object v2, v1, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 207
    .line 208
    iget-object v1, v1, Lka/r;->Y:Lfa/d0;

    .line 209
    .line 210
    iget v3, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 211
    .line 212
    invoke-static {v2, v1, v3}, Lo9/d;->A(Landroidx/recyclerview/widget/RecyclerView;Lfa/i0;I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v1, Landroid/view/View;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean;

    .line 224
    .line 225
    if-eqz v1, :cond_6

    .line 226
    .line 227
    invoke-static {v1}, Lga/h;->d(Lorg/bitspark/android/beans/ChannelBean;)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    iget-object v0, v0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 232
    .line 233
    iget-object v0, v0, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lka/r;->g0(I)V

    .line 236
    .line 237
    .line 238
    :cond_6
    return-void

    .line 239
    :pswitch_4
    invoke-direct {p0}, Landroidx/appcompat/widget/r0;->a()V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_5
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Lcom/google/android/gms/internal/cast/u;

    .line 246
    .line 247
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v1, Lq1/l0;

    .line 250
    .line 251
    iget v2, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 252
    .line 253
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/u;->g:Ljava/util/HashMap;

    .line 254
    .line 255
    monitor-enter v3

    .line 256
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/u;->z(Lq1/l0;I)V

    .line 257
    .line 258
    .line 259
    monitor-exit v3

    .line 260
    return-void

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    throw v0

    .line 264
    :pswitch_6
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 267
    .line 268
    iget-object v1, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v1, Landroid/view/View;

    .line 271
    .line 272
    iget v2, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 273
    .line 274
    const/4 v3, 0x0

    .line 275
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(Landroid/view/View;IZ)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_7
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, [Ljava/lang/String;

    .line 282
    .line 283
    array-length v1, v0

    .line 284
    new-array v1, v1, [I

    .line 285
    .line 286
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v2, Landroid/app/Activity;

    .line 289
    .line 290
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    array-length v5, v0

    .line 299
    const/4 v6, 0x0

    .line 300
    :goto_1
    if-ge v6, v5, :cond_7

    .line 301
    .line 302
    aget-object v7, v0, v6

    .line 303
    .line 304
    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    aput v7, v1, v6

    .line 309
    .line 310
    add-int/lit8 v6, v6, 0x1

    .line 311
    .line 312
    goto :goto_1

    .line 313
    :cond_7
    check-cast v2, Landroidx/core/app/b;

    .line 314
    .line 315
    iget v3, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 316
    .line 317
    invoke-interface {v2, v3, v0, v1}, Landroidx/core/app/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :pswitch_8
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v0, Landroid/graphics/Typeface;

    .line 324
    .line 325
    iget v1, p0, Landroidx/appcompat/widget/r0;->b:I

    .line 326
    .line 327
    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v2, Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
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
