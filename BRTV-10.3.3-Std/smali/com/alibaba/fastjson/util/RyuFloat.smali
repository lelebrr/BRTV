.class public final Lcom/alibaba/fastjson/util/RyuFloat;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    new-array v0, v0, [[I

    .line 4
    .line 5
    const/high16 v1, 0x20000000

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    filled-new-array {v1, v2}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/high16 v1, 0x28000000

    .line 15
    .line 16
    filled-new-array {v1, v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v1, v0, v3

    .line 22
    .line 23
    const/high16 v1, 0x32000000

    .line 24
    .line 25
    filled-new-array {v1, v2}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v4, 0x2

    .line 30
    aput-object v1, v0, v4

    .line 31
    .line 32
    const/high16 v1, 0x3e800000    # 0.25f

    .line 33
    .line 34
    filled-new-array {v1, v2}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v5, 0x3

    .line 39
    aput-object v1, v0, v5

    .line 40
    .line 41
    const/high16 v1, 0x27100000

    .line 42
    .line 43
    filled-new-array {v1, v2}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v6, 0x4

    .line 48
    aput-object v1, v0, v6

    .line 49
    .line 50
    const/high16 v1, 0x30d40000

    .line 51
    .line 52
    filled-new-array {v1, v2}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v7, 0x5

    .line 57
    aput-object v1, v0, v7

    .line 58
    .line 59
    const/high16 v1, 0x3d090000

    .line 60
    .line 61
    filled-new-array {v1, v2}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v8, 0x6

    .line 66
    aput-object v1, v0, v8

    .line 67
    .line 68
    const v1, 0x2625a000

    .line 69
    .line 70
    .line 71
    filled-new-array {v1, v2}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v9, 0x7

    .line 76
    aput-object v1, v0, v9

    .line 77
    .line 78
    const v1, 0x2faf0800

    .line 79
    .line 80
    .line 81
    filled-new-array {v1, v2}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    aput-object v1, v0, v10

    .line 88
    .line 89
    const v1, 0x3b9aca00

    .line 90
    .line 91
    .line 92
    filled-new-array {v1, v2}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    aput-object v1, v0, v11

    .line 99
    .line 100
    const v1, 0x2540be40

    .line 101
    .line 102
    .line 103
    filled-new-array {v1, v2}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    aput-object v1, v0, v12

    .line 110
    .line 111
    const v1, 0x2e90edd0

    .line 112
    .line 113
    .line 114
    filled-new-array {v1, v2}, [I

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    aput-object v1, v0, v13

    .line 121
    .line 122
    const v1, 0x3a352944

    .line 123
    .line 124
    .line 125
    filled-new-array {v1, v2}, [I

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    aput-object v1, v0, v14

    .line 132
    .line 133
    const v1, 0x246139ca

    .line 134
    .line 135
    .line 136
    const/high16 v15, 0x40000000    # 2.0f

    .line 137
    .line 138
    filled-new-array {v1, v15}, [I

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/16 v15, 0xd

    .line 143
    .line 144
    aput-object v1, v0, v15

    .line 145
    .line 146
    const v1, 0x2d79883d

    .line 147
    .line 148
    .line 149
    const/high16 v15, 0x10000000

    .line 150
    .line 151
    filled-new-array {v1, v15}, [I

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const/16 v16, 0xe

    .line 156
    .line 157
    aput-object v1, v0, v16

    .line 158
    .line 159
    const v1, 0x38d7ea4c

    .line 160
    .line 161
    .line 162
    const/high16 v14, 0x34000000

    .line 163
    .line 164
    filled-new-array {v1, v14}, [I

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const/16 v14, 0xf

    .line 169
    .line 170
    aput-object v1, v0, v14

    .line 171
    .line 172
    const v1, 0x2386f26f

    .line 173
    .line 174
    .line 175
    const/high16 v14, 0x60800000

    .line 176
    .line 177
    filled-new-array {v1, v14}, [I

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/16 v14, 0x10

    .line 182
    .line 183
    aput-object v1, v0, v14

    .line 184
    .line 185
    const v1, 0x2c68af0b

    .line 186
    .line 187
    .line 188
    const/high16 v14, 0x58a00000

    .line 189
    .line 190
    filled-new-array {v1, v14}, [I

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const/16 v14, 0x11

    .line 195
    .line 196
    aput-object v1, v0, v14

    .line 197
    .line 198
    const v1, 0x3782dace

    .line 199
    .line 200
    .line 201
    const/high16 v14, 0x4ec80000    # 1.6777216E9f

    .line 202
    .line 203
    filled-new-array {v1, v14}, [I

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const/16 v14, 0x12

    .line 208
    .line 209
    aput-object v1, v0, v14

    .line 210
    .line 211
    const v1, 0x22b1c8c1

    .line 212
    .line 213
    .line 214
    const/high16 v14, 0x113d0000

    .line 215
    .line 216
    filled-new-array {v1, v14}, [I

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const/16 v14, 0x13

    .line 221
    .line 222
    aput-object v1, v0, v14

    .line 223
    .line 224
    const v1, 0x2b5e3af1

    .line 225
    .line 226
    .line 227
    const v14, 0x358c4000

    .line 228
    .line 229
    .line 230
    filled-new-array {v1, v14}, [I

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const/16 v14, 0x14

    .line 235
    .line 236
    aput-object v1, v0, v14

    .line 237
    .line 238
    const v1, 0x3635c9ad

    .line 239
    .line 240
    .line 241
    const v14, 0x62ef5000

    .line 242
    .line 243
    .line 244
    filled-new-array {v1, v14}, [I

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const/16 v14, 0x15

    .line 249
    .line 250
    aput-object v1, v0, v14

    .line 251
    .line 252
    const v1, 0x21e19e0c

    .line 253
    .line 254
    .line 255
    const v14, 0x4dd59200    # 4.478894E8f

    .line 256
    .line 257
    .line 258
    filled-new-array {v1, v14}, [I

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const/16 v14, 0x16

    .line 263
    .line 264
    aput-object v1, v0, v14

    .line 265
    .line 266
    const v1, 0x2a5a058f

    .line 267
    .line 268
    .line 269
    const v14, 0x614af680    # 2.3400028E20f

    .line 270
    .line 271
    .line 272
    filled-new-array {v1, v14}, [I

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const/16 v14, 0x17

    .line 277
    .line 278
    aput-object v1, v0, v14

    .line 279
    .line 280
    const v1, 0x34f086f3

    .line 281
    .line 282
    .line 283
    const v14, 0x599db420

    .line 284
    .line 285
    .line 286
    filled-new-array {v1, v14}, [I

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    const/16 v14, 0x18

    .line 291
    .line 292
    aput-object v1, v0, v14

    .line 293
    .line 294
    const v1, 0x21165458

    .line 295
    .line 296
    .line 297
    const v14, 0x28029094    # 7.2478E-15f

    .line 298
    .line 299
    .line 300
    filled-new-array {v1, v14}, [I

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const/16 v14, 0x19

    .line 305
    .line 306
    aput-object v1, v0, v14

    .line 307
    .line 308
    const v1, 0x295be96e

    .line 309
    .line 310
    .line 311
    const v14, 0x320334b9

    .line 312
    .line 313
    .line 314
    filled-new-array {v1, v14}, [I

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const/16 v14, 0x1a

    .line 319
    .line 320
    aput-object v1, v0, v14

    .line 321
    .line 322
    const v1, 0x33b2e3c9

    .line 323
    .line 324
    .line 325
    const v14, 0x7e8401e7

    .line 326
    .line 327
    .line 328
    filled-new-array {v1, v14}, [I

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    const/16 v14, 0x1b

    .line 333
    .line 334
    aput-object v1, v0, v14

    .line 335
    .line 336
    const v1, 0x204fce5e

    .line 337
    .line 338
    .line 339
    const v14, 0x1f128130

    .line 340
    .line 341
    .line 342
    filled-new-array {v1, v14}, [I

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const/16 v14, 0x1c

    .line 347
    .line 348
    aput-object v1, v0, v14

    .line 349
    .line 350
    const v1, 0x2863c1f5

    .line 351
    .line 352
    .line 353
    const v14, 0x66d7217c

    .line 354
    .line 355
    .line 356
    filled-new-array {v1, v14}, [I

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const/16 v14, 0x1d

    .line 361
    .line 362
    aput-object v1, v0, v14

    .line 363
    .line 364
    const v1, 0x327cb273

    .line 365
    .line 366
    .line 367
    const v14, 0x208ce9db

    .line 368
    .line 369
    .line 370
    filled-new-array {v1, v14}, [I

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const/16 v14, 0x1e

    .line 375
    .line 376
    aput-object v1, v0, v14

    .line 377
    .line 378
    const v1, 0x3f1bdf10

    .line 379
    .line 380
    .line 381
    const v14, 0x8b02452

    .line 382
    .line 383
    .line 384
    filled-new-array {v1, v14}, [I

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    const/16 v14, 0x1f

    .line 389
    .line 390
    aput-object v1, v0, v14

    .line 391
    .line 392
    const v1, 0x27716b6a

    .line 393
    .line 394
    .line 395
    const v14, 0x56e16b3

    .line 396
    .line 397
    .line 398
    filled-new-array {v1, v14}, [I

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const/16 v14, 0x20

    .line 403
    .line 404
    aput-object v1, v0, v14

    .line 405
    .line 406
    const v1, 0x314dc644

    .line 407
    .line 408
    .line 409
    const v14, 0x46c99c60    # 25806.188f

    .line 410
    .line 411
    .line 412
    filled-new-array {v1, v14}, [I

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    const/16 v14, 0x21

    .line 417
    .line 418
    aput-object v1, v0, v14

    .line 419
    .line 420
    const v1, 0x3da137d5

    .line 421
    .line 422
    .line 423
    const v14, 0x587c0378

    .line 424
    .line 425
    .line 426
    filled-new-array {v1, v14}, [I

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    const/16 v14, 0x22

    .line 431
    .line 432
    aput-object v1, v0, v14

    .line 433
    .line 434
    const v1, 0x2684c2e5

    .line 435
    .line 436
    .line 437
    const v14, 0x474d822b

    .line 438
    .line 439
    .line 440
    filled-new-array {v1, v14}, [I

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const/16 v14, 0x23

    .line 445
    .line 446
    aput-object v1, v0, v14

    .line 447
    .line 448
    const v1, 0x3025f39e

    .line 449
    .line 450
    .line 451
    const v14, 0x7920e2b6

    .line 452
    .line 453
    .line 454
    filled-new-array {v1, v14}, [I

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    const/16 v14, 0x24

    .line 459
    .line 460
    aput-object v1, v0, v14

    .line 461
    .line 462
    const v1, 0x3c2f7086

    .line 463
    .line 464
    .line 465
    const v14, 0x57691b64

    .line 466
    .line 467
    .line 468
    filled-new-array {v1, v14}, [I

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const/16 v14, 0x25

    .line 473
    .line 474
    aput-object v1, v0, v14

    .line 475
    .line 476
    const v1, 0x259da654

    .line 477
    .line 478
    .line 479
    const v14, 0x16a1b11e

    .line 480
    .line 481
    .line 482
    filled-new-array {v1, v14}, [I

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const/16 v14, 0x26

    .line 487
    .line 488
    aput-object v1, v0, v14

    .line 489
    .line 490
    const v1, 0x2f050fe9

    .line 491
    .line 492
    .line 493
    const v14, 0x1c4a1d66

    .line 494
    .line 495
    .line 496
    filled-new-array {v1, v14}, [I

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const/16 v14, 0x27

    .line 501
    .line 502
    aput-object v1, v0, v14

    .line 503
    .line 504
    const v1, 0x3ac653e3

    .line 505
    .line 506
    .line 507
    const v14, 0x435ca4bf

    .line 508
    .line 509
    .line 510
    filled-new-array {v1, v14}, [I

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const/16 v14, 0x28

    .line 515
    .line 516
    aput-object v1, v0, v14

    .line 517
    .line 518
    const v1, 0x24bbf46e

    .line 519
    .line 520
    .line 521
    const v14, 0x1a19e6f7

    .line 522
    .line 523
    .line 524
    filled-new-array {v1, v14}, [I

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    const/16 v14, 0x29

    .line 529
    .line 530
    aput-object v1, v0, v14

    .line 531
    .line 532
    const v1, 0x2deaf189

    .line 533
    .line 534
    .line 535
    const v14, 0x60a060b5

    .line 536
    .line 537
    .line 538
    filled-new-array {v1, v14}, [I

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    const/16 v14, 0x2a

    .line 543
    .line 544
    aput-object v1, v0, v14

    .line 545
    .line 546
    const v1, 0x3965adec

    .line 547
    .line 548
    .line 549
    const v14, 0x18c878e3

    .line 550
    .line 551
    .line 552
    filled-new-array {v1, v14}, [I

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    const/16 v14, 0x2b

    .line 557
    .line 558
    aput-object v1, v0, v14

    .line 559
    .line 560
    const v1, 0x23df8cb3

    .line 561
    .line 562
    .line 563
    const v14, 0x4f7d4b8d

    .line 564
    .line 565
    .line 566
    filled-new-array {v1, v14}, [I

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    const/16 v14, 0x2c

    .line 571
    .line 572
    aput-object v1, v0, v14

    .line 573
    .line 574
    const v1, 0x2cd76fe0

    .line 575
    .line 576
    .line 577
    const v14, 0x435c9e71

    .line 578
    .line 579
    .line 580
    filled-new-array {v1, v14}, [I

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const/16 v14, 0x2d

    .line 585
    .line 586
    aput-object v1, v0, v14

    .line 587
    .line 588
    const v1, 0x380d4bd8

    .line 589
    .line 590
    .line 591
    const v14, 0x5433c60d

    .line 592
    .line 593
    .line 594
    filled-new-array {v1, v14}, [I

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    const/16 v14, 0x2e

    .line 599
    .line 600
    aput-object v1, v0, v14

    .line 601
    .line 602
    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    .line 603
    .line 604
    const/16 v0, 0x1f

    .line 605
    .line 606
    new-array v0, v0, [[I

    .line 607
    .line 608
    filled-new-array {v15, v3}, [I

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    aput-object v1, v0, v2

    .line 613
    .line 614
    const v1, 0xccccccc

    .line 615
    .line 616
    .line 617
    const v2, 0x66666667

    .line 618
    .line 619
    .line 620
    filled-new-array {v1, v2}, [I

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    aput-object v1, v0, v3

    .line 625
    .line 626
    const v1, 0xa3d70a3

    .line 627
    .line 628
    .line 629
    const v2, 0x6b851eb9

    .line 630
    .line 631
    .line 632
    filled-new-array {v1, v2}, [I

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    aput-object v1, v0, v4

    .line 637
    .line 638
    const v1, 0x83126e9

    .line 639
    .line 640
    .line 641
    const v2, 0x3c6a7efa

    .line 642
    .line 643
    .line 644
    filled-new-array {v1, v2}, [I

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    aput-object v1, v0, v5

    .line 649
    .line 650
    const v1, 0xd1b7175

    .line 651
    .line 652
    .line 653
    const v2, 0x4710cb2a

    .line 654
    .line 655
    .line 656
    filled-new-array {v1, v2}, [I

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    aput-object v1, v0, v6

    .line 661
    .line 662
    const v1, 0xa7c5ac4

    .line 663
    .line 664
    .line 665
    const v2, 0x38da3c22

    .line 666
    .line 667
    .line 668
    filled-new-array {v1, v2}, [I

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    aput-object v1, v0, v7

    .line 673
    .line 674
    const v1, 0x8637bd0

    .line 675
    .line 676
    .line 677
    const v2, 0x2d7b634e

    .line 678
    .line 679
    .line 680
    filled-new-array {v1, v2}, [I

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    aput-object v1, v0, v8

    .line 685
    .line 686
    const v1, 0xd6bf94d

    .line 687
    .line 688
    .line 689
    const v2, 0x2f2bd216

    .line 690
    .line 691
    .line 692
    filled-new-array {v1, v2}, [I

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    aput-object v1, v0, v9

    .line 697
    .line 698
    const v1, 0xabcc771

    .line 699
    .line 700
    .line 701
    const v2, 0xc230e78

    .line 702
    .line 703
    .line 704
    filled-new-array {v1, v2}, [I

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    aput-object v1, v0, v10

    .line 709
    .line 710
    const v1, 0x89705f4

    .line 711
    .line 712
    .line 713
    const v2, 0x9b5a52d

    .line 714
    .line 715
    .line 716
    filled-new-array {v1, v2}, [I

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    aput-object v1, v0, v11

    .line 721
    .line 722
    const v1, 0xdbe6fec

    .line 723
    .line 724
    .line 725
    const v2, 0x75ef6eae

    .line 726
    .line 727
    .line 728
    filled-new-array {v1, v2}, [I

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    aput-object v1, v0, v12

    .line 733
    .line 734
    const v1, 0xafebff0

    .line 735
    .line 736
    .line 737
    const v2, 0x5e592558

    .line 738
    .line 739
    .line 740
    filled-new-array {v1, v2}, [I

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    aput-object v1, v0, v13

    .line 745
    .line 746
    const v1, 0x8cbccc0

    .line 747
    .line 748
    .line 749
    const v2, 0x4b7a8447    # 1.6417863E7f

    .line 750
    .line 751
    .line 752
    filled-new-array {v1, v2}, [I

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    const/16 v2, 0xc

    .line 757
    .line 758
    aput-object v1, v0, v2

    .line 759
    .line 760
    const v1, 0xe12e134

    .line 761
    .line 762
    .line 763
    const v2, 0x125da071

    .line 764
    .line 765
    .line 766
    filled-new-array {v1, v2}, [I

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    const/16 v2, 0xd

    .line 771
    .line 772
    aput-object v1, v0, v2

    .line 773
    .line 774
    const v1, 0xb424dc3

    .line 775
    .line 776
    .line 777
    const v2, 0x284ae6c1

    .line 778
    .line 779
    .line 780
    filled-new-array {v1, v2}, [I

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    aput-object v1, v0, v16

    .line 785
    .line 786
    const v1, 0x901d7cf

    .line 787
    .line 788
    .line 789
    const v2, 0x39d58567

    .line 790
    .line 791
    .line 792
    filled-new-array {v1, v2}, [I

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    const/16 v2, 0xf

    .line 797
    .line 798
    aput-object v1, v0, v2

    .line 799
    .line 800
    const v1, 0xe69594b

    .line 801
    .line 802
    .line 803
    const v2, 0x76226f0b

    .line 804
    .line 805
    .line 806
    filled-new-array {v1, v2}, [I

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    const/16 v2, 0x10

    .line 811
    .line 812
    aput-object v1, v0, v2

    .line 813
    .line 814
    const v1, 0xb877aa3

    .line 815
    .line 816
    .line 817
    const v2, 0x11b525a3

    .line 818
    .line 819
    .line 820
    filled-new-array {v1, v2}, [I

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    const/16 v2, 0x11

    .line 825
    .line 826
    aput-object v1, v0, v2

    .line 827
    .line 828
    const v1, 0x9392ee8

    .line 829
    .line 830
    .line 831
    const v2, 0x7490eae9

    .line 832
    .line 833
    .line 834
    filled-new-array {v1, v2}, [I

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    const/16 v2, 0x12

    .line 839
    .line 840
    aput-object v1, v0, v2

    .line 841
    .line 842
    const v1, 0xec1e4a7

    .line 843
    .line 844
    .line 845
    const v2, 0x6db4ab0e

    .line 846
    .line 847
    .line 848
    filled-new-array {v1, v2}, [I

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    const/16 v2, 0x13

    .line 853
    .line 854
    aput-object v1, v0, v2

    .line 855
    .line 856
    const v1, 0xbce5086

    .line 857
    .line 858
    .line 859
    const v2, 0x249088d8

    .line 860
    .line 861
    .line 862
    filled-new-array {v1, v2}, [I

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    const/16 v2, 0x14

    .line 867
    .line 868
    aput-object v1, v0, v2

    .line 869
    .line 870
    const v1, 0x971da05

    .line 871
    .line 872
    .line 873
    const v2, 0x3a6d3e0

    .line 874
    .line 875
    .line 876
    filled-new-array {v1, v2}, [I

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    const/16 v2, 0x15

    .line 881
    .line 882
    aput-object v1, v0, v2

    .line 883
    .line 884
    const v1, 0xf1c9008

    .line 885
    .line 886
    .line 887
    const v2, 0x5d7b966

    .line 888
    .line 889
    .line 890
    filled-new-array {v1, v2}, [I

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    const/16 v2, 0x16

    .line 895
    .line 896
    aput-object v1, v0, v2

    .line 897
    .line 898
    const v1, 0xc16d9a0

    .line 899
    .line 900
    .line 901
    const v2, 0x4ac9452

    .line 902
    .line 903
    .line 904
    filled-new-array {v1, v2}, [I

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    const/16 v2, 0x17

    .line 909
    .line 910
    aput-object v1, v0, v2

    .line 911
    .line 912
    const v1, 0x9abe14c

    .line 913
    .line 914
    .line 915
    const v2, 0x6a23a9db

    .line 916
    .line 917
    .line 918
    filled-new-array {v1, v2}, [I

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    const/16 v2, 0x18

    .line 923
    .line 924
    aput-object v1, v0, v2

    .line 925
    .line 926
    const v1, 0xf79687a

    .line 927
    .line 928
    .line 929
    const v2, 0x769f762b

    .line 930
    .line 931
    .line 932
    filled-new-array {v1, v2}, [I

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    const/16 v2, 0x19

    .line 937
    .line 938
    aput-object v1, v0, v2

    .line 939
    .line 940
    const v1, 0xc612062

    .line 941
    .line 942
    .line 943
    const v2, 0x2bb2c4ef

    .line 944
    .line 945
    .line 946
    filled-new-array {v1, v2}, [I

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    const/16 v2, 0x1a

    .line 951
    .line 952
    aput-object v1, v0, v2

    .line 953
    .line 954
    const v1, 0x9e74d1b

    .line 955
    .line 956
    .line 957
    const v2, 0x3c8f03f3

    .line 958
    .line 959
    .line 960
    filled-new-array {v1, v2}, [I

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    const/16 v2, 0x1b

    .line 965
    .line 966
    aput-object v1, v0, v2

    .line 967
    .line 968
    const v1, 0xfd87b5f

    .line 969
    .line 970
    .line 971
    const v2, 0x14180651

    .line 972
    .line 973
    .line 974
    filled-new-array {v1, v2}, [I

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    const/16 v2, 0x1c

    .line 979
    .line 980
    aput-object v1, v0, v2

    .line 981
    .line 982
    const v1, 0xcad2f7f

    .line 983
    .line 984
    .line 985
    const v2, 0x29acd1da

    .line 986
    .line 987
    .line 988
    filled-new-array {v1, v2}, [I

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    const/16 v2, 0x1d

    .line 993
    .line 994
    aput-object v1, v0, v2

    .line 995
    .line 996
    const v1, 0xa2425ff

    .line 997
    .line 998
    .line 999
    const v2, 0x3af0a7e2

    .line 1000
    .line 1001
    .line 1002
    filled-new-array {v1, v2}, [I

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    const/16 v2, 0x1e

    .line 1007
    .line 1008
    aput-object v1, v0, v2

    .line 1009
    .line 1010
    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    .line 1011
    .line 1012
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toString(F[CI)I
    .locals 28

    .line 4
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x4e

    .line 5
    aput-char v1, p1, p2

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x61

    .line 6
    aput-char v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 7
    aput-char v1, p1, v2

    :goto_0
    sub-int v0, v0, p2

    return v0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/16 v1, 0x66

    const/16 v2, 0x49

    const/16 v3, 0x69

    const/16 v4, 0x6e

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 8
    aput-char v2, p1, p2

    add-int/lit8 v2, p2, 0x2

    .line 9
    aput-char v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 10
    aput-char v1, p1, v2

    add-int/lit8 v1, p2, 0x4

    .line 11
    aput-char v3, p1, v0

    add-int/lit8 v0, p2, 0x5

    .line 12
    aput-char v4, p1, v1

    add-int/lit8 v1, p2, 0x6

    .line 13
    aput-char v3, p1, v0

    add-int/lit8 v0, p2, 0x7

    const/16 v2, 0x74

    .line 14
    aput-char v2, p1, v1

    add-int/lit8 v1, p2, 0x8

    const/16 v2, 0x79

    .line 15
    aput-char v2, p1, v0

    :goto_1
    sub-int v1, v1, p2

    return v1

    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/16 v5, 0x2d

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 16
    aput-char v5, p1, p2

    add-int/lit8 v5, p2, 0x2

    .line 17
    aput-char v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 18
    aput-char v4, p1, v5

    add-int/lit8 v2, p2, 0x4

    .line 19
    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x5

    .line 20
    aput-char v3, p1, v2

    add-int/lit8 v1, p2, 0x6

    .line 21
    aput-char v4, p1, v0

    add-int/lit8 v0, p2, 0x7

    .line 22
    aput-char v3, p1, v1

    add-int/lit8 v1, p2, 0x8

    const/16 v2, 0x74

    .line 23
    aput-char v2, p1, v0

    add-int/lit8 v0, p2, 0x9

    const/16 v2, 0x79

    .line 24
    aput-char v2, p1, v1

    goto :goto_0

    .line 25
    :cond_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 26
    aput-char v2, p1, p2

    add-int/lit8 v3, p2, 0x2

    .line 27
    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 28
    aput-char v2, p1, v3

    goto :goto_0

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 29
    aput-char v5, p1, p2

    add-int/lit8 v3, p2, 0x2

    .line 30
    aput-char v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 31
    aput-char v1, p1, v3

    add-int/lit8 v1, p2, 0x4

    .line 32
    aput-char v2, p1, v0

    goto :goto_1

    :cond_4
    shr-int/lit8 v3, v0, 0x17

    and-int/lit16 v3, v3, 0xff

    const v4, 0x7fffff

    and-int/2addr v4, v0

    if-nez v3, :cond_5

    const/16 v6, -0x95

    goto :goto_2

    :cond_5
    add-int/lit16 v6, v3, -0x96

    const/high16 v7, 0x800000

    or-int/2addr v4, v7

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v9, v4, 0x1

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    mul-int/lit8 v10, v4, 0x4

    add-int/lit8 v11, v10, 0x2

    int-to-long v12, v4

    const-wide/32 v14, 0x800000

    cmp-long v16, v12, v14

    if-nez v16, :cond_9

    if-gt v3, v8, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v3, 0x2

    :goto_6
    sub-int v3, v10, v3

    add-int/lit8 v6, v6, -0x2

    const-wide/32 v12, 0x98967f

    const-wide/32 v14, 0x1624c50

    const-wide/32 v16, 0x989680

    const/16 v18, 0x1f

    if-ltz v6, :cond_16

    int-to-long v4, v6

    const-wide/32 v19, 0x2deefb

    mul-long v4, v4, v19

    .line 33
    div-long v4, v4, v16

    long-to-int v5, v4

    if-nez v5, :cond_a

    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    int-to-long v1, v5

    mul-long v1, v1, v14

    add-long/2addr v1, v12

    .line 34
    div-long v1, v1, v16

    long-to-int v2, v1

    :goto_7
    add-int/lit8 v2, v2, 0x3a

    neg-int v1, v6

    add-int/2addr v1, v5

    add-int/2addr v2, v1

    .line 35
    sget-object v6, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v20, v6, v5

    aget v4, v20, v7

    int-to-long v12, v4

    .line 36
    aget v4, v20, v8

    int-to-long v7, v4

    int-to-long v14, v10

    mul-long v21, v14, v12

    mul-long v23, v14, v7

    shr-long v23, v23, v18

    add-long v21, v21, v23

    add-int/lit8 v2, v2, -0x1f

    move v4, v9

    move/from16 v23, v10

    shr-long v9, v21, v2

    long-to-int v10, v9

    move/from16 v21, v10

    int-to-long v9, v11

    mul-long v24, v9, v12

    mul-long v9, v9, v7

    shr-long v9, v9, v18

    add-long v24, v24, v9

    shr-long v9, v24, v2

    long-to-int v10, v9

    move-wide/from16 v24, v14

    int-to-long v14, v3

    mul-long v12, v12, v14

    mul-long v14, v14, v7

    shr-long v7, v14, v18

    add-long/2addr v12, v7

    shr-long v7, v12, v2

    long-to-int v2, v7

    if-eqz v5, :cond_c

    add-int/lit8 v7, v10, -0x1

    const/16 v8, 0xa

    .line 37
    div-int/2addr v7, v8

    div-int/lit8 v8, v2, 0xa

    if-gt v7, v8, :cond_c

    add-int/lit8 v7, v5, -0x1

    if-nez v7, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    int-to-long v8, v7

    const-wide/32 v12, 0x1624c50

    mul-long v8, v8, v12

    const-wide/32 v12, 0x98967f

    add-long/2addr v8, v12

    .line 38
    div-long v8, v8, v16

    long-to-int v9, v8

    :goto_8
    add-int/lit8 v9, v9, 0x3a

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    add-int/2addr v1, v9

    .line 39
    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v9, v6, v7

    int-to-long v12, v9

    mul-long v14, v24, v12

    aget v6, v6, v8

    int-to-long v6, v6

    mul-long v6, v6, v24

    shr-long v6, v6, v18

    add-long/2addr v14, v6

    add-int/lit8 v1, v1, -0x1f

    shr-long v6, v14, v1

    const-wide/16 v8, 0xa

    .line 40
    rem-long/2addr v6, v8

    long-to-int v1, v6

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    const/4 v6, 0x0

    :goto_a
    if-lez v11, :cond_e

    .line 41
    rem-int/lit8 v7, v11, 0x5

    if-eqz v7, :cond_d

    goto :goto_b

    .line 42
    :cond_d
    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    const/4 v7, 0x0

    :goto_c
    if-lez v23, :cond_10

    .line 43
    rem-int/lit8 v8, v23, 0x5

    if-eqz v8, :cond_f

    goto :goto_d

    .line 44
    :cond_f
    div-int/lit8 v23, v23, 0x5

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    const/4 v8, 0x0

    :goto_e
    if-lez v3, :cond_12

    .line 45
    rem-int/lit8 v9, v3, 0x5

    if-eqz v9, :cond_11

    goto :goto_f

    .line 46
    :cond_11
    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_12
    :goto_f
    if-lt v6, v5, :cond_13

    const/4 v3, 0x1

    goto :goto_10

    :cond_13
    const/4 v3, 0x0

    :goto_10
    if-lt v7, v5, :cond_14

    const/4 v6, 0x1

    goto :goto_11

    :cond_14
    const/4 v6, 0x0

    :goto_11
    if-lt v8, v5, :cond_15

    const/4 v7, 0x1

    goto :goto_12

    :cond_15
    const/4 v7, 0x0

    :goto_12
    move v8, v7

    const/4 v7, 0x0

    goto/16 :goto_1b

    :cond_16
    move v4, v9

    move/from16 v23, v10

    neg-int v1, v6

    int-to-long v7, v1

    const-wide/32 v9, 0x6aa784

    mul-long v7, v7, v9

    .line 47
    div-long v7, v7, v16

    long-to-int v2, v7

    sub-int/2addr v1, v2

    if-nez v1, :cond_17

    const/4 v5, 0x1

    goto :goto_13

    :cond_17
    int-to-long v7, v1

    const-wide/32 v9, 0x1624c50

    mul-long v7, v7, v9

    const-wide/32 v9, 0x98967f

    add-long/2addr v7, v9

    .line 48
    div-long v7, v7, v16

    long-to-int v5, v7

    :goto_13
    add-int/lit8 v5, v5, -0x3d

    sub-int v5, v2, v5

    .line 49
    sget-object v7, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v8, v7, v1

    const/4 v9, 0x0

    aget v10, v8, v9

    int-to-long v9, v10

    const/4 v12, 0x1

    .line 50
    aget v8, v8, v12

    int-to-long v12, v8

    add-int/lit8 v5, v5, -0x1f

    move/from16 v8, v23

    int-to-long v14, v8

    mul-long v21, v14, v9

    mul-long v23, v14, v12

    shr-long v23, v23, v18

    add-long v21, v21, v23

    move-wide/from16 v23, v14

    shr-long v14, v21, v5

    long-to-int v15, v14

    move/from16 v21, v15

    int-to-long v14, v11

    mul-long v25, v14, v9

    mul-long v14, v14, v12

    shr-long v14, v14, v18

    add-long v25, v25, v14

    shr-long v14, v25, v5

    long-to-int v11, v14

    int-to-long v14, v3

    mul-long v9, v9, v14

    mul-long v14, v14, v12

    shr-long v12, v14, v18

    add-long/2addr v9, v12

    shr-long/2addr v9, v5

    long-to-int v5, v9

    if-eqz v2, :cond_19

    add-int/lit8 v9, v11, -0x1

    const/16 v10, 0xa

    .line 51
    div-int/2addr v9, v10

    div-int/lit8 v10, v5, 0xa

    if-gt v9, v10, :cond_19

    const/4 v9, 0x1

    add-int/2addr v1, v9

    add-int/lit8 v9, v2, -0x1

    if-nez v1, :cond_18

    const/4 v10, 0x1

    goto :goto_14

    :cond_18
    int-to-long v12, v1

    const-wide/32 v14, 0x1624c50

    mul-long v12, v12, v14

    const-wide/32 v14, 0x98967f

    add-long/2addr v12, v14

    .line 52
    div-long v12, v12, v16

    long-to-int v10, v12

    :goto_14
    add-int/lit8 v10, v10, -0x3d

    sub-int/2addr v9, v10

    .line 53
    aget-object v1, v7, v1

    const/4 v7, 0x0

    aget v10, v1, v7

    int-to-long v12, v10

    mul-long v14, v23, v12

    const/4 v10, 0x1

    aget v1, v1, v10

    int-to-long v12, v1

    mul-long v12, v12, v23

    shr-long v12, v12, v18

    add-long/2addr v14, v12

    add-int/lit8 v9, v9, -0x1f

    shr-long v9, v14, v9

    const-wide/16 v12, 0xa

    .line 54
    rem-long/2addr v9, v12

    long-to-int v1, v9

    goto :goto_15

    :cond_19
    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_15
    add-int/2addr v6, v2

    const/4 v9, 0x1

    if-lt v9, v2, :cond_1a

    const/4 v10, 0x1

    goto :goto_16

    :cond_1a
    const/4 v10, 0x0

    :goto_16
    const/16 v12, 0x17

    if-ge v2, v12, :cond_1b

    add-int/lit8 v12, v2, -0x1

    shl-int v12, v9, v12

    sub-int/2addr v12, v9

    and-int/2addr v8, v12

    if-nez v8, :cond_1b

    const/4 v8, 0x1

    :goto_17
    const/4 v12, 0x2

    goto :goto_18

    :cond_1b
    const/4 v8, 0x0

    goto :goto_17

    .line 55
    :goto_18
    rem-int/2addr v3, v12

    if-ne v3, v9, :cond_1c

    const/4 v3, 0x0

    goto :goto_19

    :cond_1c
    const/4 v3, 0x1

    :goto_19
    if-lt v3, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1a

    :cond_1d
    const/4 v2, 0x0

    :goto_1a
    move v3, v10

    move v10, v11

    move/from16 v27, v8

    move v8, v2

    move v2, v5

    move v5, v6

    move/from16 v6, v27

    :goto_1b
    const v9, 0x3b9aca00

    const/16 v11, 0xa

    :goto_1c
    if-lez v11, :cond_1f

    if-lt v10, v9, :cond_1e

    goto :goto_1d

    .line 56
    :cond_1e
    div-int/lit8 v9, v9, 0xa

    add-int/lit8 v11, v11, -0x1

    goto :goto_1c

    :cond_1f
    :goto_1d
    add-int/2addr v5, v11

    add-int/lit8 v9, v5, -0x1

    const/4 v12, -0x3

    if-lt v9, v12, :cond_21

    const/4 v12, 0x7

    if-lt v9, v12, :cond_20

    goto :goto_1e

    :cond_20
    const/4 v12, 0x0

    goto :goto_1f

    :cond_21
    :goto_1e
    const/4 v12, 0x1

    :goto_1f
    if-eqz v3, :cond_22

    if-nez v4, :cond_22

    add-int/lit8 v10, v10, -0x1

    :cond_22
    const/4 v3, 0x0

    .line 57
    :goto_20
    div-int/lit8 v13, v10, 0xa

    div-int/lit8 v14, v2, 0xa

    if-le v13, v14, :cond_25

    const/16 v15, 0x64

    if-ge v10, v15, :cond_23

    if-eqz v12, :cond_23

    goto :goto_22

    .line 58
    :cond_23
    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_24

    const/4 v1, 0x1

    goto :goto_21

    :cond_24
    const/4 v1, 0x0

    :goto_21
    and-int/2addr v8, v1

    .line 59
    rem-int/lit8 v1, v21, 0xa

    .line 60
    div-int/lit8 v21, v21, 0xa

    add-int/lit8 v3, v3, 0x1

    move v10, v13

    move v2, v14

    goto :goto_20

    :cond_25
    :goto_22
    if-eqz v8, :cond_27

    if-eqz v4, :cond_27

    .line 61
    :goto_23
    rem-int/lit8 v13, v2, 0xa

    if-nez v13, :cond_27

    const/16 v13, 0x64

    if-ge v10, v13, :cond_26

    if-eqz v12, :cond_26

    goto :goto_24

    .line 62
    :cond_26
    div-int/lit8 v10, v10, 0xa

    .line 63
    rem-int/lit8 v1, v21, 0xa

    .line 64
    div-int/lit8 v21, v21, 0xa

    .line 65
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_27
    :goto_24
    move/from16 v10, v21

    const/4 v13, 0x5

    if-eqz v6, :cond_28

    if-ne v1, v13, :cond_28

    .line 66
    rem-int/lit8 v6, v10, 0x2

    if-nez v6, :cond_28

    const/4 v1, 0x4

    :cond_28
    if-ne v10, v2, :cond_29

    if-eqz v8, :cond_2a

    if-eqz v4, :cond_2a

    :cond_29
    if-lt v1, v13, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    goto :goto_25

    :cond_2b
    const/4 v1, 0x0

    :goto_25
    add-int/2addr v10, v1

    sub-int/2addr v11, v3

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    .line 67
    aput-char v1, p1, p2

    goto :goto_26

    :cond_2c
    move/from16 v0, p2

    :goto_26
    if-eqz v12, :cond_31

    :goto_27
    add-int/lit8 v1, v11, -0x1

    if-ge v7, v1, :cond_2d

    .line 68
    rem-int/lit8 v1, v10, 0xa

    .line 69
    div-int/lit8 v10, v10, 0xa

    add-int v2, v0, v11

    sub-int/2addr v2, v7

    const/16 v3, 0x30

    add-int/2addr v1, v3

    int-to-char v1, v1

    .line 70
    aput-char v1, p1, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_2d
    const/16 v1, 0xa

    const/16 v3, 0x30

    .line 71
    rem-int/2addr v10, v1

    add-int/2addr v10, v3

    int-to-char v1, v10

    aput-char v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 72
    aput-char v2, p1, v1

    add-int/lit8 v1, v11, 0x1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    if-ne v11, v0, :cond_2e

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x30

    .line 73
    aput-char v2, p1, v1

    move v1, v0

    :cond_2e
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x45

    .line 74
    aput-char v2, p1, v1

    if-gez v9, :cond_2f

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x2d

    .line 75
    aput-char v2, p1, v0

    neg-int v9, v9

    move v0, v1

    :cond_2f
    const/16 v1, 0xa

    if-lt v9, v1, :cond_30

    add-int/lit8 v1, v0, 0x1

    .line 76
    div-int/lit8 v2, v9, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v0

    move v0, v1

    goto :goto_28

    :cond_30
    const/16 v3, 0x30

    :goto_28
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    .line 77
    rem-int/2addr v9, v2

    add-int/2addr v9, v3

    int-to-char v2, v9

    aput-char v2, p1, v0

    goto/16 :goto_2f

    :cond_31
    const/16 v3, 0x30

    if-gez v9, :cond_33

    add-int/lit8 v1, v0, 0x1

    .line 78
    aput-char v3, p1, v0

    const/4 v2, 0x2

    add-int/2addr v0, v2

    const/16 v2, 0x2e

    .line 79
    aput-char v2, p1, v1

    const/4 v1, -0x1

    :goto_29
    if-le v1, v9, :cond_32

    add-int/lit8 v2, v0, 0x1

    .line 80
    aput-char v3, p1, v0

    add-int/lit8 v1, v1, -0x1

    move v0, v2

    goto :goto_29

    :cond_32
    move v1, v0

    :goto_2a
    if-ge v7, v11, :cond_39

    const/4 v2, 0x1

    .line 81
    invoke-static {v0, v11, v7, v2}, La/e;->g(IIII)I

    move-result v5

    .line 82
    rem-int/lit8 v2, v10, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v5

    const/16 v2, 0xa

    .line 83
    div-int/2addr v10, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0x30

    goto :goto_2a

    :cond_33
    if-lt v5, v11, :cond_36

    :goto_2b
    if-ge v7, v11, :cond_34

    const/4 v1, 0x1

    .line 84
    invoke-static {v0, v11, v7, v1}, La/e;->g(IIII)I

    move-result v2

    .line 85
    rem-int/lit8 v1, v10, 0xa

    const/16 v3, 0x30

    add-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p1, v2

    const/16 v1, 0xa

    .line 86
    div-int/2addr v10, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_34
    add-int/2addr v0, v11

    :goto_2c
    if-ge v11, v5, :cond_35

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    .line 87
    aput-char v2, p1, v0

    add-int/lit8 v11, v11, 0x1

    move v0, v1

    goto :goto_2c

    :cond_35
    const/16 v2, 0x30

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x2e

    .line 88
    aput-char v3, p1, v0

    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 89
    aput-char v2, p1, v1

    move v1, v0

    goto :goto_2f

    :cond_36
    add-int/lit8 v1, v0, 0x1

    :goto_2d
    if-ge v7, v11, :cond_38

    sub-int v2, v11, v7

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v2, v9, :cond_37

    .line 90
    invoke-static {v1, v11, v7, v3}, La/e;->g(IIII)I

    move-result v2

    const/16 v5, 0x2e

    .line 91
    aput-char v5, p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_37
    const/16 v5, 0x2e

    .line 92
    :goto_2e
    invoke-static {v1, v11, v7, v3}, La/e;->g(IIII)I

    move-result v2

    .line 93
    rem-int/lit8 v6, v10, 0xa

    const/16 v4, 0x30

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, p1, v2

    const/16 v2, 0xa

    .line 94
    div-int/2addr v10, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_38
    const/4 v3, 0x1

    add-int/2addr v11, v3

    add-int v1, v11, v0

    :cond_39
    :goto_2f
    sub-int v1, v1, p2

    return v1
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xf

    .line 1
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p0

    .line 3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
