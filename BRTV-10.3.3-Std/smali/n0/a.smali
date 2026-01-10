.class public final Ln0/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "MyApplication"


# instance fields
.field public final a:Ln0/b;


# direct methods
.method public constructor <init>(Ln0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln0/a;->a:Ln0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln0/b;->b(Landroid/view/View;)Lj7/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-instance v3, Lo0/h;

    .line 7
    .line 8
    invoke-direct {v3, v1}, Lo0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9
    .line 10
    .line 11
    sget-object v4, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const-class v5, Ljava/lang/Boolean;

    .line 16
    .line 17
    const/16 v6, 0x1c

    .line 18
    .line 19
    if-lt v4, v6, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Ln0/l0;->d(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v4, 0x7f0b03fb

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v4, 0x0

    .line 45
    :goto_0
    check-cast v4, Ljava/lang/Boolean;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v4, 0x0

    .line 59
    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    if-lt v9, v6, :cond_3

    .line 62
    .line 63
    invoke-static {v1, v4}, Ll0/f;->q(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v3, v2, v4}, Lo0/h;->h(IZ)V

    .line 68
    .line 69
    .line 70
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    if-lt v4, v6, :cond_4

    .line 73
    .line 74
    invoke-static/range {p1 .. p1}, Ln0/l0;->c(Landroid/view/View;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const v4, 0x7f0b03f6

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const/4 v4, 0x0

    .line 98
    :goto_3
    check-cast v4, Ljava/lang/Boolean;

    .line 99
    .line 100
    if-eqz v4, :cond_6

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    const/4 v4, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 v4, 0x0

    .line 111
    :goto_4
    if-lt v9, v6, :cond_7

    .line 112
    .line 113
    invoke-static {v1, v4}, Ll0/f;->v(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/4 v5, 0x2

    .line 118
    invoke-virtual {v3, v5, v4}, Lo0/h;->h(IZ)V

    .line 119
    .line 120
    .line 121
    :goto_5
    const-class v4, Ljava/lang/CharSequence;

    .line 122
    .line 123
    if-lt v9, v6, :cond_8

    .line 124
    .line 125
    invoke-static/range {p1 .. p1}, Ln0/l0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    goto :goto_6

    .line 130
    :cond_8
    const v5, 0x7f0b03f7

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-eqz v10, :cond_9

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    const/4 v5, 0x0

    .line 145
    :goto_6
    check-cast v5, Ljava/lang/CharSequence;

    .line 146
    .line 147
    if-lt v9, v6, :cond_a

    .line 148
    .line 149
    invoke-static {v1, v5}, Ll0/f;->p(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 158
    .line 159
    invoke-virtual {v6, v10, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :goto_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 163
    .line 164
    const/16 v6, 0x1e

    .line 165
    .line 166
    if-lt v5, v6, :cond_b

    .line 167
    .line 168
    invoke-static/range {p1 .. p1}, Ln0/n0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    goto :goto_8

    .line 173
    :cond_b
    const v5, 0x7f0b03fc

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_c

    .line 185
    .line 186
    move-object v4, v5

    .line 187
    goto :goto_8

    .line 188
    :cond_c
    const/4 v4, 0x0

    .line 189
    :goto_8
    check-cast v4, Ljava/lang/CharSequence;

    .line 190
    .line 191
    if-lt v9, v6, :cond_d

    .line 192
    .line 193
    invoke-static {v1, v4}, Lo0/d;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    :goto_9
    move-object/from16 v4, p0

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 204
    .line 205
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :goto_a
    iget-object v5, v4, Ln0/a;->a:Ln0/b;

    .line 210
    .line 211
    invoke-virtual {v5, v0, v3}, Ln0/b;->d(Landroid/view/View;Lo0/h;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    const/16 v6, 0x1a

    .line 219
    .line 220
    if-ge v9, v6, :cond_15

    .line 221
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 227
    .line 228
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 236
    .line 237
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 245
    .line 246
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 254
    .line 255
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const v6, 0x7f0b03f5

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    check-cast v13, Landroid/util/SparseArray;

    .line 266
    .line 267
    if-eqz v13, :cond_10

    .line 268
    .line 269
    new-instance v14, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .line 273
    .line 274
    const/4 v15, 0x0

    .line 275
    :goto_b
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-ge v15, v7, :cond_f

    .line 280
    .line 281
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 286
    .line 287
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    if-nez v7, :cond_e

    .line 292
    .line 293
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_e
    add-int/2addr v15, v2

    .line 301
    goto :goto_b

    .line 302
    :cond_f
    const/4 v7, 0x0

    .line 303
    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    if-ge v7, v15, :cond_10

    .line 308
    .line 309
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    check-cast v15, Ljava/lang/Integer;

    .line 314
    .line 315
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 320
    .line 321
    .line 322
    add-int/2addr v7, v2

    .line 323
    goto :goto_c

    .line 324
    :cond_10
    instance-of v7, v5, Landroid/text/Spanned;

    .line 325
    .line 326
    if-eqz v7, :cond_11

    .line 327
    .line 328
    move-object v7, v5

    .line 329
    check-cast v7, Landroid/text/Spanned;

    .line 330
    .line 331
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    const-class v14, Landroid/text/style/ClickableSpan;

    .line 336
    .line 337
    invoke-interface {v7, v8, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 342
    .line 343
    goto :goto_d

    .line 344
    :cond_11
    const/4 v7, 0x0

    .line 345
    :goto_d
    if-eqz v7, :cond_15

    .line 346
    .line 347
    array-length v13, v7

    .line 348
    if-lez v13, :cond_15

    .line 349
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const-string v13, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 355
    .line 356
    const v14, 0x7f0b001b

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    check-cast v1, Landroid/util/SparseArray;

    .line 367
    .line 368
    if-nez v1, :cond_12

    .line 369
    .line 370
    new-instance v1, Landroid/util/SparseArray;

    .line 371
    .line 372
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_12
    const/4 v6, 0x0

    .line 379
    :goto_e
    array-length v13, v7

    .line 380
    if-ge v6, v13, :cond_15

    .line 381
    .line 382
    aget-object v13, v7, v6

    .line 383
    .line 384
    const/4 v14, 0x0

    .line 385
    :goto_f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 386
    .line 387
    .line 388
    move-result v15

    .line 389
    if-ge v14, v15, :cond_14

    .line 390
    .line 391
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v15

    .line 395
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 396
    .line 397
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v15

    .line 401
    check-cast v15, Landroid/text/style/ClickableSpan;

    .line 402
    .line 403
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v15

    .line 407
    if-eqz v15, :cond_13

    .line 408
    .line 409
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 410
    .line 411
    .line 412
    move-result v13

    .line 413
    goto :goto_10

    .line 414
    :cond_13
    add-int/2addr v14, v2

    .line 415
    goto :goto_f

    .line 416
    :cond_14
    sget v13, Lo0/h;->c:I

    .line 417
    .line 418
    add-int/lit8 v14, v13, 0x1

    .line 419
    .line 420
    sput v14, Lo0/h;->c:I

    .line 421
    .line 422
    :goto_10
    new-instance v14, Ljava/lang/ref/WeakReference;

    .line 423
    .line 424
    aget-object v15, v7, v6

    .line 425
    .line 426
    invoke-direct {v14, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    aget-object v14, v7, v6

    .line 433
    .line 434
    move-object v15, v5

    .line 435
    check-cast v15, Landroid/text/Spanned;

    .line 436
    .line 437
    invoke-virtual {v3, v9}, Lo0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 442
    .line 443
    .line 444
    move-result v16

    .line 445
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v10}, Lo0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3, v11}, Lo0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, v12}, Lo0/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    const/4 v2, 0x1

    .line 494
    add-int/2addr v6, v2

    .line 495
    const/4 v8, 0x0

    .line 496
    goto :goto_e

    .line 497
    :cond_15
    const v1, 0x7f0b03f4

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    check-cast v0, Ljava/util/List;

    .line 505
    .line 506
    if-nez v0, :cond_16

    .line 507
    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    :cond_16
    const/4 v8, 0x0

    .line 513
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-ge v8, v1, :cond_17

    .line 518
    .line 519
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Lo0/c;

    .line 524
    .line 525
    invoke-virtual {v3, v1}, Lo0/h;->b(Lo0/c;)V

    .line 526
    .line 527
    .line 528
    const/4 v1, 0x1

    .line 529
    add-int/2addr v8, v1

    .line 530
    goto :goto_11

    .line 531
    :cond_17
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln0/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ln0/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ln0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln0/b;->h(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ln0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln0/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
