.class public final Landroidx/mediarouter/app/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Landroidx/mediarouter/app/u;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/u;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/n;->c:Landroidx/mediarouter/app/u;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/n;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/mediarouter/app/n;->b:Ljava/util/HashMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/n;->c:Landroidx/mediarouter/app/u;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 15
    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    iget-object v3, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    new-instance v3, Landroidx/mediarouter/app/o;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v3, v4, v1}, Landroidx/mediarouter/app/o;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v4, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    :goto_0
    iget-object v7, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-object v8, v0, Landroidx/mediarouter/app/n;->a:Ljava/util/HashMap;

    .line 56
    .line 57
    iget-object v9, v0, Landroidx/mediarouter/app/n;->b:Ljava/util/HashMap;

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    if-ge v5, v7, :cond_4

    .line 61
    .line 62
    iget-object v7, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    add-int v11, v4, v5

    .line 69
    .line 70
    iget-object v12, v1, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 71
    .line 72
    invoke-virtual {v12, v11}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    check-cast v11, Lq1/s0;

    .line 77
    .line 78
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    check-cast v12, Landroid/graphics/Rect;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-eqz v12, :cond_1

    .line 89
    .line 90
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget v12, v1, Landroidx/mediarouter/app/u;->N:I

    .line 94
    .line 95
    mul-int v12, v12, v2

    .line 96
    .line 97
    add-int/2addr v12, v13

    .line 98
    :goto_1
    new-instance v14, Landroid/view/animation/AnimationSet;

    .line 99
    .line 100
    const/4 v15, 0x1

    .line 101
    invoke-direct {v14, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v15, v1, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 105
    .line 106
    if-eqz v15, :cond_2

    .line 107
    .line 108
    invoke-virtual {v15, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-eqz v15, :cond_2

    .line 113
    .line 114
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    .line 115
    .line 116
    invoke-direct {v12, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 117
    .line 118
    .line 119
    iget v15, v1, Landroidx/mediarouter/app/u;->i0:I

    .line 120
    .line 121
    move-object/from16 v16, v11

    .line 122
    .line 123
    int-to-long v10, v15

    .line 124
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    .line 129
    .line 130
    move v12, v13

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    move-object/from16 v16, v11

    .line 133
    .line 134
    :goto_2
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .line 135
    .line 136
    sub-int/2addr v12, v13

    .line 137
    int-to-float v11, v12

    .line 138
    const/4 v12, 0x0

    .line 139
    invoke-direct {v10, v12, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 140
    .line 141
    .line 142
    iget v11, v1, Landroidx/mediarouter/app/u;->h0:I

    .line 143
    .line 144
    int-to-long v11, v11

    .line 145
    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    .line 150
    .line 151
    const/4 v10, 0x1

    .line 152
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v11, v1, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 159
    .line 160
    invoke-virtual {v14, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 161
    .line 162
    .line 163
    if-nez v6, :cond_3

    .line 164
    .line 165
    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    .line 167
    .line 168
    const/4 v6, 0x1

    .line 169
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v11, v16

    .line 176
    .line 177
    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-interface {v9, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    add-int/lit8 v5, v5, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_6

    .line 200
    .line 201
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Ljava/util/Map$Entry;

    .line 206
    .line 207
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Lq1/s0;

    .line 212
    .line 213
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 218
    .line 219
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Landroid/graphics/Rect;

    .line 224
    .line 225
    iget-object v7, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 226
    .line 227
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_5

    .line 232
    .line 233
    new-instance v5, Landroidx/mediarouter/app/r0;

    .line 234
    .line 235
    invoke-direct {v5, v4, v6}, Landroidx/mediarouter/app/r0;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    .line 236
    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    iput v7, v5, Landroidx/mediarouter/app/r0;->h:F

    .line 240
    .line 241
    iget v4, v1, Landroidx/mediarouter/app/u;->j0:I

    .line 242
    .line 243
    int-to-long v9, v4

    .line 244
    iput-wide v9, v5, Landroidx/mediarouter/app/r0;->e:J

    .line 245
    .line 246
    iget-object v4, v1, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 247
    .line 248
    iput-object v4, v5, Landroidx/mediarouter/app/r0;->d:Landroid/view/animation/Interpolator;

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_5
    const/4 v7, 0x0

    .line 252
    iget v9, v1, Landroidx/mediarouter/app/u;->N:I

    .line 253
    .line 254
    mul-int v9, v9, v2

    .line 255
    .line 256
    new-instance v10, Landroidx/mediarouter/app/r0;

    .line 257
    .line 258
    invoke-direct {v10, v4, v6}, Landroidx/mediarouter/app/r0;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    .line 259
    .line 260
    .line 261
    iput v9, v10, Landroidx/mediarouter/app/r0;->g:I

    .line 262
    .line 263
    iget v4, v1, Landroidx/mediarouter/app/u;->h0:I

    .line 264
    .line 265
    int-to-long v11, v4

    .line 266
    iput-wide v11, v10, Landroidx/mediarouter/app/r0;->e:J

    .line 267
    .line 268
    iget-object v4, v1, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 269
    .line 270
    iput-object v4, v10, Landroidx/mediarouter/app/r0;->d:Landroid/view/animation/Interpolator;

    .line 271
    .line 272
    new-instance v4, La7/f;

    .line 273
    .line 274
    const/4 v6, 0x4

    .line 275
    invoke-direct {v4, v1, v6, v5}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iput-object v4, v10, Landroidx/mediarouter/app/r0;->l:La7/f;

    .line 279
    .line 280
    iget-object v4, v1, Landroidx/mediarouter/app/u;->I:Ljava/util/HashSet;

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-object v5, v10

    .line 286
    :goto_4
    iget-object v4, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 287
    .line 288
    iget-object v4, v4, Landroidx/mediarouter/app/OverlayListView;->a:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_6
    :goto_5
    return-void
.end method
