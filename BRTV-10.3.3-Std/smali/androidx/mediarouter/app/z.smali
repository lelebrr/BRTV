.class public final Landroidx/mediarouter/app/z;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/z;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/mediarouter/app/z;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/mediarouter/app/z;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/mediarouter/app/z;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/mediarouter/app/z;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget v4, p0, Landroidx/mediarouter/app/z;->a:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lma/a;

    .line 13
    .line 14
    iget-object v0, v3, Lma/a;->e:Lna/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v2, Lt3/d;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v0, v0, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v3, Lma/a;->g:Lna/a;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 34
    .line 35
    iget-object v0, v0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->i:Lna/b;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    instance-of v0, p1, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_0
    const-string v0, "RU9fCoGN\n"

    .line 56
    .line 57
    const-string v1, "eHJiYeT0gfM=\n"

    .line 58
    .line 59
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ""

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :pswitch_0
    check-cast v3, Lfa/x;

    .line 85
    .line 86
    iget-object p1, v3, Lfa/x;->d:Lea/k;

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    check-cast v2, Lfa/w;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->getBindingAdapterPosition()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/4 v2, -0x1

    .line 97
    if-eq p1, v2, :cond_6

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    :goto_1
    iget-object v4, v3, Lfa/x;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-ge v2, v4, :cond_4

    .line 107
    .line 108
    iget-object v4, v3, Lfa/x;->c:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lorg/bitspark/android/beans/Menu;

    .line 115
    .line 116
    if-ne v2, p1, :cond_3

    .line 117
    .line 118
    const/4 v5, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 v5, 0x0

    .line 121
    :goto_2
    invoke-virtual {v4, v5}, Lorg/bitspark/android/beans/Menu;->setSelected(Z)V

    .line 122
    .line 123
    .line 124
    add-int/2addr v2, v1

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 127
    .line 128
    .line 129
    iget-object v1, v3, Lfa/x;->c:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ge p1, v1, :cond_6

    .line 136
    .line 137
    iget-object v1, v3, Lfa/x;->d:Lea/k;

    .line 138
    .line 139
    iget-object v2, v3, Lfa/x;->c:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lorg/bitspark/android/beans/Menu;

    .line 146
    .line 147
    iget-object v1, v1, Lea/k;->b:Lorg/bitspark/android/Spark;

    .line 148
    .line 149
    iput-boolean v0, v1, Lorg/bitspark/android/Spark;->G0:Z

    .line 150
    .line 151
    iget-object v1, v1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 152
    .line 153
    iget-object v1, v1, Lta/a;->C:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lra/f;->a()V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-boolean v0, v1, Lra/f;->h:Z

    .line 170
    .line 171
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 176
    .line 177
    if-nez v1, :cond_5

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    iget-boolean v2, v0, Lra/f;->g:Z

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v3, v0, Lra/f;->l:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v1, v2, p1, v3}, Lra/f;->e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_3
    return-void

    .line 192
    :pswitch_1
    check-cast v3, Lorg/bitspark/android/Spark;

    .line 193
    .line 194
    iget-boolean p1, v3, Lorg/bitspark/android/Spark;->o0:Z

    .line 195
    .line 196
    const/16 v4, 0x8

    .line 197
    .line 198
    if-eqz p1, :cond_b

    .line 199
    .line 200
    iget-object p1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 201
    .line 202
    iget-object p1, p1, Lta/a;->d:Landroidx/lifecycle/d0;

    .line 203
    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {p1, v5}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    const-string p1, "OHp0y8+DbOgudX/W2pA=\n"

    .line 212
    .line 213
    const-string v5, "ayorj4rVJas=\n"

    .line 214
    .line 215
    invoke-static {p1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v1, p1}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lorg/bitspark/android/utils/b;->c()Lorg/bitspark/android/utils/b;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    :try_start_0
    sget-object p1, Lx4/b;->d:Lx4/b;

    .line 230
    .line 231
    sget v5, Lx4/c;->a:I

    .line 232
    .line 233
    invoke-virtual {p1, v3, v5}, Lx4/c;->b(Landroid/content/Context;I)I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_7

    .line 238
    .line 239
    const/4 p1, 0x1

    .line 240
    goto :goto_4

    .line 241
    :cond_7
    const/4 p1, 0x0

    .line 242
    :goto_4
    const-string v5, "IB4kKbOUaq8vFGdmup93pyoVZ2C5iCurIgI9KbKJZKUmBiZ1v9VhsS0QJG6gng==\n"

    .line 243
    .line 244
    const-string v6, "Q3FJB9T7Bcg=\n"

    .line 245
    .line 246
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-static {v3, v5, v0}, Ln5/c;->b(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 251
    .line 252
    .line 253
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    if-lez v5, :cond_8

    .line 255
    .line 256
    const/4 v5, 0x1

    .line 257
    goto :goto_5

    .line 258
    :cond_8
    const/4 v5, 0x0

    .line 259
    :goto_5
    if-eqz p1, :cond_9

    .line 260
    .line 261
    if-eqz v5, :cond_9

    .line 262
    .line 263
    const/4 v0, 0x1

    .line 264
    goto :goto_6

    .line 265
    :catch_0
    move-exception p1

    .line 266
    const-string v1, "jYG9m7UnZg6NnpuUqgM=\n"

    .line 267
    .line 268
    const-string v5, "5PL69sZmEG8=\n"

    .line 269
    .line 270
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    sget-boolean v5, Lorg/bitspark/android/utils/m;->b:Z

    .line 279
    .line 280
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    .line 284
    .line 285
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 286
    .line 287
    :cond_a
    iget-object p1, v3, Lorg/bitspark/android/Spark;->E0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 288
    .line 289
    invoke-virtual {p1, v4}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    iget-object p1, v3, Lorg/bitspark/android/Spark;->T1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 293
    .line 294
    invoke-virtual {p1, v4}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_b
    iget-object p1, v3, Lorg/bitspark/android/Spark;->E0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 299
    .line 300
    invoke-virtual {p1, v4}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    iget-object p1, v3, Lorg/bitspark/android/Spark;->T1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 304
    .line 305
    invoke-virtual {p1, v4}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    iget-object p1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 309
    .line 310
    iget-object p1, p1, Lta/a;->d:Landroidx/lifecycle/d0;

    .line 311
    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {p1, v1}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    const-string p1, "4IQVbel5NCL2ix5w/Go=\n"

    .line 320
    .line 321
    const-string v1, "s9RKKawvfWE=\n"

    .line 322
    .line 323
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {v0, p1}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_7
    check-cast v2, Landroid/app/Dialog;

    .line 331
    .line 332
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 333
    .line 334
    .line 335
    iget-object p1, v3, Lorg/bitspark/android/Spark;->T:Lga/m;

    .line 336
    .line 337
    invoke-virtual {p1}, Lga/m;->h()V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_2
    check-cast v3, Landroidx/mediarouter/app/a0;

    .line 342
    .line 343
    iget-object p1, v3, Landroidx/mediarouter/app/a0;->e:Landroidx/mediarouter/app/b0;

    .line 344
    .line 345
    iget-object p1, p1, Landroidx/mediarouter/app/b0;->g:Landroidx/mediarouter/app/c0;

    .line 346
    .line 347
    check-cast v2, Lq1/s0;

    .line 348
    .line 349
    iput-object v2, p1, Landroidx/mediarouter/app/c0;->m:Lq1/s0;

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Lq1/s0;->l(Z)V

    .line 352
    .line 353
    .line 354
    iget-object p1, v3, Landroidx/mediarouter/app/a0;->b:Landroid/widget/ImageView;

    .line 355
    .line 356
    const/4 v1, 0x4

    .line 357
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object p1, v3, Landroidx/mediarouter/app/a0;->c:Landroid/widget/ProgressBar;

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    nop

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
