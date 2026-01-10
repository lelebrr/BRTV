.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/material/datepicker/g0;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x101020d

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/u;->V(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b00a6

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    const p1, 0x7f0b00e2

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0403a9

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/u;->V(Landroid/content/Context;I)Z

    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b:Z

    .line 12
    new-instance p1, Landroidx/core/widget/i;

    const/4 p2, 0x2

    .line 13
    invoke-direct {p1, p2}, Landroidx/core/widget/i;-><init>(I)V

    .line 14
    invoke-static {p0, p1}, Ln0/s0;->q(Landroid/view/View;Ln0/b;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/material/datepicker/x;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/x;

    .line 6
    .line 7
    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/x;

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/x;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/x;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/material/datepicker/x;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/material/datepicker/x;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/google/android/material/datepicker/x;->d:Lcom/google/android/material/datepicker/c;

    .line 15
    .line 16
    iget-object v4, v1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/x;->b()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->c()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_10

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lm0/b;

    .line 69
    .line 70
    iget-object v10, v9, Lm0/b;->a:Ljava/lang/Object;

    .line 71
    .line 72
    if-eqz v10, :cond_f

    .line 73
    .line 74
    iget-object v9, v9, Lm0/b;->b:Ljava/lang/Object;

    .line 75
    .line 76
    if-nez v9, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    check-cast v10, Ljava/lang/Long;

    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v11

    .line 85
    check-cast v9, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v13

    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    if-eqz v8, :cond_1

    .line 94
    .line 95
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v15

    .line 99
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v17

    .line 103
    cmp-long v10, v15, v17

    .line 104
    .line 105
    if-gtz v10, :cond_1

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v15

    .line 115
    cmp-long v17, v9, v15

    .line 116
    .line 117
    if-gez v17, :cond_2

    .line 118
    .line 119
    :cond_1
    move-object/from16 v19, v1

    .line 120
    .line 121
    move-object/from16 v17, v2

    .line 122
    .line 123
    move-object v13, v4

    .line 124
    move v15, v5

    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/a0;->i(Landroid/view/View;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v15

    .line 135
    iget v10, v4, Lcom/google/android/material/datepicker/Month;->d:I

    .line 136
    .line 137
    move-object/from16 v17, v2

    .line 138
    .line 139
    const/16 v18, 0x0

    .line 140
    .line 141
    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    .line 142
    .line 143
    cmp-long v20, v11, v15

    .line 144
    .line 145
    if-gez v20, :cond_5

    .line 146
    .line 147
    rem-int v11, v5, v10

    .line 148
    .line 149
    if-nez v11, :cond_3

    .line 150
    .line 151
    const/4 v11, 0x0

    .line 152
    goto :goto_1

    .line 153
    :cond_3
    if-nez v9, :cond_4

    .line 154
    .line 155
    add-int/lit8 v11, v5, -0x1

    .line 156
    .line 157
    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    add-int/lit8 v11, v5, -0x1

    .line 167
    .line 168
    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    :goto_1
    move v12, v11

    .line 177
    move v11, v5

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    .line 181
    .line 182
    const/4 v11, 0x5

    .line 183
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    add-int/lit8 v12, v12, -0x1

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    add-int/2addr v11, v12

    .line 194
    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    div-int/lit8 v12, v12, 0x2

    .line 207
    .line 208
    add-int/2addr v12, v15

    .line 209
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 210
    .line 211
    .line 212
    move-result-wide v15

    .line 213
    cmp-long v20, v13, v15

    .line 214
    .line 215
    if-lez v20, :cond_8

    .line 216
    .line 217
    add-int/lit8 v2, v6, 0x1

    .line 218
    .line 219
    rem-int/2addr v2, v10

    .line 220
    if-nez v2, :cond_6

    .line 221
    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    goto :goto_3

    .line 227
    :cond_6
    if-nez v9, :cond_7

    .line 228
    .line 229
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    :goto_3
    move v10, v6

    .line 247
    goto :goto_4

    .line 248
    :cond_8
    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 249
    .line 250
    .line 251
    const/4 v10, 0x5

    .line 252
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    add-int/lit8 v2, v2, -0x1

    .line 257
    .line 258
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    add-int/2addr v10, v2

    .line 263
    invoke-virtual {v0, v10}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    div-int/lit8 v2, v2, 0x2

    .line 276
    .line 277
    add-int/2addr v2, v13

    .line 278
    :goto_4
    invoke-virtual {v1, v11}, Lcom/google/android/material/datepicker/x;->getItemId(I)J

    .line 279
    .line 280
    .line 281
    move-result-wide v13

    .line 282
    long-to-int v14, v13

    .line 283
    move-object v13, v4

    .line 284
    move v15, v5

    .line 285
    invoke-virtual {v1, v10}, Lcom/google/android/material/datepicker/x;->getItemId(I)J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    long-to-int v5, v4

    .line 290
    :goto_5
    if-gt v14, v5, :cond_e

    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    mul-int v4, v4, v14

    .line 297
    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 299
    .line 300
    .line 301
    move-result v16

    .line 302
    add-int v16, v16, v4

    .line 303
    .line 304
    move-object/from16 v19, v1

    .line 305
    .line 306
    add-int/lit8 v1, v16, -0x1

    .line 307
    .line 308
    invoke-virtual {v0, v4}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v16

    .line 312
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    .line 313
    .line 314
    .line 315
    move-result v20

    .line 316
    iget-object v0, v3, Lcom/google/android/material/datepicker/c;->a:Landroidx/appcompat/widget/u;

    .line 317
    .line 318
    iget-object v0, v0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v0, Landroid/graphics/Rect;

    .line 321
    .line 322
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 323
    .line 324
    add-int v0, v20, v0

    .line 325
    .line 326
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    .line 327
    .line 328
    .line 329
    move-result v16

    .line 330
    move/from16 v20, v2

    .line 331
    .line 332
    iget-object v2, v3, Lcom/google/android/material/datepicker/c;->a:Landroidx/appcompat/widget/u;

    .line 333
    .line 334
    iget-object v2, v2, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v2, Landroid/graphics/Rect;

    .line 337
    .line 338
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 339
    .line 340
    sub-int v2, v16, v2

    .line 341
    .line 342
    if-nez v9, :cond_b

    .line 343
    .line 344
    if-le v4, v11, :cond_9

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    goto :goto_6

    .line 348
    :cond_9
    move v4, v12

    .line 349
    :goto_6
    if-le v10, v1, :cond_a

    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    goto :goto_9

    .line 356
    :cond_a
    move/from16 v1, v20

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_b
    if-le v10, v1, :cond_c

    .line 360
    .line 361
    const/4 v1, 0x0

    .line 362
    goto :goto_7

    .line 363
    :cond_c
    move/from16 v1, v20

    .line 364
    .line 365
    :goto_7
    if-le v4, v11, :cond_d

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    goto :goto_8

    .line 372
    :cond_d
    move v4, v12

    .line 373
    :goto_8
    move/from16 v27, v4

    .line 374
    .line 375
    move v4, v1

    .line 376
    move/from16 v1, v27

    .line 377
    .line 378
    :goto_9
    int-to-float v4, v4

    .line 379
    int-to-float v0, v0

    .line 380
    int-to-float v1, v1

    .line 381
    int-to-float v2, v2

    .line 382
    move/from16 v16, v5

    .line 383
    .line 384
    iget-object v5, v3, Lcom/google/android/material/datepicker/c;->h:Landroid/graphics/Paint;

    .line 385
    .line 386
    move-object/from16 v21, p1

    .line 387
    .line 388
    move/from16 v22, v4

    .line 389
    .line 390
    move/from16 v23, v0

    .line 391
    .line 392
    move/from16 v24, v1

    .line 393
    .line 394
    move/from16 v25, v2

    .line 395
    .line 396
    move-object/from16 v26, v5

    .line 397
    .line 398
    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 399
    .line 400
    .line 401
    add-int/lit8 v14, v14, 0x1

    .line 402
    .line 403
    move-object/from16 v0, p0

    .line 404
    .line 405
    move/from16 v5, v16

    .line 406
    .line 407
    move-object/from16 v1, v19

    .line 408
    .line 409
    move/from16 v2, v20

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_e
    move-object/from16 v0, p0

    .line 413
    .line 414
    move-object v4, v13

    .line 415
    move v5, v15

    .line 416
    move-object/from16 v2, v17

    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :goto_a
    move-object/from16 v0, p0

    .line 421
    .line 422
    move-object v4, v13

    .line 423
    move v5, v15

    .line 424
    move-object/from16 v2, v17

    .line 425
    .line 426
    move-object/from16 v1, v19

    .line 427
    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :cond_f
    move-object/from16 v0, p0

    .line 431
    .line 432
    goto/16 :goto_0

    .line 433
    .line 434
    :cond_10
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/16 p1, 0x21

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/material/datepicker/x;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/x;->b()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0x82

    .line 22
    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/android/material/datepicker/x;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x1

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p2, v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/material/datepicker/x;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lt p2, v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 p2, 0x13

    .line 37
    .line 38
    if-ne p2, p1, :cond_2

    .line 39
    .line 40
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/android/material/datepicker/x;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    return v0

    .line 57
    :cond_3
    :goto_0
    return v2
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p2, 0xffffff

    .line 6
    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 2
    instance-of v0, p1, Lcom/google/android/material/datepicker/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/datepicker/x;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 7
    const-string v0, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSelection(I)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/x;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/material/datepicker/x;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->m()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
