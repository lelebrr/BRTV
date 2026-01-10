.class public final Lea/y;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/bitspark/android/Spark;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;I)V
    .locals 0

    .line 1
    iput p2, p0, Lea/y;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lea/y;->b:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 1
    const p1, -0xffff

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lea/y;->b:Lorg/bitspark/android/Spark;

    .line 6
    .line 7
    iget v2, p0, Lea/y;->a:I

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string p1, "ZRNDoLDL\n"

    .line 13
    .line 14
    const-string v2, "J0AOwdmli+w=\n"

    .line 15
    .line 16
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "10IZu7o87AfQTTGzvHO/Ic5JMaCLKPst124qoK0m8WiYRD6nnyb8McsM\n"

    .line 26
    .line 27
    const-string v4, "uCxf1NlJn0Q=\n"

    .line 28
    .line 29
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 44
    .line 45
    invoke-static {p1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    iget-object p1, v1, Lorg/bitspark/android/Spark;->H:Landroid/widget/RadioButton;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 56
    .line 57
    sget p2, Lea/g;->m:I

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v1, Lorg/bitspark/android/Spark;->N:Lka/j;

    .line 63
    .line 64
    iget-object p1, p1, Lka/j;->b0:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void

    .line 72
    :pswitch_0
    const-string p1, "Flk9FgMd\n"

    .line 73
    .line 74
    const-string v2, "VApwd2pzwR0=\n"

    .line 75
    .line 76
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "QNPeab13RldH3PZhuzgVZ0rJ7G+wZWd1S9T3RKt2QXtBkbhuv3Fze0zI6yY=\n"

    .line 86
    .line 87
    const-string v4, "L72YBt4CNRQ=\n"

    .line 88
    .line 89
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 104
    .line 105
    invoke-static {p1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    if-eqz p2, :cond_1

    .line 109
    .line 110
    iget-object p1, v1, Lorg/bitspark/android/Spark;->G:Landroid/widget/RadioButton;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 116
    .line 117
    sget p2, Lea/g;->l:I

    .line 118
    .line 119
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void

    .line 123
    :pswitch_1
    const-string p1, "a7dKzdfH\n"

    .line 124
    .line 125
    const-string v2, "KeQHrL6pPkU=\n"

    .line 126
    .line 127
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v3, "5bzJWt2xV1Xis+FS2/4Ed/qi/GffoE15yKf7QdGqCDbis/xz0adRZao=\n"

    .line 137
    .line 138
    const-string v4, "itKPNb7EJBY=\n"

    .line 139
    .line 140
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 155
    .line 156
    invoke-static {p1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    if-eqz p2, :cond_2

    .line 160
    .line 161
    iget-object p1, v1, Lorg/bitspark/android/Spark;->F:Landroid/widget/RadioButton;

    .line 162
    .line 163
    invoke-virtual {v1, p1}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 167
    .line 168
    sget p2, Lea/g;->k:I

    .line 169
    .line 170
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 171
    .line 172
    .line 173
    :cond_2
    return-void

    .line 174
    :pswitch_2
    const-string p1, "kQfmgRo+\n"

    .line 175
    .line 176
    const-string v2, "01Sr4HNQ8HI=\n"

    .line 177
    .line 178
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v3, "uCLjEAYlPTi/LcsYAGpuDqQp1y0ENCcUlTnRCwo+Ylu/LdY5CjM7CPc=\n"

    .line 188
    .line 189
    const-string v4, "10ylf2VQTns=\n"

    .line 190
    .line 191
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 206
    .line 207
    invoke-static {p1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    if-eqz p2, :cond_3

    .line 211
    .line 212
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 213
    .line 214
    invoke-virtual {v1, p1}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 218
    .line 219
    sget p2, Lea/g;->j:I

    .line 220
    .line 221
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 222
    .line 223
    .line 224
    :cond_3
    return-void

    .line 225
    :pswitch_3
    const-string v2, "7sHkV9Ol\n"

    .line 226
    .line 227
    const-string v3, "rJKpNrrLMqQ=\n"

    .line 228
    .line 229
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v4, "1Eisnt1e3F3TR4SW2xGPdtJVnp7MUv1/30+Fs8tf23HVCsqZ31jpcdhTmdE=\n"

    .line 239
    .line 240
    const-string v5, "uybq8b4rrx4=\n"

    .line 241
    .line 242
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 257
    .line 258
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    if-eqz p2, :cond_9

    .line 262
    .line 263
    sget-boolean p2, Lorg/bitspark/android/Spark;->j2:Z

    .line 264
    .line 265
    if-nez p2, :cond_4

    .line 266
    .line 267
    invoke-static {v1}, Lorg/bitspark/android/Spark;->s(Lorg/bitspark/android/Spark;)V

    .line 268
    .line 269
    .line 270
    :cond_4
    iget-object p2, v1, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    .line 271
    .line 272
    invoke-virtual {v1, p2}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 273
    .line 274
    .line 275
    sget-object p2, Lea/g;->a:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {p1, p2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_5

    .line 286
    .line 287
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 288
    .line 289
    if-eqz p1, :cond_9

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_9

    .line 296
    .line 297
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 298
    .line 299
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_5
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 304
    .line 305
    sget p2, Lea/g;->i:I

    .line 306
    .line 307
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 308
    .line 309
    .line 310
    iget-object p1, v1, Lorg/bitspark/android/Spark;->K:Lka/e;

    .line 311
    .line 312
    invoke-virtual {p1}, Lka/e;->Q()V

    .line 313
    .line 314
    .line 315
    iget-object p1, v1, Lorg/bitspark/android/Spark;->K:Lka/e;

    .line 316
    .line 317
    iget-object p1, p1, Lka/e;->V:Landroid/widget/RelativeLayout;

    .line 318
    .line 319
    if-eqz p1, :cond_6

    .line 320
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    goto :goto_0

    .line 326
    :cond_6
    const/4 p1, 0x0

    .line 327
    :goto_0
    if-eqz p1, :cond_9

    .line 328
    .line 329
    iget-object p1, v1, Lorg/bitspark/android/Spark;->K:Lka/e;

    .line 330
    .line 331
    iget-object p2, p1, Lka/e;->V:Landroid/widget/RelativeLayout;

    .line 332
    .line 333
    if-eqz p2, :cond_7

    .line 334
    .line 335
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    :cond_7
    iget-object p1, p1, Lka/e;->W:Landroid/widget/LinearLayout;

    .line 339
    .line 340
    if-eqz p1, :cond_8

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    :cond_8
    iget-object p1, v1, Lorg/bitspark/android/Spark;->K:Lka/e;

    .line 346
    .line 347
    iget-object p1, p1, Lka/e;->i0:Landroid/widget/FrameLayout;

    .line 348
    .line 349
    const/16 p2, 0x8

    .line 350
    .line 351
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    :cond_9
    :goto_1
    return-void

    .line 355
    :pswitch_4
    const-string v2, "WpHk2nTm\n"

    .line 356
    .line 357
    const-string v3, "GMKpux2IMC0=\n"

    .line 358
    .line 359
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v4, "9RYqrcNruIbyGQKlxSTrs/UcPqPEd6SH7wwYrc4y6637Cyqtw2u45Q==\n"

    .line 369
    .line 370
    const-string v5, "mnhswqAey8U=\n"

    .line 371
    .line 372
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 387
    .line 388
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    if-eqz p2, :cond_f

    .line 392
    .line 393
    iget-object p2, v1, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    .line 394
    .line 395
    invoke-virtual {v1, p2}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 396
    .line 397
    .line 398
    sget-boolean p2, Lorg/bitspark/android/Spark;->j2:Z

    .line 399
    .line 400
    if-nez p2, :cond_a

    .line 401
    .line 402
    invoke-static {v1}, Lorg/bitspark/android/Spark;->s(Lorg/bitspark/android/Spark;)V

    .line 403
    .line 404
    .line 405
    :cond_a
    sget-boolean p2, Lorg/bitspark/android/Spark;->c2:Z

    .line 406
    .line 407
    if-eqz p2, :cond_c

    .line 408
    .line 409
    sput-boolean v0, Lorg/bitspark/android/Spark;->c2:Z

    .line 410
    .line 411
    iget-object p2, v1, Lorg/bitspark/android/Spark;->J:Lka/m0;

    .line 412
    .line 413
    iget-boolean v2, p2, Lka/m0;->r0:Z

    .line 414
    .line 415
    if-eqz v2, :cond_b

    .line 416
    .line 417
    iget-object p2, p2, Lka/m0;->Z:Lfa/h1;

    .line 418
    .line 419
    invoke-virtual {p2}, Lfa/h1;->b()V

    .line 420
    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_b
    iget-object p2, p2, Lka/m0;->b0:Lfa/j1;

    .line 424
    .line 425
    invoke-virtual {p2}, Lfa/j1;->b()V

    .line 426
    .line 427
    .line 428
    :cond_c
    :goto_2
    sget-object p2, Lea/g;->a:Ljava/lang/String;

    .line 429
    .line 430
    invoke-static {p1, p2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-eqz p1, :cond_d

    .line 439
    .line 440
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 441
    .line 442
    if-eqz p1, :cond_f

    .line 443
    .line 444
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    if-eqz p1, :cond_f

    .line 449
    .line 450
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 451
    .line 452
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_4

    .line 456
    :cond_d
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 457
    .line 458
    sget p2, Lea/g;->h:I

    .line 459
    .line 460
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 461
    .line 462
    .line 463
    iget-object p1, v1, Lorg/bitspark/android/Spark;->J:Lka/m0;

    .line 464
    .line 465
    iget-object p1, p1, Lka/m0;->f0:Landroid/widget/RelativeLayout;

    .line 466
    .line 467
    if-eqz p1, :cond_e

    .line 468
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    goto :goto_3

    .line 474
    :cond_e
    const/4 p1, 0x0

    .line 475
    :goto_3
    if-eqz p1, :cond_f

    .line 476
    .line 477
    iget-object p1, v1, Lorg/bitspark/android/Spark;->J:Lka/m0;

    .line 478
    .line 479
    iget-object p1, p1, Lka/m0;->f0:Landroid/widget/RelativeLayout;

    .line 480
    .line 481
    if-eqz p1, :cond_f

    .line 482
    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    :cond_f
    :goto_4
    return-void

    .line 487
    :pswitch_5
    const-string v2, "KjZ2ljG7\n"

    .line 488
    .line 489
    const-string v3, "aGU791jVkCA=\n"

    .line 490
    .line 491
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    const-string v4, "5QGTq7V6LfDiDrujszV+3u8BoJa3azfcyBqhsLlhcpPiDqaCuWwrwKo=\n"

    .line 501
    .line 502
    const-string v5, "im/VxNYPXrM=\n"

    .line 503
    .line 504
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v4, "wCHmcMkPjOWQI64=\n"

    .line 515
    .line 516
    const-string v5, "4EaUH7x/2Jw=\n"

    .line 517
    .line 518
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    sget v4, Lorg/bitspark/android/Spark;->b2:I

    .line 526
    .line 527
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 535
    .line 536
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    if-eqz p2, :cond_14

    .line 540
    .line 541
    sget-boolean p2, Lorg/bitspark/android/Spark;->j2:Z

    .line 542
    .line 543
    if-nez p2, :cond_10

    .line 544
    .line 545
    invoke-static {v1}, Lorg/bitspark/android/Spark;->s(Lorg/bitspark/android/Spark;)V

    .line 546
    .line 547
    .line 548
    :cond_10
    sget-boolean p2, Lorg/bitspark/android/Spark;->c2:Z

    .line 549
    .line 550
    if-eqz p2, :cond_11

    .line 551
    .line 552
    sput-boolean v0, Lorg/bitspark/android/Spark;->c2:Z

    .line 553
    .line 554
    iget-object p2, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 555
    .line 556
    invoke-virtual {p2}, Lka/r;->c0()V

    .line 557
    .line 558
    .line 559
    iget-object p2, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 560
    .line 561
    invoke-virtual {p2}, Lka/r;->W()I

    .line 562
    .line 563
    .line 564
    move-result p2

    .line 565
    iget-object v2, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 566
    .line 567
    iget-object v2, v2, Lka/r;->X:Lfa/g0;

    .line 568
    .line 569
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 570
    .line 571
    .line 572
    :cond_11
    iget-object p2, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 573
    .line 574
    const/4 v2, 0x1

    .line 575
    iput-boolean v2, p2, Lka/r;->l0:Z

    .line 576
    .line 577
    const/16 p2, 0x64

    .line 578
    .line 579
    sput p2, Lorg/bitspark/android/Spark;->b2:I

    .line 580
    .line 581
    iget-object p2, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 582
    .line 583
    invoke-virtual {v1, p2}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 584
    .line 585
    .line 586
    sget-object p2, Lea/g;->a:Ljava/lang/String;

    .line 587
    .line 588
    invoke-static {p1, p2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 593
    .line 594
    .line 595
    move-result p1

    .line 596
    if-eqz p1, :cond_12

    .line 597
    .line 598
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 599
    .line 600
    if-eqz p1, :cond_14

    .line 601
    .line 602
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 603
    .line 604
    .line 605
    move-result p1

    .line 606
    if-eqz p1, :cond_14

    .line 607
    .line 608
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 609
    .line 610
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 611
    .line 612
    .line 613
    goto :goto_6

    .line 614
    :cond_12
    iget-object p1, v1, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 615
    .line 616
    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 617
    .line 618
    .line 619
    iget-object p1, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 620
    .line 621
    invoke-virtual {p1}, Lka/r;->Z()V

    .line 622
    .line 623
    .line 624
    iget-object p1, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 625
    .line 626
    iget-object p1, p1, Lka/r;->c0:Landroid/widget/RelativeLayout;

    .line 627
    .line 628
    if-eqz p1, :cond_13

    .line 629
    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    goto :goto_5

    .line 635
    :cond_13
    const/4 p1, 0x0

    .line 636
    :goto_5
    if-eqz p1, :cond_14

    .line 637
    .line 638
    iget-object p1, v1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 639
    .line 640
    iget-object p1, p1, Lka/r;->c0:Landroid/widget/RelativeLayout;

    .line 641
    .line 642
    if-eqz p1, :cond_14

    .line 643
    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 645
    .line 646
    .line 647
    :cond_14
    :goto_6
    return-void

    .line 648
    nop

    .line 649
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
