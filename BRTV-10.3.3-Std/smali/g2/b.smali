.class public final Lg2/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lg2/g;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/net/Uri;

.field public final c:Lm2/m;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lm2/m;I)V
    .locals 0

    .line 1
    iput p3, p0, Lg2/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg2/b;->b:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p2, p0, Lg2/b;->c:Lm2/m;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(La9/d;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x2

    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Ld2/f;->c:Ld2/f;

    .line 7
    .line 8
    iget-object v4, p0, Lg2/b;->c:Lm2/m;

    .line 9
    .line 10
    iget-object v5, p0, Lg2/b;->b:Landroid/net/Uri;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    iget v7, p0, Lg2/b;->a:I

    .line 14
    .line 15
    packed-switch v7, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v7, "Invalid android.resource URI: "

    .line 23
    .line 24
    if-eqz p1, :cond_f

    .line 25
    .line 26
    invoke-static {p1}, Lr9/f;->e0(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v8, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p1, v2

    .line 34
    :goto_0
    if-eqz p1, :cond_f

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-static {v8, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sub-int/2addr v1, v6

    .line 55
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v2, :cond_e

    .line 62
    .line 63
    invoke-static {v2}, Lr9/m;->L(Ljava/lang/String;)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_e

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v2, v4, Lm2/m;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :goto_2
    new-instance v7, Landroid/util/TypedValue;

    .line 99
    .line 100
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v1, v7, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 104
    .line 105
    .line 106
    iget-object v7, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 107
    .line 108
    const/4 v8, 0x6

    .line 109
    const/16 v9, 0x2f

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    invoke-static {v7, v9, v10, v8}, Lr9/f;->f0(Ljava/lang/CharSequence;CII)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-static {v8, v7}, Lr2/f;->b(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v8, "text/xml"

    .line 137
    .line 138
    invoke-static {v7, v8}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_d

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    const-string v7, "Invalid resource ID: "

    .line 153
    .line 154
    if-eqz p1, :cond_4

    .line 155
    .line 156
    invoke-static {v2, v1}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_3

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_3
    invoke-static {v1, v7}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_4
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    :goto_3
    if-eq v8, v0, :cond_5

    .line 186
    .line 187
    if-eq v8, v6, :cond_5

    .line 188
    .line 189
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    goto :goto_3

    .line 194
    :cond_5
    if-ne v8, v0, :cond_c

    .line 195
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    const/16 v8, 0x18

    .line 199
    .line 200
    if-ge v0, v8, :cond_7

    .line 201
    .line 202
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v8, "vector"

    .line 207
    .line 208
    invoke-static {v0, v8}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-eqz v8, :cond_6

    .line 213
    .line 214
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    new-instance v7, Lz1/n;

    .line 223
    .line 224
    invoke-direct {v7}, Lz1/n;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v5, p1, v0, v1}, Lz1/n;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 228
    .line 229
    .line 230
    :goto_4
    move-object p1, v7

    .line 231
    goto :goto_5

    .line 232
    :cond_6
    const-string v8, "animated-vector"

    .line 233
    .line 234
    invoke-static {v0, v8}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v7, Lz1/c;

    .line 249
    .line 250
    invoke-direct {v7, v2}, Lz1/c;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v5, p1, v0, v1}, Lz1/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget-object v0, Le0/n;->a:Ljava/lang/ThreadLocal;

    .line 262
    .line 263
    invoke-static {v5, v1, p1}, Le0/i;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz p1, :cond_b

    .line 268
    .line 269
    :goto_5
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    .line 270
    .line 271
    if-nez v0, :cond_9

    .line 272
    .line 273
    instance-of v0, p1, Lz1/n;

    .line 274
    .line 275
    if-eqz v0, :cond_8

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_8
    const/4 v6, 0x0

    .line 279
    :cond_9
    :goto_6
    new-instance v0, Lg2/d;

    .line 280
    .line 281
    if-eqz v6, :cond_a

    .line 282
    .line 283
    iget-object v1, v4, Lm2/m;->b:Landroid/graphics/Bitmap$Config;

    .line 284
    .line 285
    iget-object v5, v4, Lm2/m;->d:Ln2/h;

    .line 286
    .line 287
    iget-object v7, v4, Lm2/m;->e:Ln2/g;

    .line 288
    .line 289
    iget-boolean v4, v4, Lm2/m;->f:Z

    .line 290
    .line 291
    invoke-static {p1, v1, v5, v7, v4}, Lu7/d;->d(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Ln2/h;Ln2/g;Z)Landroid/graphics/Bitmap;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 300
    .line 301
    invoke-direct {v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 302
    .line 303
    .line 304
    move-object p1, v2

    .line 305
    :cond_a
    invoke-direct {v0, p1, v6, v3}, Lg2/d;-><init>(Landroid/graphics/drawable/Drawable;ZLd2/f;)V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_b
    invoke-static {v1, v7}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_c
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 324
    .line 325
    const-string v0, "No start tag found."

    .line 326
    .line 327
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p1

    .line 331
    :cond_d
    new-instance p1, Landroid/util/TypedValue;

    .line 332
    .line 333
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v1, p1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    new-instance v1, Lg2/m;

    .line 341
    .line 342
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    new-instance v2, Ld2/o;

    .line 351
    .line 352
    iget p1, p1, Landroid/util/TypedValue;->density:I

    .line 353
    .line 354
    invoke-direct {v2, p1}, Ld2/o;-><init>(I)V

    .line 355
    .line 356
    .line 357
    new-instance p1, Ld2/p;

    .line 358
    .line 359
    invoke-direct {p1, v0, v2}, Ld2/p;-><init>(Lokio/BufferedSource;Ln5/d;)V

    .line 360
    .line 361
    .line 362
    invoke-direct {v1, p1, v7, v3}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 363
    .line 364
    .line 365
    move-object v0, v1

    .line 366
    :goto_7
    return-object v0

    .line 367
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 368
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw p1

    .line 385
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 386
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw p1

    .line 403
    :pswitch_0
    iget-object v1, v4, Lm2/m;->a:Landroid/content/Context;

    .line 404
    .line 405
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    const-string v8, "com.android.contacts"

    .line 414
    .line 415
    invoke-static {v7, v8}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    const-string v8, "\'."

    .line 420
    .line 421
    if-eqz v7, :cond_12

    .line 422
    .line 423
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    const-string v9, "display_photo"

    .line 428
    .line 429
    invoke-static {v7, v9}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-eqz v7, :cond_12

    .line 434
    .line 435
    const-string p1, "r"

    .line 436
    .line 437
    invoke-virtual {v1, v5, p1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    if-eqz p1, :cond_10

    .line 442
    .line 443
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    :cond_10
    if-eqz v2, :cond_11

    .line 448
    .line 449
    goto/16 :goto_c

    .line 450
    .line 451
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v0, "Unable to find a contact photo associated with \'"

    .line 454
    .line 455
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 469
    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v0

    .line 478
    :cond_12
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 479
    .line 480
    const/16 v9, 0x1d

    .line 481
    .line 482
    if-lt v7, v9, :cond_19

    .line 483
    .line 484
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    const-string v9, "media"

    .line 489
    .line 490
    invoke-static {v7, v9}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    if-nez v7, :cond_13

    .line 495
    .line 496
    goto/16 :goto_b

    .line 497
    .line 498
    :cond_13
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 503
    .line 504
    .line 505
    move-result v9

    .line 506
    if-lt v9, p1, :cond_19

    .line 507
    .line 508
    add-int/lit8 p1, v9, -0x3

    .line 509
    .line 510
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    const-string v10, "audio"

    .line 515
    .line 516
    invoke-static {p1, v10}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_19

    .line 521
    .line 522
    sub-int/2addr v9, v0

    .line 523
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    const-string v0, "albums"

    .line 528
    .line 529
    invoke-static {p1, v0}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result p1

    .line 533
    if-eqz p1, :cond_19

    .line 534
    .line 535
    iget-object p1, v4, Lm2/m;->d:Ln2/h;

    .line 536
    .line 537
    iget-object v0, p1, Ln2/h;->a:Lr4/b;

    .line 538
    .line 539
    instance-of v4, v0, Ln2/a;

    .line 540
    .line 541
    if-eqz v4, :cond_14

    .line 542
    .line 543
    check-cast v0, Ln2/a;

    .line 544
    .line 545
    goto :goto_8

    .line 546
    :cond_14
    move-object v0, v2

    .line 547
    :goto_8
    if-eqz v0, :cond_16

    .line 548
    .line 549
    iget-object p1, p1, Ln2/h;->b:Lr4/b;

    .line 550
    .line 551
    instance-of v4, p1, Ln2/a;

    .line 552
    .line 553
    if-eqz v4, :cond_15

    .line 554
    .line 555
    check-cast p1, Ln2/a;

    .line 556
    .line 557
    goto :goto_9

    .line 558
    :cond_15
    move-object p1, v2

    .line 559
    :goto_9
    if-eqz p1, :cond_16

    .line 560
    .line 561
    new-instance v4, Landroid/os/Bundle;

    .line 562
    .line 563
    invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 564
    .line 565
    .line 566
    new-instance v6, Landroid/graphics/Point;

    .line 567
    .line 568
    iget v0, v0, Ln2/a;->c:I

    .line 569
    .line 570
    iget p1, p1, Ln2/a;->c:I

    .line 571
    .line 572
    invoke-direct {v6, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 573
    .line 574
    .line 575
    const-string p1, "android.content.extra.SIZE"

    .line 576
    .line 577
    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 578
    .line 579
    .line 580
    goto :goto_a

    .line 581
    :cond_16
    move-object v4, v2

    .line 582
    :goto_a
    invoke-static {v1, v5, v4}, Landroidx/media3/exoplayer/mediacodec/i;->e(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    if-eqz p1, :cond_17

    .line 587
    .line 588
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    :cond_17
    if-eqz v2, :cond_18

    .line 593
    .line 594
    goto :goto_c

    .line 595
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string v0, "Unable to find a music thumbnail associated with \'"

    .line 598
    .line 599
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 613
    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v0

    .line 622
    :cond_19
    :goto_b
    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    if-eqz v2, :cond_1a

    .line 627
    .line 628
    :goto_c
    new-instance p1, Lg2/m;

    .line 629
    .line 630
    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    new-instance v2, Ld2/a;

    .line 639
    .line 640
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 641
    .line 642
    .line 643
    new-instance v4, Ld2/p;

    .line 644
    .line 645
    invoke-direct {v4, v0, v2}, Ld2/p;-><init>(Lokio/BufferedSource;Ln5/d;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-direct {p1, v4, v0, v3}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 653
    .line 654
    .line 655
    return-object p1

    .line 656
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    const-string v0, "Unable to open \'"

    .line 659
    .line 660
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 674
    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object p1

    .line 679
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v0

    .line 683
    :pswitch_1
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    invoke-static {p1, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    sub-int/2addr v0, v6

    .line 695
    if-gtz v0, :cond_1b

    .line 696
    .line 697
    sget-object p1, Lx8/r;->a:Lx8/r;

    .line 698
    .line 699
    :goto_d
    move-object v5, p1

    .line 700
    goto :goto_10

    .line 701
    :cond_1b
    if-ne v0, v6, :cond_1c

    .line 702
    .line 703
    invoke-static {p1}, Lx8/j;->Y(Ljava/util/List;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    invoke-static {p1}, La2/a;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    goto :goto_d

    .line 712
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .line 716
    .line 717
    instance-of v0, p1, Ljava/util/RandomAccess;

    .line 718
    .line 719
    if-eqz v0, :cond_1d

    .line 720
    .line 721
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    const/4 v2, 0x1

    .line 726
    :goto_e
    if-ge v2, v0, :cond_1e

    .line 727
    .line 728
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    add-int/2addr v2, v6

    .line 736
    goto :goto_e

    .line 737
    :cond_1d
    invoke-interface {p1, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 738
    .line 739
    .line 740
    move-result-object p1

    .line 741
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_1e

    .line 746
    .line 747
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    goto :goto_f

    .line 755
    :cond_1e
    move-object v5, v1

    .line 756
    :goto_10
    const/4 v8, 0x0

    .line 757
    const/4 v9, 0x0

    .line 758
    const-string v6, "/"

    .line 759
    .line 760
    const/4 v7, 0x0

    .line 761
    const/16 v10, 0x3e

    .line 762
    .line 763
    invoke-static/range {v5 .. v10}, Lx8/j;->X(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqa/b;I)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object p1

    .line 767
    new-instance v0, Lg2/m;

    .line 768
    .line 769
    iget-object v1, v4, Lm2/m;->a:Landroid/content/Context;

    .line 770
    .line 771
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    new-instance v2, Ld2/a;

    .line 788
    .line 789
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 790
    .line 791
    .line 792
    new-instance v4, Ld2/p;

    .line 793
    .line 794
    invoke-direct {v4, v1, v2}, Ld2/p;-><init>(Lokio/BufferedSource;Ln5/d;)V

    .line 795
    .line 796
    .line 797
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-static {v1, p1}, Lr2/f;->b(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object p1

    .line 805
    invoke-direct {v0, v4, p1, v3}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 806
    .line 807
    .line 808
    return-object v0

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
