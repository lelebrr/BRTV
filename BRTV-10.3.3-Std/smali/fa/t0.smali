.class public final Lfa/t0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lfa/x0;


# direct methods
.method public constructor <init>(Lfa/x0;Lorg/bitspark/android/beans/ChannelBean;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 5
    .line 6
    iput-object p2, p0, Lfa/t0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 7
    .line 8
    iput p3, p0, Lfa/t0;->b:I

    .line 9
    .line 10
    iput p4, p0, Lfa/t0;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lfa/t0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    sget-object v0, Lga/o;->e:Ljava/util/HashSet;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v3, p0, Lfa/t0;->b:I

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, -0x5

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_7

    .line 38
    .line 39
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 40
    .line 41
    iget-object v0, v0, Lfa/o;->a:Landroid/content/Context;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lfa/t0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 49
    .line 50
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, " "

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lfa/t0;->d:Lfa/x0;

    .line 67
    .line 68
    iget-object v5, v5, Lfa/o;->a:Landroid/content/Context;

    .line 69
    .line 70
    const v6, 0x7f1201c5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v0, v3, v4}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lba/d;->show()V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 92
    .line 93
    iget-object v4, p0, Lfa/t0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 94
    .line 95
    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v5, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 97
    .line 98
    invoke-virtual {v5}, Lorg/bitspark/android/utils/LimitQueue;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_2

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Lorg/bitspark/android/beans/ChannelBean;

    .line 113
    .line 114
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-ne v6, v7, :cond_1

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_2
    monitor-exit v0

    .line 132
    invoke-static {}, Lga/o;->a()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 136
    .line 137
    iget v4, v0, Lfa/x0;->l:I

    .line 138
    .line 139
    if-eq v4, v1, :cond_4

    .line 140
    .line 141
    const/16 v5, -0x14

    .line 142
    .line 143
    if-ne v4, v5, :cond_3

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    iget v1, v0, Lfa/o;->b:I

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 152
    .line 153
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iput v1, v0, Lfa/o;->d:I

    .line 160
    .line 161
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 162
    .line 163
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, v0, Lfa/o;->b:I

    .line 170
    .line 171
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 172
    .line 173
    iget v0, p1, Lfa/o;->b:I

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_3

    .line 179
    .line 180
    :cond_4
    :goto_1
    iget-object p1, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 186
    .line 187
    iget-object p1, p1, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 188
    .line 189
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 190
    .line 191
    invoke-virtual {v0}, Lga/i;->b()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 199
    .line 200
    iget v0, p0, Lfa/t0;->c:I

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 208
    .line 209
    .line 210
    iget p1, p0, Lfa/t0;->c:I

    .line 211
    .line 212
    add-int/lit8 v0, p1, -0x1

    .line 213
    .line 214
    if-nez p1, :cond_5

    .line 215
    .line 216
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 217
    .line 218
    iget-object p1, p1, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_5

    .line 225
    .line 226
    const/4 v0, 0x0

    .line 227
    :cond_5
    if-ltz v0, :cond_6

    .line 228
    .line 229
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 235
    .line 236
    iput v0, p1, Lfa/o;->d:I

    .line 237
    .line 238
    iput v0, p1, Lfa/o;->b:I

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :cond_6
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 246
    .line 247
    const/4 v0, 0x3

    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    .line 250
    .line 251
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 252
    .line 253
    invoke-static {p1, v0, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    sget-object v0, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 258
    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    .line 261
    .line 262
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 263
    .line 264
    const/16 v0, 0x6c

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    .line 268
    .line 269
    sget-object p1, Lea/d;->d:Lea/d;

    .line 270
    .line 271
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    throw p1

    .line 277
    :cond_7
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 278
    .line 279
    iget-object v0, v0, Lfa/o;->a:Landroid/content/Context;

    .line 280
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    iget-object v5, p0, Lfa/t0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 287
    .line 288
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v5, " "

    .line 300
    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v5, p0, Lfa/t0;->d:Lfa/x0;

    .line 305
    .line 306
    iget-object v5, v5, Lfa/o;->a:Landroid/content/Context;

    .line 307
    .line 308
    const v6, 0x7f1200f0

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v0, v3, v4}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lba/d;->show()V

    .line 327
    .line 328
    .line 329
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 330
    .line 331
    iget-object v3, p0, Lfa/t0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    sget-object v0, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Lorg/bitspark/android/utils/LimitQueue;->offer(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 342
    .line 343
    sget-object v3, Lga/i;->d:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v0, v3}, Lda/c;->g(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 349
    .line 350
    sget-object v4, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 351
    .line 352
    const v5, 0x12cc0300

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v3, v4, v5}, Lda/c;->d(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lga/o;->a()V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 362
    .line 363
    iget v3, v0, Lfa/x0;->l:I

    .line 364
    .line 365
    if-ne v3, v1, :cond_8

    .line 366
    .line 367
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 368
    .line 369
    .line 370
    :cond_8
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 371
    .line 372
    iget v1, v0, Lfa/o;->b:I

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 378
    .line 379
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 380
    .line 381
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    iput v1, v0, Lfa/o;->d:I

    .line 386
    .line 387
    iget-object v0, p0, Lfa/t0;->d:Lfa/x0;

    .line 388
    .line 389
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 390
    .line 391
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    iput p1, v0, Lfa/o;->b:I

    .line 396
    .line 397
    iget-object p1, p0, Lfa/t0;->d:Lfa/x0;

    .line 398
    .line 399
    iget v0, p1, Lfa/o;->b:I

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 402
    .line 403
    .line 404
    :goto_3
    sget-object p1, Lea/d;->e:Lea/d;

    .line 405
    .line 406
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 407
    .line 408
    return v2
.end method
