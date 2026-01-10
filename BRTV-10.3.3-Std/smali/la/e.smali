.class public Lla/e;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public U:Landroid/widget/Button;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/TextView;

.field public e0:Z

.field public f0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lla/e;->e0:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    invoke-super {p0}, Le8/a;->B()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lla/e;->e0:Z

    .line 6
    .line 7
    const-string v0, "wsqAuDGfGh3a\n"

    .line 8
    .line 9
    const-string v1, "rqXn0V/NaXE=\n"

    .line 10
    .line 11
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ju5AVSQ2XB4=\n"

    .line 16
    .line 17
    const-string v2, "4YASMFdDMXs=\n"

    .line 18
    .line 19
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lla/e;->R()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    sget-boolean v0, Lea/h;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lla/e;->U:Landroid/widget/Button;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lla/e;->U:Landroid/widget/Button;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-boolean v0, Lea/h;->e:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lla/e;->U:Landroid/widget/Button;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final R()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "mrb0yimc1/ui\n"

    .line 4
    .line 5
    const-string v3, "1tmTo0fOpJc=\n"

    .line 6
    .line 7
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "4pXC+XDbjAbYk8vhC4bH\n"

    .line 12
    .line 13
    const-string v4, "kf2tjiWo6XQ=\n"

    .line 14
    .line 15
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Lla/e;->e0:Z

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string v0, "YjVFRXnAXhZa\n"

    .line 29
    .line 30
    const-string v1, "LloiLBeSLXo=\n"

    .line 31
    .line 32
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "WETGHzE+cshQRtwOdCg32kRYwQ==\n"

    .line 37
    .line 38
    const-string v2, "MSqva1RaUq4=\n"

    .line 39
    .line 40
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-object v2, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 49
    .line 50
    if-eqz v2, :cond_b

    .line 51
    .line 52
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 53
    .line 54
    if-eqz v2, :cond_b

    .line 55
    .line 56
    iget-object v3, p0, Lla/e;->V:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lla/e;->W:Landroid/widget/TextView;

    .line 64
    .line 65
    sget-object v3, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 66
    .line 67
    iget-object v3, v3, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 68
    .line 69
    iget-object v3, v3, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->reseller:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lla/e;->Y:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const v4, 0x7f06032c

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    sget-object v2, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 91
    .line 92
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 93
    .line 94
    if-eqz v2, :cond_9

    .line 95
    .line 96
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo$UserBean;->user_name:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    sget-object v2, Lea/g;->b:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/4 v3, 0x2

    .line 111
    if-ne v2, v3, :cond_1

    .line 112
    .line 113
    iget-object v2, p0, Lla/e;->X:Landroid/widget/TextView;

    .line 114
    .line 115
    const-string v3, "uDVYQCUtZEE=\n"

    .line 116
    .line 117
    const-string v4, "+mcMFgV7LRE=\n"

    .line 118
    .line 119
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lla/e;->X:Landroid/widget/TextView;

    .line 128
    .line 129
    sget-object v3, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 130
    .line 131
    iget-object v3, v3, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 132
    .line 133
    iget-object v3, v3, Lorg/bitspark/android/beans/AuthInfo$UserBean;->user_name:Ljava/lang/String;

    .line 134
    .line 135
    sget-object v4, Lea/h;->d:Ljava/lang/String;

    .line 136
    .line 137
    const-string v5, ""

    .line 138
    .line 139
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    :goto_0
    iget-object v2, p0, Lla/e;->X:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const v3, 0x7f1201e2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    sget-object v3, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 163
    .line 164
    iget-object v3, v3, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 165
    .line 166
    iget v3, v3, Lorg/bitspark/android/beans/AuthInfo$UserBean;->user_status:I

    .line 167
    .line 168
    const/4 v4, -0x1

    .line 169
    if-ne v3, v4, :cond_3

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const v3, 0x7f1201e3

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    goto :goto_1

    .line 183
    :cond_3
    if-nez v3, :cond_4

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const v3, 0x7f1201e1

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iget-object v3, p0, Lla/e;->Y:Landroid/widget/TextView;

    .line 197
    .line 198
    const/high16 v4, -0x10000

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_1
    iget-object v3, p0, Lla/e;->Y:Landroid/widget/TextView;

    .line 204
    .line 205
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    sget-object v2, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 209
    .line 210
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 211
    .line 212
    iget-wide v2, v2, Lorg/bitspark/android/beans/AuthInfo$UserBean;->EndTime:J

    .line 213
    .line 214
    const-wide/16 v4, 0x0

    .line 215
    .line 216
    cmp-long v6, v2, v4

    .line 217
    .line 218
    if-lez v6, :cond_8

    .line 219
    .line 220
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 221
    .line 222
    const-string v3, "RQgAkgQy0mxYFQ==\n"

    .line 223
    .line 224
    const-string v4, "PHF56yl/n0E=\n"

    .line 225
    .line 226
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lla/e;->Z:Landroid/widget/TextView;

    .line 238
    .line 239
    sget-object v4, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 240
    .line 241
    iget-object v4, v4, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 242
    .line 243
    iget-wide v4, v4, Lorg/bitspark/android/beans/AuthInfo$UserBean;->EndTime:J

    .line 244
    .line 245
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    sget-object v2, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 257
    .line 258
    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo;->user:Lorg/bitspark/android/beans/AuthInfo$UserBean;

    .line 259
    .line 260
    iget-wide v2, v2, Lorg/bitspark/android/beans/AuthInfo$UserBean;->EndTime:J

    .line 261
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 263
    .line 264
    .line 265
    move-result-wide v4

    .line 266
    sget-wide v6, Lorg/bitspark/android/utils/m;->a:J

    .line 267
    .line 268
    add-long/2addr v4, v6

    .line 269
    sub-long/2addr v2, v4

    .line 270
    const-wide/16 v4, 0xe10

    .line 271
    .line 272
    div-long/2addr v2, v4

    .line 273
    const-wide/16 v4, 0x3e8

    .line 274
    .line 275
    div-long/2addr v2, v4

    .line 276
    const-wide/16 v4, 0x18

    .line 277
    .line 278
    div-long v6, v2, v4

    .line 279
    .line 280
    long-to-int v7, v6

    .line 281
    rem-long/2addr v2, v4

    .line 282
    long-to-int v3, v2

    .line 283
    if-gez v7, :cond_5

    .line 284
    .line 285
    const/4 v7, 0x0

    .line 286
    :cond_5
    if-gez v3, :cond_6

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    :cond_6
    if-nez v7, :cond_7

    .line 290
    .line 291
    iget-object v2, p0, Lla/e;->b0:Landroid/widget/TextView;

    .line 292
    .line 293
    const v4, 0x7f1201ce

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v4}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    new-array v5, v1, [Ljava/lang/Object;

    .line 305
    .line 306
    aput-object v3, v5, v0

    .line 307
    .line 308
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_7
    iget-object v2, p0, Lla/e;->b0:Landroid/widget/TextView;

    .line 317
    .line 318
    const v3, 0x7f1201cd

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v3}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    new-array v5, v1, [Ljava/lang/Object;

    .line 330
    .line 331
    aput-object v4, v5, v0

    .line 332
    .line 333
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_8
    iget-object v0, p0, Lla/e;->Z:Landroid/widget/TextView;

    .line 342
    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const v3, 0x7f1201ad

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    :cond_9
    :goto_2
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 358
    .line 359
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 360
    .line 361
    iget v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->type:I

    .line 362
    .line 363
    if-ne v0, v1, :cond_a

    .line 364
    .line 365
    iget-object v0, p0, Lla/e;->b0:Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    const v2, 0x7f1200ac

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    :cond_a
    iget-object v0, p0, Lla/e;->c0:Landroid/widget/TextView;

    .line 382
    .line 383
    sget-object v1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 384
    .line 385
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 386
    .line 387
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->telephone:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lla/e;->d0:Landroid/widget/TextView;

    .line 393
    .line 394
    sget-object v1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 395
    .line 396
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 397
    .line 398
    iget-object v1, v1, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->website:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .line 402
    .line 403
    :cond_b
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0b027a

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->J0()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_5

    .line 16
    .line 17
    const v1, 0x7f0b027a

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x13

    .line 24
    .line 25
    if-eq p2, v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x14

    .line 28
    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lla/e;->U:Landroid/widget/Button;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lla/e;->U:Landroid/widget/Button;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    const/16 v0, 0x15

    .line 43
    .line 44
    if-eq p2, v0, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/16 v0, 0x16

    .line 51
    .line 52
    if-ne p2, v0, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 60
    .line 61
    iget-object p2, p1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    iget-object p2, p1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 72
    .line 73
    invoke-static {p2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 79
    .line 80
    .line 81
    :cond_4
    return v2

    .line 82
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lka/b;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p2, 0x7f0e0120

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0b027a

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/Button;

    .line 17
    .line 18
    iput-object p2, p0, Lla/e;->U:Landroid/widget/Button;

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lla/e;->U:Landroid/widget/Button;

    .line 24
    .line 25
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0b03b6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p2, p0, Lla/e;->V:Landroid/widget/TextView;

    .line 38
    .line 39
    const p2, 0x7f0b036d

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p2, p0, Lla/e;->W:Landroid/widget/TextView;

    .line 49
    .line 50
    const p2, 0x7f0b0466

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p2, p0, Lla/e;->X:Landroid/widget/TextView;

    .line 60
    .line 61
    const p2, 0x7f0b0461

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p2, p0, Lla/e;->Y:Landroid/widget/TextView;

    .line 71
    .line 72
    const p2, 0x7f0b0190

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object p2, p0, Lla/e;->Z:Landroid/widget/TextView;

    .line 82
    .line 83
    const p2, 0x7f0b018f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p2, p0, Lla/e;->b0:Landroid/widget/TextView;

    .line 93
    .line 94
    const p2, 0x7f0b033e

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object p2, p0, Lla/e;->c0:Landroid/widget/TextView;

    .line 104
    .line 105
    const p2, 0x7f0b049f

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object p2, p0, Lla/e;->d0:Landroid/widget/TextView;

    .line 115
    .line 116
    const p2, 0x7f0b03ba

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iput-object p2, p0, Lla/e;->f0:Landroid/view/View;

    .line 124
    .line 125
    sget-boolean p3, Lea/h;->B:Z

    .line 126
    .line 127
    const/16 v0, 0x8

    .line 128
    .line 129
    if-nez p3, :cond_0

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :cond_0
    sget-boolean p2, Lea/h;->e:Z

    .line 135
    .line 136
    if-nez p2, :cond_1

    .line 137
    .line 138
    iget-object p2, p0, Lla/e;->U:Landroid/widget/Button;

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lla/e;->V:Landroid/widget/TextView;

    .line 144
    .line 145
    const/4 p3, 0x1

    .line 146
    invoke-virtual {p2, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lla/e;->V:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    return-object p1
.end method
