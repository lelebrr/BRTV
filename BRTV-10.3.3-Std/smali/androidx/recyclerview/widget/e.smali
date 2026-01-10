.class public final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/recyclerview/widget/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/k;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/recyclerview/widget/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/e;->c:Landroidx/recyclerview/widget/k;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/e;->c:Landroidx/recyclerview/widget/k;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/recyclerview/widget/p1;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v4, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object v6, v3, Landroidx/recyclerview/widget/k;->o:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const/high16 v6, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-wide v7, v3, Landroidx/recyclerview/widget/s0;->c:J

    .line 47
    .line 48
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v7, Landroidx/recyclerview/widget/f;

    .line 53
    .line 54
    invoke-direct {v7, v3, v2, v4, v5}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/k;Landroidx/recyclerview/widget/p1;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    iget-object v1, v3, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget-object v9, p0, Landroidx/recyclerview/widget/e;->c:Landroidx/recyclerview/widget/k;

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroidx/recyclerview/widget/i;

    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object v3, v2, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/p1;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    move-object v7, v4

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 105
    .line 106
    move-object v7, v3

    .line 107
    :goto_2
    iget-object v3, v2, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/p1;

    .line 108
    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 112
    .line 113
    move-object v10, v3

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    move-object v10, v4

    .line 116
    :goto_3
    iget-object v11, v9, Landroidx/recyclerview/widget/k;->r:Ljava/util/ArrayList;

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    if-eqz v7, :cond_4

    .line 120
    .line 121
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-wide v4, v9, Landroidx/recyclerview/widget/s0;->f:J

    .line 126
    .line 127
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    iget-object v3, v2, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/p1;

    .line 132
    .line 133
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget v3, v2, Landroidx/recyclerview/widget/i;->e:I

    .line 137
    .line 138
    iget v4, v2, Landroidx/recyclerview/widget/i;->c:I

    .line 139
    .line 140
    sub-int/2addr v3, v4

    .line 141
    int-to-float v3, v3

    .line 142
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 143
    .line 144
    .line 145
    iget v3, v2, Landroidx/recyclerview/widget/i;->f:I

    .line 146
    .line 147
    iget v4, v2, Landroidx/recyclerview/widget/i;->d:I

    .line 148
    .line 149
    sub-int/2addr v3, v4

    .line 150
    int-to-float v3, v3

    .line 151
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    new-instance v14, Landroidx/recyclerview/widget/h;

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    move-object v3, v14

    .line 162
    move-object v4, v9

    .line 163
    move-object v5, v2

    .line 164
    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/k;Landroidx/recyclerview/widget/i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 172
    .line 173
    .line 174
    :cond_4
    if-eqz v10, :cond_1

    .line 175
    .line 176
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    iget-object v3, v2, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/p1;

    .line 181
    .line 182
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget-wide v4, v9, Landroidx/recyclerview/widget/s0;->f:J

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const/high16 v4, 0x3f800000    # 1.0f

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    new-instance v12, Landroidx/recyclerview/widget/h;

    .line 206
    .line 207
    const/4 v8, 0x1

    .line 208
    move-object v3, v12

    .line 209
    move-object v4, v9

    .line 210
    move-object v5, v2

    .line 211
    move-object v7, v10

    .line 212
    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/k;Landroidx/recyclerview/widget/i;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    .line 226
    .line 227
    iget-object v1, v9, Landroidx/recyclerview/widget/k;->n:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->c:Landroidx/recyclerview/widget/k;

    .line 244
    .line 245
    if-eqz v2, :cond_8

    .line 246
    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Landroidx/recyclerview/widget/j;

    .line 252
    .line 253
    iget-object v5, v2, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/p1;

    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v7, v5, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 259
    .line 260
    iget v3, v2, Landroidx/recyclerview/widget/j;->d:I

    .line 261
    .line 262
    iget v6, v2, Landroidx/recyclerview/widget/j;->b:I

    .line 263
    .line 264
    sub-int v6, v3, v6

    .line 265
    .line 266
    iget v3, v2, Landroidx/recyclerview/widget/j;->e:I

    .line 267
    .line 268
    iget v2, v2, Landroidx/recyclerview/widget/j;->c:I

    .line 269
    .line 270
    sub-int v8, v3, v2

    .line 271
    .line 272
    const/4 v2, 0x0

    .line 273
    if-eqz v6, :cond_6

    .line 274
    .line 275
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 280
    .line 281
    .line 282
    :cond_6
    if-eqz v8, :cond_7

    .line 283
    .line 284
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 289
    .line 290
    .line 291
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    iget-object v2, v4, Landroidx/recyclerview/widget/k;->p:Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    iget-wide v2, v4, Landroidx/recyclerview/widget/s0;->e:J

    .line 301
    .line 302
    invoke-virtual {v9, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    new-instance v10, Landroidx/recyclerview/widget/g;

    .line 307
    .line 308
    move-object v3, v10

    .line 309
    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/k;Landroidx/recyclerview/widget/p1;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    .line 322
    .line 323
    iget-object v1, v4, Landroidx/recyclerview/widget/k;->m:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
