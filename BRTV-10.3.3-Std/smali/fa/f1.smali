.class public final Lfa/f1;
.super Lfa/p;
.source "MyApplication"


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public final g:Landroidx/fragment/app/FragmentActivity;

.field public final h:Landroid/util/SparseArray;

.field public final i:Ljava/util/ArrayList;

.field public j:I

.field public final k:Landroidx/mediarouter/app/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Zcop84pQ5BlywSzEjFrj\n"

    .line 2
    .line 3
    const-string v1, "M6VNtPg/kWk=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/f1;->l:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lfa/p;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lfa/f1;->j:I

    .line 21
    .line 22
    iput-object p2, p0, Lfa/f1;->g:Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    iput-object p3, p0, Lfa/f1;->k:Landroidx/mediarouter/app/c;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-ge p2, p3, :cond_0

    .line 32
    .line 33
    iget-object p3, p0, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lorg/bitspark/android/beans/Group;

    .line 44
    .line 45
    invoke-virtual {p3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-ge v0, p3, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object p1, p0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    check-cast p1, Lfa/e1;

    .line 5
    .line 6
    iget v3, p0, Lfa/p;->a:I

    .line 7
    .line 8
    if-ne p2, v3, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget v4, p0, Lfa/p;->b:I

    .line 16
    .line 17
    :cond_1
    iget-object v4, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v6, "lG0ADy0fn8adcQoWED2HndM=\n"

    .line 40
    .line 41
    const-string v7, "8x9vel1c96c=\n"

    .line 42
    .line 43
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v6, p0, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v7, "CvDfMczm+1AQtw==\n"

    .line 60
    .line 61
    const-string v8, "KpetXrmWsjQ=\n"

    .line 62
    .line 63
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v7, "m/YIvdFcq8nW9EDy\n"

    .line 74
    .line 75
    const-string v8, "u5F60qQs5ag=\n"

    .line 76
    .line 77
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lorg/bitspark/android/beans/Group;

    .line 89
    .line 90
    iget-object v7, v7, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    sget-boolean v7, Lorg/bitspark/android/utils/m;->b:Z

    .line 100
    .line 101
    sget-object v7, Lfa/f1;->l:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v7, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lorg/bitspark/android/beans/Group;

    .line 111
    .line 112
    iget-object v5, v5, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 113
    .line 114
    const-string v7, "WzJ0Iw==\n"

    .line 115
    .line 116
    const-string v8, "dRgoDLS12v4=\n"

    .line 117
    .line 118
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-string v8, ""

    .line 123
    .line 124
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Lorg/bitspark/android/beans/Group;

    .line 133
    .line 134
    iget-object v7, v7, Lorg/bitspark/android/beans/Group;->url:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v8, p1, Lfa/e1;->a:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Lorg/bitspark/android/beans/Group;

    .line 146
    .line 147
    iget-boolean v9, v9, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 148
    .line 149
    if-eqz v9, :cond_3

    .line 150
    .line 151
    sget-boolean v6, Lorg/bitspark/android/Spark;->c2:Z

    .line 152
    .line 153
    if-eqz v6, :cond_2

    .line 154
    .line 155
    const v6, 0x7f0f001e

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    const v6, 0x7f0f001f

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    check-cast v6, Lorg/bitspark/android/beans/Group;

    .line 174
    .line 175
    iget v6, v6, Lorg/bitspark/android/beans/Group;->type:I

    .line 176
    .line 177
    const/4 v9, -0x5

    .line 178
    if-ne v6, v9, :cond_4

    .line 179
    .line 180
    const v6, 0x7f0f001d

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_4
    const/16 v6, 0x8

    .line 188
    .line 189
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :goto_1
    iget-object v6, p1, Lfa/e1;->b:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p1, Lfa/e1;->c:Landroid/widget/ImageView;

    .line 201
    .line 202
    if-eqz v3, :cond_6

    .line 203
    .line 204
    iget v3, p0, Lfa/p;->b:I

    .line 205
    .line 206
    const/high16 v5, 0x3f800000    # 1.0f

    .line 207
    .line 208
    if-ltz v3, :cond_5

    .line 209
    .line 210
    const v3, 0x7f0f0082

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    .line 215
    .line 216
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    .line 218
    const v3, 0x7f0b038c

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    const-string p2, "PVtRe7g8\n"

    .line 235
    .line 236
    const-string v3, "TjgwF91kdgo=\n"

    .line 237
    .line 238
    invoke-static {p2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    new-array v3, v2, [F

    .line 243
    .line 244
    fill-array-data v3, :array_0

    .line 245
    .line 246
    .line 247
    invoke-static {v6, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    const-wide/16 v8, 0xdc

    .line 252
    .line 253
    invoke-virtual {p2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    .line 255
    .line 256
    const-string v3, "ejbFJBWk\n"

    .line 257
    .line 258
    const-string v5, "CVWkSHD90Fg=\n"

    .line 259
    .line 260
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    new-array v5, v2, [F

    .line 265
    .line 266
    fill-array-data v5, :array_1

    .line 267
    .line 268
    .line 269
    invoke-static {v6, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    .line 275
    .line 276
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 277
    .line 278
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 279
    .line 280
    .line 281
    new-array v8, v2, [Landroid/animation/Animator;

    .line 282
    .line 283
    aput-object p2, v8, v1

    .line 284
    .line 285
    aput-object v3, v8, v0

    .line 286
    .line 287
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 288
    .line 289
    .line 290
    const-string p2, "sT5CE/Y+\n"

    .line 291
    .line 292
    const-string v3, "wl0jf5NmkJk=\n"

    .line 293
    .line 294
    invoke-static {p2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    new-array v3, v2, [F

    .line 299
    .line 300
    fill-array-data v3, :array_2

    .line 301
    .line 302
    .line 303
    invoke-static {v6, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    const-wide/16 v8, 0x64

    .line 308
    .line 309
    invoke-virtual {p2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 310
    .line 311
    .line 312
    const-string v3, "iL1AmgyM\n"

    .line 313
    .line 314
    const-string v10, "+94h9mnVKx4=\n"

    .line 315
    .line 316
    invoke-static {v3, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    new-array v10, v2, [F

    .line 321
    .line 322
    fill-array-data v10, :array_3

    .line 323
    .line 324
    .line 325
    invoke-static {v6, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 330
    .line 331
    .line 332
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 333
    .line 334
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 335
    .line 336
    .line 337
    new-array v9, v2, [Landroid/animation/Animator;

    .line 338
    .line 339
    aput-object p2, v9, v1

    .line 340
    .line 341
    aput-object v3, v9, v0

    .line 342
    .line 343
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 344
    .line 345
    .line 346
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 347
    .line 348
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 349
    .line 350
    .line 351
    new-array v2, v2, [Landroid/animation/Animator;

    .line 352
    .line 353
    aput-object v5, v2, v1

    .line 354
    .line 355
    aput-object v8, v2, v0

    .line 356
    .line 357
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 361
    .line 362
    .line 363
    new-instance p2, Lorg/bitspark/android/utils/n;

    .line 364
    .line 365
    invoke-direct {p2, v6}, Lorg/bitspark/android/utils/n;-><init>(Landroid/widget/TextView;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    .line 370
    .line 371
    goto :goto_2

    .line 372
    :cond_5
    const v0, 0x7f0f0083

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleY(F)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleX(F)V

    .line 382
    .line 383
    .line 384
    :goto_2
    const/4 p2, -0x1

    .line 385
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    .line 387
    .line 388
    iget p2, p0, Lfa/f1;->j:I

    .line 389
    .line 390
    iget v0, p0, Lfa/p;->a:I

    .line 391
    .line 392
    if-eq p2, v0, :cond_7

    .line 393
    .line 394
    iget-object p2, p0, Lfa/f1;->k:Landroidx/mediarouter/app/c;

    .line 395
    .line 396
    const/4 v0, 0x3

    .line 397
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    .line 399
    .line 400
    invoke-static {p2, v0, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    .line 406
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .line 408
    .line 409
    iget p2, p0, Lfa/p;->a:I

    .line 410
    .line 411
    iput p2, p0, Lfa/f1;->j:I

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_6
    const v0, -0x70000001

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    .line 422
    .line 423
    :cond_7
    :goto_3
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 424
    .line 425
    new-instance v0, Lfa/c1;

    .line 426
    .line 427
    invoke-direct {v0, p0, v4, p1}, Lfa/c1;-><init>(Lfa/f1;ILfa/e1;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    nop

    .line 435
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_2
    .array-data 4
        0x3fa00000    # 1.25f
        0x3f8ccccd    # 1.1f
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_3
    .array-data 4
        0x3fa00000    # 1.25f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e012a

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lfa/e1;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b01c3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p2, Lfa/e1;->a:Landroid/widget/ImageView;

    .line 24
    .line 25
    const v0, 0x7f0b01bd

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p2, Lfa/e1;->b:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0b0454

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object v0, p2, Lfa/e1;->c:Landroid/widget/ImageView;

    .line 46
    .line 47
    const v0, 0x7f0b0379

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p2, Lfa/e1;->d:Landroid/view/View;

    .line 55
    .line 56
    return-object p2
.end method
