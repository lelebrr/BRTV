.class public final Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/a;->a:I

    iput-object p2, p0, Landroidx/appcompat/app/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfa/b;Lha/a;)V
    .locals 0

    const/16 p2, 0x9

    iput p2, p0, Landroidx/appcompat/app/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const v0, 0x7f1201a2

    .line 2
    .line 3
    .line 4
    const v1, 0x7f1201a3

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, Landroidx/appcompat/app/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iget v6, p0, Landroidx/appcompat/app/a;->a:I

    .line 13
    .line 14
    packed-switch v6, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v5, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 18
    .line 19
    iget-object p1, v5, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p()Lr4/f;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string v0, "Must be called from the main thread."

    .line 34
    .line 35
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lr4/f;->F()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lr4/h;

    .line 49
    .line 50
    const/4 v1, 0x5

    .line 51
    invoke-direct {v0, p1, v1}, Lr4/h;-><init>(Lr4/f;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void

    .line 58
    :pswitch_0
    check-cast v5, Lt3/c;

    .line 59
    .line 60
    iget-object p1, v5, Lt3/c;->a:Lq1/f0;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    check-cast v5, Lsa/e;

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_2
    check-cast v5, Lsa/e;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_3
    check-cast v5, Lsa/g;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_4
    check-cast v5, Lla/d;

    .line 85
    .line 86
    iput-object v2, v5, Lla/d;->k0:Lsa/p;

    .line 87
    .line 88
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v2, "qWQzaeQNS/iUcx5q5g==\n"

    .line 97
    .line 98
    const-string v6, "/RJyBYF/P7w=\n"

    .line 99
    .line 100
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p1, v2}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    move-object v2, p1

    .line 111
    check-cast v2, Landroidx/fragment/app/m;

    .line 112
    .line 113
    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/m;->Q(ZZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v6, Landroidx/fragment/app/a;

    .line 128
    .line 129
    invoke-direct {v6, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, p1}, Landroidx/fragment/app/a;->h(Landroidx/fragment/app/s;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v4}, Landroidx/fragment/app/a;->e(Z)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1, v4}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->A()V

    .line 150
    .line 151
    .line 152
    :cond_2
    new-instance p1, Lla/b;

    .line 153
    .line 154
    invoke-direct {p1, v5, v3}, Lla/b;-><init>(Lla/d;I)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Lla/b;

    .line 158
    .line 159
    invoke-direct {v2, v5, v4}, Lla/b;-><init>(Lla/d;I)V

    .line 160
    .line 161
    .line 162
    iget-boolean v3, v5, Lla/d;->l0:Z

    .line 163
    .line 164
    if-eqz v3, :cond_3

    .line 165
    .line 166
    invoke-virtual {v5, v1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v5, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :goto_1
    new-instance v1, Lsa/p;

    .line 176
    .line 177
    invoke-direct {v1}, Lsa/p;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object p1, v1, Lsa/p;->k0:Ljava/lang/Runnable;

    .line 181
    .line 182
    iput-object v2, v1, Lsa/p;->l0:Ljava/lang/Runnable;

    .line 183
    .line 184
    new-instance p1, Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object v2, Lsa/p;->s0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->O(Landroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, v5, Lla/d;->k0:Lsa/p;

    .line 198
    .line 199
    new-instance p1, Lla/a;

    .line 200
    .line 201
    invoke-direct {p1, v5}, Lla/a;-><init>(Lla/d;)V

    .line 202
    .line 203
    .line 204
    iput-object p1, v1, Lsa/p;->r0:Lsa/o;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string v0, "k2bzA/WpQequcd4A9w==\n"

    .line 215
    .line 216
    const-string v2, "xxCyb5DbNa4=\n"

    .line 217
    .line 218
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/k0;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, v5, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 226
    .line 227
    const/4 v0, 0x4

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_5
    check-cast v5, Lka/y;

    .line 233
    .line 234
    iput-object v2, v5, Lka/y;->r1:Lsa/p;

    .line 235
    .line 236
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    const-string v2, "st91n7UYmoGPyFictw==\n"

    .line 245
    .line 246
    const-string v6, "5qk089Bq7sU=\n"

    .line 247
    .line 248
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {p1, v2}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    if-eqz p1, :cond_4

    .line 257
    .line 258
    move-object v2, p1

    .line 259
    check-cast v2, Landroidx/fragment/app/m;

    .line 260
    .line 261
    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/m;->Q(ZZ)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    new-instance v6, Landroidx/fragment/app/a;

    .line 276
    .line 277
    invoke-direct {v6, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, p1}, Landroidx/fragment/app/a;->h(Landroidx/fragment/app/s;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v4}, Landroidx/fragment/app/a;->e(Z)I

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1, v4}, Landroidx/fragment/app/j0;->u(Z)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->A()V

    .line 298
    .line 299
    .line 300
    :cond_4
    new-instance p1, Lka/w;

    .line 301
    .line 302
    invoke-direct {p1, v5, v3}, Lka/w;-><init>(Lka/y;I)V

    .line 303
    .line 304
    .line 305
    new-instance v2, Lka/w;

    .line 306
    .line 307
    invoke-direct {v2, v5, v4}, Lka/w;-><init>(Lka/y;I)V

    .line 308
    .line 309
    .line 310
    iget-boolean v3, v5, Lka/y;->q1:Z

    .line 311
    .line 312
    if-eqz v3, :cond_5

    .line 313
    .line 314
    invoke-virtual {v5, v1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    goto :goto_2

    .line 319
    :cond_5
    invoke-virtual {v5, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    :goto_2
    new-instance v1, Lsa/p;

    .line 324
    .line 325
    invoke-direct {v1}, Lsa/p;-><init>()V

    .line 326
    .line 327
    .line 328
    iput-object p1, v1, Lsa/p;->k0:Ljava/lang/Runnable;

    .line 329
    .line 330
    iput-object v2, v1, Lsa/p;->l0:Ljava/lang/Runnable;

    .line 331
    .line 332
    new-instance p1, Landroid/os/Bundle;

    .line 333
    .line 334
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 335
    .line 336
    .line 337
    sget-object v2, Lsa/p;->s0:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->O(Landroid/os/Bundle;)V

    .line 343
    .line 344
    .line 345
    iput-object v1, v5, Lka/y;->r1:Lsa/p;

    .line 346
    .line 347
    new-instance p1, Lx4/e;

    .line 348
    .line 349
    const/16 v0, 0x13

    .line 350
    .line 351
    invoke-direct {p1, v0}, Lx4/e;-><init>(I)V

    .line 352
    .line 353
    .line 354
    iput-object p1, v1, Lsa/p;->r0:Lsa/o;

    .line 355
    .line 356
    invoke-virtual {v5}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    const-string v0, "ZJ9uQeCzhv9ZiENC4g==\n"

    .line 365
    .line 366
    const-string v2, "MOkvLYXB8rs=\n"

    .line 367
    .line 368
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/k0;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :pswitch_6
    check-cast v5, Lka/i;

    .line 377
    .line 378
    iget-object p1, v5, Lka/i;->a:Lka/j;

    .line 379
    .line 380
    iget-object v0, p1, Lka/j;->W:Lorg/bitspark/android/beans/EventBean;

    .line 381
    .line 382
    invoke-virtual {p1, v0}, Lka/j;->R(Lorg/bitspark/android/beans/EventBean;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_7
    check-cast v5, Lfa/j1;

    .line 387
    .line 388
    iget v0, v5, Lfa/p;->a:I

    .line 389
    .line 390
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 391
    .line 392
    .line 393
    iget-object v0, v5, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    .line 395
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iput v0, v5, Lfa/p;->b:I

    .line 400
    .line 401
    iget-object v0, v5, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 402
    .line 403
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    iput p1, v5, Lfa/p;->a:I

    .line 408
    .line 409
    iget p1, v5, Lfa/p;->a:I

    .line 410
    .line 411
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_8
    check-cast v5, Lfa/h1;

    .line 416
    .line 417
    iget v0, v5, Lfa/p;->a:I

    .line 418
    .line 419
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 420
    .line 421
    .line 422
    iget-object v0, v5, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 423
    .line 424
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iput v0, v5, Lfa/p;->b:I

    .line 429
    .line 430
    iget-object v0, v5, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 431
    .line 432
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    iput p1, v5, Lfa/p;->a:I

    .line 437
    .line 438
    iget p1, v5, Lfa/p;->a:I

    .line 439
    .line 440
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :pswitch_9
    sget-object p1, Lfa/u;->e:Ljava/lang/String;

    .line 445
    .line 446
    const-string v0, "l0TFocIUz9+XRMWuzRvSjcQ6lPWcQg==\n"

    .line 447
    .line 448
    const-string v1, "qnn4nP8p8uI=\n"

    .line 449
    .line 450
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 455
    .line 456
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    check-cast v5, Lfa/u;

    .line 460
    .line 461
    iget-object p1, v5, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 462
    .line 463
    iget v0, v5, Lfa/u;->b:I

    .line 464
    .line 465
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    if-eqz p1, :cond_6

    .line 470
    .line 471
    iget-object p1, v5, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 472
    .line 473
    iget v0, v5, Lfa/u;->b:I

    .line 474
    .line 475
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 480
    .line 481
    if-eqz p1, :cond_6

    .line 482
    .line 483
    iget-object p1, v5, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 484
    .line 485
    iget v0, v5, Lfa/u;->b:I

    .line 486
    .line 487
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 492
    .line 493
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 494
    .line 495
    .line 496
    sput v4, Lfa/u;->f:I

    .line 497
    .line 498
    :cond_6
    return-void

    .line 499
    :pswitch_a
    sget-object p1, Lfa/o;->i:Ljava/lang/String;

    .line 500
    .line 501
    const-string v0, "tcaPdoXG4R21xo95isn8T+a43iLbkA==\n"

    .line 502
    .line 503
    const-string v1, "iPuyS7j73CA=\n"

    .line 504
    .line 505
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 510
    .line 511
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    check-cast v5, Lfa/o;

    .line 515
    .line 516
    iget-object p1, v5, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 517
    .line 518
    iget v0, v5, Lfa/o;->b:I

    .line 519
    .line 520
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    if-eqz p1, :cond_7

    .line 525
    .line 526
    iget-object p1, v5, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 527
    .line 528
    iget v0, v5, Lfa/o;->b:I

    .line 529
    .line 530
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 535
    .line 536
    if-eqz p1, :cond_7

    .line 537
    .line 538
    iget-object p1, v5, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 539
    .line 540
    iget v0, v5, Lfa/o;->b:I

    .line 541
    .line 542
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 547
    .line 548
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 549
    .line 550
    .line 551
    :cond_7
    return-void

    .line 552
    :pswitch_b
    check-cast v5, Lfa/b;

    .line 553
    .line 554
    iget v0, v5, Lfa/o;->b:I

    .line 555
    .line 556
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 557
    .line 558
    .line 559
    iget-object v0, v5, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 560
    .line 561
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    iput v0, v5, Lfa/o;->d:I

    .line 566
    .line 567
    iget-object v0, v5, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 568
    .line 569
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 570
    .line 571
    .line 572
    move-result p1

    .line 573
    iput p1, v5, Lfa/o;->b:I

    .line 574
    .line 575
    iget p1, v5, Lfa/o;->b:I

    .line 576
    .line 577
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_c
    check-cast v5, Lcom/google/android/material/textfield/r;

    .line 582
    .line 583
    iget-object p1, v5, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 584
    .line 585
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    if-nez p1, :cond_8

    .line 590
    .line 591
    goto :goto_4

    .line 592
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    invoke-static {v5}, Lcom/google/android/material/textfield/r;->d(Lcom/google/android/material/textfield/r;)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_9

    .line 601
    .line 602
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 603
    .line 604
    .line 605
    goto :goto_3

    .line 606
    :cond_9
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 611
    .line 612
    .line 613
    :goto_3
    if-ltz v0, :cond_a

    .line 614
    .line 615
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 616
    .line 617
    .line 618
    :cond_a
    iget-object p1, v5, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 619
    .line 620
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 621
    .line 622
    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/content/res/ColorStateList;

    .line 623
    .line 624
    invoke-static {p1, v0, v1}, Lu7/d;->x(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 625
    .line 626
    .line 627
    :goto_4
    return-void

    .line 628
    :pswitch_d
    check-cast v5, Lcom/google/android/material/textfield/m;

    .line 629
    .line 630
    iget-object p1, v5, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 631
    .line 632
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 633
    .line 634
    .line 635
    move-result-object p1

    .line 636
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 637
    .line 638
    invoke-static {v5, p1}, Lcom/google/android/material/textfield/m;->d(Lcom/google/android/material/textfield/m;Landroid/widget/AutoCompleteTextView;)V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :pswitch_e
    check-cast v5, Lcom/google/android/material/textfield/e;

    .line 643
    .line 644
    iget-object p1, v5, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 645
    .line 646
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    if-eqz p1, :cond_b

    .line 655
    .line 656
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 657
    .line 658
    .line 659
    :cond_b
    iget-object p1, v5, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 660
    .line 661
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 662
    .line 663
    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/content/res/ColorStateList;

    .line 664
    .line 665
    invoke-static {p1, v0, v1}, Lu7/d;->x(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :pswitch_f
    check-cast p1, Lcom/google/android/material/navigation/d;

    .line 670
    .line 671
    invoke-virtual {p1}, Lcom/google/android/material/navigation/d;->getItemData()Lk/n;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    check-cast v5, Lcom/google/android/material/navigation/f;

    .line 676
    .line 677
    iget-object v0, v5, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 678
    .line 679
    iget-object v1, v5, Lcom/google/android/material/navigation/f;->A:Lcom/google/android/material/navigation/h;

    .line 680
    .line 681
    invoke-virtual {v0, p1, v1, v3}, Lk/l;->q(Landroid/view/MenuItem;Lk/y;I)Z

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    if-nez v0, :cond_c

    .line 686
    .line 687
    invoke-virtual {p1, v4}, Lk/n;->setChecked(Z)Landroid/view/MenuItem;

    .line 688
    .line 689
    .line 690
    :cond_c
    return-void

    .line 691
    :pswitch_10
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 692
    .line 693
    check-cast v5, Lcom/google/android/material/internal/r;

    .line 694
    .line 695
    iget-object v0, v5, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 696
    .line 697
    if-eqz v0, :cond_d

    .line 698
    .line 699
    iput-boolean v4, v0, Lcom/google/android/material/internal/j;->c:Z

    .line 700
    .line 701
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Lk/n;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    iget-object v0, v5, Lcom/google/android/material/internal/r;->c:Lk/l;

    .line 706
    .line 707
    invoke-virtual {v0, p1, v5, v3}, Lk/l;->q(Landroid/view/MenuItem;Lk/y;I)Z

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz p1, :cond_e

    .line 712
    .line 713
    invoke-virtual {p1}, Lk/n;->isCheckable()Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    if-eqz v1, :cond_e

    .line 718
    .line 719
    if-eqz v0, :cond_e

    .line 720
    .line 721
    iget-object v0, v5, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 722
    .line 723
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/j;->b(Lk/n;)V

    .line 724
    .line 725
    .line 726
    goto :goto_5

    .line 727
    :cond_e
    const/4 v4, 0x0

    .line 728
    :goto_5
    iget-object p1, v5, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 729
    .line 730
    if-eqz p1, :cond_f

    .line 731
    .line 732
    iput-boolean v3, p1, Lcom/google/android/material/internal/j;->c:Z

    .line 733
    .line 734
    :cond_f
    if-eqz v4, :cond_10

    .line 735
    .line 736
    invoke-virtual {v5, v3}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 737
    .line 738
    .line 739
    :cond_10
    return-void

    .line 740
    :pswitch_11
    check-cast v5, Lcom/google/android/material/datepicker/r;

    .line 741
    .line 742
    iget p1, v5, Lcom/google/android/material/datepicker/r;->Y:I

    .line 743
    .line 744
    const/4 v0, 0x2

    .line 745
    if-ne p1, v0, :cond_11

    .line 746
    .line 747
    invoke-virtual {v5, v4}, Lcom/google/android/material/datepicker/r;->S(I)V

    .line 748
    .line 749
    .line 750
    goto :goto_6

    .line 751
    :cond_11
    if-ne p1, v4, :cond_12

    .line 752
    .line 753
    invoke-virtual {v5, v0}, Lcom/google/android/material/datepicker/r;->S(I)V

    .line 754
    .line 755
    .line 756
    :cond_12
    :goto_6
    return-void

    .line 757
    :pswitch_12
    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    .line 758
    .line 759
    iget-object p1, v5, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/q3;

    .line 760
    .line 761
    if-nez p1, :cond_13

    .line 762
    .line 763
    goto :goto_7

    .line 764
    :cond_13
    iget-object v2, p1, Landroidx/appcompat/widget/q3;->b:Lk/n;

    .line 765
    .line 766
    :goto_7
    if-eqz v2, :cond_14

    .line 767
    .line 768
    invoke-virtual {v2}, Lk/n;->collapseActionView()Z

    .line 769
    .line 770
    .line 771
    :cond_14
    return-void

    .line 772
    :pswitch_13
    check-cast v5, Lj/a;

    .line 773
    .line 774
    invoke-virtual {v5}, Lj/a;->a()V

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    :pswitch_14
    check-cast v5, Landroidx/appcompat/app/h;

    .line 779
    .line 780
    iget-object p1, v5, Landroidx/appcompat/app/h;->h:Landroid/widget/Button;

    .line 781
    .line 782
    iget-object p1, v5, Landroidx/appcompat/app/h;->x:Landroidx/appcompat/app/f;

    .line 783
    .line 784
    iget-object v0, v5, Landroidx/appcompat/app/h;->b:Landroidx/appcompat/app/j;

    .line 785
    .line 786
    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 791
    .line 792
    .line 793
    return-void

    .line 794
    nop

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
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
