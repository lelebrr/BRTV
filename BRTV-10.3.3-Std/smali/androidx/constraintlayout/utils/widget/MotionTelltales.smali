.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "MyApplication"


# instance fields
.field public final l:Landroid/graphics/Paint;

.field public m:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final n:[F

.field public final o:Landroid/graphics/Matrix;

.field public p:I

.field public q:I

.field public r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const v0, -0xff01

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    const/4 p3, 0x2

    .line 11
    new-array p3, p3, [F

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 12
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const p3, -0xff01

    .line 14
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 15
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 16
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    sget-object v0, Ly/j;->m:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 53
    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    .line 58
    .line 59
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    const/high16 p1, 0x40a00000    # 5.0f

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 30
    .line 31
    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    new-array v6, v1, [F

    .line 43
    .line 44
    fill-array-data v6, :array_0

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    :goto_0
    if-ge v8, v1, :cond_2b

    .line 49
    .line 50
    aget v15, v6, v8

    .line 51
    .line 52
    const/4 v14, 0x0

    .line 53
    :goto_1
    if-ge v14, v1, :cond_2a

    .line 54
    .line 55
    aget v13, v6, v14

    .line 56
    .line 57
    iget-object v9, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 58
    .line 59
    iget v12, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    .line 60
    .line 61
    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 62
    .line 63
    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 64
    .line 65
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget v1, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 70
    .line 71
    sub-float/2addr v1, v11

    .line 72
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 77
    .line 78
    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 79
    .line 80
    const v16, 0x3727c5ac    # 1.0E-5f

    .line 81
    .line 82
    .line 83
    add-float v11, v11, v16

    .line 84
    .line 85
    invoke-interface {v10, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    iget-object v11, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 90
    .line 91
    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 92
    .line 93
    invoke-interface {v11, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    sub-float/2addr v10, v11

    .line 98
    div-float v10, v10, v16

    .line 99
    .line 100
    mul-float v10, v10, v1

    .line 101
    .line 102
    iget v1, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 103
    .line 104
    div-float/2addr v10, v1

    .line 105
    :cond_2
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 106
    .line 107
    instance-of v7, v1, Lt/p;

    .line 108
    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    check-cast v1, Lt/p;

    .line 112
    .line 113
    invoke-virtual {v1}, Lt/p;->a()F

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    :cond_3
    move v1, v10

    .line 118
    iget-object v7, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Lt/o;

    .line 125
    .line 126
    and-int/lit8 v9, v12, 0x1

    .line 127
    .line 128
    iget-object v10, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 129
    .line 130
    if-nez v9, :cond_28

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v17

    .line 140
    iget-object v9, v7, Lt/o;->t:[F

    .line 141
    .line 142
    invoke-virtual {v7, v9, v11}, Lt/o;->a([FF)F

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    iget-object v2, v7, Lt/o;->w:Ljava/util/HashMap;

    .line 147
    .line 148
    move-object/from16 v18, v6

    .line 149
    .line 150
    const-string v6, "translationX"

    .line 151
    .line 152
    const/16 v19, 0x0

    .line 153
    .line 154
    if-nez v2, :cond_4

    .line 155
    .line 156
    move-object/from16 v20, v10

    .line 157
    .line 158
    move-object/from16 v2, v19

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lt/h0;

    .line 166
    .line 167
    move-object/from16 v20, v10

    .line 168
    .line 169
    :goto_2
    iget-object v10, v7, Lt/o;->w:Ljava/util/HashMap;

    .line 170
    .line 171
    move/from16 v21, v12

    .line 172
    .line 173
    const-string v12, "translationY"

    .line 174
    .line 175
    if-nez v10, :cond_5

    .line 176
    .line 177
    move/from16 v22, v14

    .line 178
    .line 179
    move-object/from16 v10, v19

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Lt/h0;

    .line 187
    .line 188
    move/from16 v22, v14

    .line 189
    .line 190
    :goto_3
    iget-object v14, v7, Lt/o;->w:Ljava/util/HashMap;

    .line 191
    .line 192
    move/from16 v23, v8

    .line 193
    .line 194
    const-string v8, "rotation"

    .line 195
    .line 196
    if-nez v14, :cond_6

    .line 197
    .line 198
    move/from16 v24, v5

    .line 199
    .line 200
    move-object/from16 v14, v19

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    check-cast v14, Lt/h0;

    .line 208
    .line 209
    move/from16 v24, v5

    .line 210
    .line 211
    :goto_4
    iget-object v5, v7, Lt/o;->w:Ljava/util/HashMap;

    .line 212
    .line 213
    move/from16 v25, v3

    .line 214
    .line 215
    const-string v3, "scaleX"

    .line 216
    .line 217
    if-nez v5, :cond_7

    .line 218
    .line 219
    move-object/from16 v26, v4

    .line 220
    .line 221
    move-object/from16 v5, v19

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Lt/h0;

    .line 229
    .line 230
    move-object/from16 v26, v4

    .line 231
    .line 232
    :goto_5
    iget-object v4, v7, Lt/o;->w:Ljava/util/HashMap;

    .line 233
    .line 234
    const-string v0, "scaleY"

    .line 235
    .line 236
    if-nez v4, :cond_8

    .line 237
    .line 238
    move/from16 v27, v1

    .line 239
    .line 240
    move-object/from16 v4, v19

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_8
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Lt/h0;

    .line 248
    .line 249
    move/from16 v27, v1

    .line 250
    .line 251
    :goto_6
    iget-object v1, v7, Lt/o;->x:Ljava/util/HashMap;

    .line 252
    .line 253
    if-nez v1, :cond_9

    .line 254
    .line 255
    move-object/from16 v1, v19

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_9
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Lt/i;

    .line 263
    .line 264
    :goto_7
    iget-object v6, v7, Lt/o;->x:Ljava/util/HashMap;

    .line 265
    .line 266
    if-nez v6, :cond_a

    .line 267
    .line 268
    move-object/from16 v6, v19

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_a
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    check-cast v6, Lt/i;

    .line 276
    .line 277
    :goto_8
    iget-object v12, v7, Lt/o;->x:Ljava/util/HashMap;

    .line 278
    .line 279
    if-nez v12, :cond_b

    .line 280
    .line 281
    move-object/from16 v8, v19

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_b
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    check-cast v8, Lt/i;

    .line 289
    .line 290
    :goto_9
    iget-object v12, v7, Lt/o;->x:Ljava/util/HashMap;

    .line 291
    .line 292
    if-nez v12, :cond_c

    .line 293
    .line 294
    move-object/from16 v3, v19

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_c
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Lt/i;

    .line 302
    .line 303
    :goto_a
    iget-object v12, v7, Lt/o;->x:Ljava/util/HashMap;

    .line 304
    .line 305
    if-nez v12, :cond_d

    .line 306
    .line 307
    :goto_b
    move-object/from16 v0, v19

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_d
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    move-object/from16 v19, v0

    .line 315
    .line 316
    check-cast v19, Lt/i;

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :goto_c
    new-instance v12, Le0/a;

    .line 320
    .line 321
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 322
    .line 323
    .line 324
    move-object/from16 v19, v9

    .line 325
    .line 326
    const/4 v9, 0x0

    .line 327
    iput v9, v12, Le0/a;->e:F

    .line 328
    .line 329
    iput v9, v12, Le0/a;->d:F

    .line 330
    .line 331
    iput v9, v12, Le0/a;->c:F

    .line 332
    .line 333
    iput v9, v12, Le0/a;->b:F

    .line 334
    .line 335
    iput v9, v12, Le0/a;->a:F

    .line 336
    .line 337
    if-eqz v14, :cond_e

    .line 338
    .line 339
    iget-object v9, v14, Lt/h0;->a:Lr4/b;

    .line 340
    .line 341
    move-object/from16 v29, v6

    .line 342
    .line 343
    move-object/from16 v28, v7

    .line 344
    .line 345
    float-to-double v6, v11

    .line 346
    invoke-virtual {v9, v6, v7}, Lr4/b;->u(D)D

    .line 347
    .line 348
    .line 349
    move-result-wide v6

    .line 350
    double-to-float v6, v6

    .line 351
    iput v6, v12, Le0/a;->e:F

    .line 352
    .line 353
    invoke-virtual {v14, v11}, Lt/h0;->a(F)F

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    iput v6, v12, Le0/a;->f:F

    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_e
    move-object/from16 v29, v6

    .line 361
    .line 362
    move-object/from16 v28, v7

    .line 363
    .line 364
    :goto_d
    if-eqz v2, :cond_f

    .line 365
    .line 366
    iget-object v6, v2, Lt/h0;->a:Lr4/b;

    .line 367
    .line 368
    move-object v9, v14

    .line 369
    move v7, v15

    .line 370
    float-to-double v14, v11

    .line 371
    invoke-virtual {v6, v14, v15}, Lr4/b;->u(D)D

    .line 372
    .line 373
    .line 374
    move-result-wide v14

    .line 375
    double-to-float v6, v14

    .line 376
    iput v6, v12, Le0/a;->c:F

    .line 377
    .line 378
    goto :goto_e

    .line 379
    :cond_f
    move-object v9, v14

    .line 380
    move v7, v15

    .line 381
    :goto_e
    if-eqz v10, :cond_10

    .line 382
    .line 383
    iget-object v6, v10, Lt/h0;->a:Lr4/b;

    .line 384
    .line 385
    float-to-double v14, v11

    .line 386
    invoke-virtual {v6, v14, v15}, Lr4/b;->u(D)D

    .line 387
    .line 388
    .line 389
    move-result-wide v14

    .line 390
    double-to-float v6, v14

    .line 391
    iput v6, v12, Le0/a;->d:F

    .line 392
    .line 393
    :cond_10
    if-eqz v5, :cond_11

    .line 394
    .line 395
    iget-object v6, v5, Lt/h0;->a:Lr4/b;

    .line 396
    .line 397
    float-to-double v14, v11

    .line 398
    invoke-virtual {v6, v14, v15}, Lr4/b;->u(D)D

    .line 399
    .line 400
    .line 401
    move-result-wide v14

    .line 402
    double-to-float v6, v14

    .line 403
    iput v6, v12, Le0/a;->a:F

    .line 404
    .line 405
    :cond_11
    if-eqz v4, :cond_12

    .line 406
    .line 407
    iget-object v6, v4, Lt/h0;->a:Lr4/b;

    .line 408
    .line 409
    float-to-double v14, v11

    .line 410
    invoke-virtual {v6, v14, v15}, Lr4/b;->u(D)D

    .line 411
    .line 412
    .line 413
    move-result-wide v14

    .line 414
    double-to-float v6, v14

    .line 415
    iput v6, v12, Le0/a;->b:F

    .line 416
    .line 417
    :cond_12
    if-eqz v8, :cond_13

    .line 418
    .line 419
    invoke-virtual {v8, v11}, Lt/i;->b(F)F

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    iput v6, v12, Le0/a;->e:F

    .line 424
    .line 425
    :cond_13
    if-eqz v1, :cond_14

    .line 426
    .line 427
    invoke-virtual {v1, v11}, Lt/i;->b(F)F

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    iput v6, v12, Le0/a;->c:F

    .line 432
    .line 433
    :cond_14
    move-object/from16 v6, v29

    .line 434
    .line 435
    if-eqz v29, :cond_15

    .line 436
    .line 437
    invoke-virtual {v6, v11}, Lt/i;->b(F)F

    .line 438
    .line 439
    .line 440
    move-result v14

    .line 441
    iput v14, v12, Le0/a;->d:F

    .line 442
    .line 443
    :cond_15
    if-nez v3, :cond_17

    .line 444
    .line 445
    if-nez v0, :cond_17

    .line 446
    .line 447
    :cond_16
    :goto_f
    move-object/from16 v14, v28

    .line 448
    .line 449
    goto :goto_10

    .line 450
    :cond_17
    if-nez v3, :cond_18

    .line 451
    .line 452
    invoke-virtual {v3, v11}, Lt/i;->b(F)F

    .line 453
    .line 454
    .line 455
    move-result v14

    .line 456
    iput v14, v12, Le0/a;->a:F

    .line 457
    .line 458
    :cond_18
    if-nez v0, :cond_16

    .line 459
    .line 460
    invoke-virtual {v0, v11}, Lt/i;->b(F)F

    .line 461
    .line 462
    .line 463
    move-result v14

    .line 464
    iput v14, v12, Le0/a;->b:F

    .line 465
    .line 466
    goto :goto_f

    .line 467
    :goto_10
    iget-object v15, v14, Lt/o;->i:Ls/b;

    .line 468
    .line 469
    if-eqz v15, :cond_1a

    .line 470
    .line 471
    iget-object v0, v14, Lt/o;->n:[D

    .line 472
    .line 473
    array-length v1, v0

    .line 474
    if-lez v1, :cond_19

    .line 475
    .line 476
    float-to-double v1, v11

    .line 477
    invoke-virtual {v15, v1, v2, v0}, Ls/b;->r(D[D)V

    .line 478
    .line 479
    .line 480
    iget-object v0, v14, Lt/o;->i:Ls/b;

    .line 481
    .line 482
    iget-object v3, v14, Lt/o;->o:[D

    .line 483
    .line 484
    invoke-virtual {v0, v1, v2, v3}, Ls/b;->v(D[D)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v14, Lt/o;->m:[I

    .line 488
    .line 489
    iget-object v1, v14, Lt/o;->o:[D

    .line 490
    .line 491
    iget-object v2, v14, Lt/o;->n:[D

    .line 492
    .line 493
    iget-object v3, v14, Lt/o;->d:Lt/y;

    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    move v9, v13

    .line 499
    move-object/from16 v15, v20

    .line 500
    .line 501
    move v10, v7

    .line 502
    move-object v11, v15

    .line 503
    move-object v4, v12

    .line 504
    move/from16 v3, v21

    .line 505
    .line 506
    move-object v12, v0

    .line 507
    move v0, v13

    .line 508
    move-object v13, v1

    .line 509
    move/from16 v20, v22

    .line 510
    .line 511
    move-object v14, v2

    .line 512
    invoke-static/range {v9 .. v14}, Lt/y;->d(FF[F[I[D[D)V

    .line 513
    .line 514
    .line 515
    goto :goto_11

    .line 516
    :cond_19
    move-object v4, v12

    .line 517
    move v0, v13

    .line 518
    move-object/from16 v15, v20

    .line 519
    .line 520
    move/from16 v3, v21

    .line 521
    .line 522
    move/from16 v20, v22

    .line 523
    .line 524
    :goto_11
    move-object v9, v4

    .line 525
    move v10, v0

    .line 526
    move v11, v7

    .line 527
    move/from16 v12, v16

    .line 528
    .line 529
    move/from16 v13, v17

    .line 530
    .line 531
    move-object v14, v15

    .line 532
    invoke-virtual/range {v9 .. v14}, Le0/a;->a(FFII[F)V

    .line 533
    .line 534
    .line 535
    move v1, v0

    .line 536
    move v0, v3

    .line 537
    :goto_12
    move-object v3, v15

    .line 538
    goto/16 :goto_16

    .line 539
    .line 540
    :cond_1a
    move-object/from16 v15, v20

    .line 541
    .line 542
    move/from16 v20, v22

    .line 543
    .line 544
    move/from16 v22, v21

    .line 545
    .line 546
    move-object/from16 v21, v12

    .line 547
    .line 548
    iget-object v12, v14, Lt/o;->h:[Lr4/b;

    .line 549
    .line 550
    if-eqz v12, :cond_1c

    .line 551
    .line 552
    move-object/from16 v12, v19

    .line 553
    .line 554
    invoke-virtual {v14, v12, v11}, Lt/o;->a([FF)F

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    iget-object v1, v14, Lt/o;->h:[Lr4/b;

    .line 559
    .line 560
    const/4 v2, 0x0

    .line 561
    aget-object v1, v1, v2

    .line 562
    .line 563
    float-to-double v3, v0

    .line 564
    iget-object v0, v14, Lt/o;->o:[D

    .line 565
    .line 566
    invoke-virtual {v1, v3, v4, v0}, Lr4/b;->v(D[D)V

    .line 567
    .line 568
    .line 569
    iget-object v0, v14, Lt/o;->h:[Lr4/b;

    .line 570
    .line 571
    aget-object v0, v0, v2

    .line 572
    .line 573
    iget-object v1, v14, Lt/o;->n:[D

    .line 574
    .line 575
    invoke-virtual {v0, v3, v4, v1}, Lr4/b;->r(D[D)V

    .line 576
    .line 577
    .line 578
    aget v0, v12, v2

    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    :goto_13
    iget-object v2, v14, Lt/o;->o:[D

    .line 582
    .line 583
    array-length v3, v2

    .line 584
    if-ge v1, v3, :cond_1b

    .line 585
    .line 586
    aget-wide v3, v2, v1

    .line 587
    .line 588
    float-to-double v5, v0

    .line 589
    mul-double v3, v3, v5

    .line 590
    .line 591
    aput-wide v3, v2, v1

    .line 592
    .line 593
    const/4 v2, 0x1

    .line 594
    add-int/2addr v1, v2

    .line 595
    goto :goto_13

    .line 596
    :cond_1b
    iget-object v12, v14, Lt/o;->m:[I

    .line 597
    .line 598
    iget-object v0, v14, Lt/o;->n:[D

    .line 599
    .line 600
    iget-object v1, v14, Lt/o;->d:Lt/y;

    .line 601
    .line 602
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    move v9, v13

    .line 606
    move v10, v7

    .line 607
    move-object v11, v15

    .line 608
    move/from16 v1, v22

    .line 609
    .line 610
    move v3, v13

    .line 611
    move-object v13, v2

    .line 612
    move-object v14, v0

    .line 613
    invoke-static/range {v9 .. v14}, Lt/y;->d(FF[F[I[D[D)V

    .line 614
    .line 615
    .line 616
    move-object/from16 v9, v21

    .line 617
    .line 618
    move v10, v3

    .line 619
    move v11, v7

    .line 620
    move/from16 v12, v16

    .line 621
    .line 622
    move/from16 v13, v17

    .line 623
    .line 624
    move-object v14, v15

    .line 625
    invoke-virtual/range {v9 .. v14}, Le0/a;->a(FFII[F)V

    .line 626
    .line 627
    .line 628
    move v0, v1

    .line 629
    move v1, v3

    .line 630
    goto :goto_12

    .line 631
    :cond_1c
    iget-object v12, v14, Lt/o;->e:Lt/y;

    .line 632
    .line 633
    move-object/from16 v19, v0

    .line 634
    .line 635
    iget v0, v12, Lt/y;->e:F

    .line 636
    .line 637
    iget-object v14, v14, Lt/o;->d:Lt/y;

    .line 638
    .line 639
    move-object/from16 v28, v3

    .line 640
    .line 641
    iget v3, v14, Lt/y;->e:F

    .line 642
    .line 643
    sub-float/2addr v0, v3

    .line 644
    iget v3, v12, Lt/y;->f:F

    .line 645
    .line 646
    move-object/from16 v29, v6

    .line 647
    .line 648
    iget v6, v14, Lt/y;->f:F

    .line 649
    .line 650
    sub-float/2addr v3, v6

    .line 651
    iget v6, v12, Lt/y;->g:F

    .line 652
    .line 653
    move-object/from16 v30, v1

    .line 654
    .line 655
    iget v1, v14, Lt/y;->g:F

    .line 656
    .line 657
    sub-float/2addr v6, v1

    .line 658
    iget v1, v12, Lt/y;->h:F

    .line 659
    .line 660
    iget v12, v14, Lt/y;->h:F

    .line 661
    .line 662
    sub-float/2addr v1, v12

    .line 663
    add-float/2addr v6, v0

    .line 664
    add-float/2addr v1, v3

    .line 665
    const/high16 v12, 0x3f800000    # 1.0f

    .line 666
    .line 667
    sub-float v14, v12, v13

    .line 668
    .line 669
    mul-float v14, v14, v0

    .line 670
    .line 671
    mul-float v6, v6, v13

    .line 672
    .line 673
    add-float/2addr v6, v14

    .line 674
    const/4 v0, 0x0

    .line 675
    aput v6, v15, v0

    .line 676
    .line 677
    sub-float/2addr v12, v7

    .line 678
    mul-float v12, v12, v3

    .line 679
    .line 680
    mul-float v1, v1, v7

    .line 681
    .line 682
    add-float/2addr v1, v12

    .line 683
    const/4 v0, 0x1

    .line 684
    aput v1, v15, v0

    .line 685
    .line 686
    move-object/from16 v0, v21

    .line 687
    .line 688
    const/4 v1, 0x0

    .line 689
    iput v1, v0, Le0/a;->e:F

    .line 690
    .line 691
    iput v1, v0, Le0/a;->d:F

    .line 692
    .line 693
    iput v1, v0, Le0/a;->c:F

    .line 694
    .line 695
    iput v1, v0, Le0/a;->b:F

    .line 696
    .line 697
    iput v1, v0, Le0/a;->a:F

    .line 698
    .line 699
    if-eqz v9, :cond_1d

    .line 700
    .line 701
    iget-object v1, v9, Lt/h0;->a:Lr4/b;

    .line 702
    .line 703
    move-object v3, v15

    .line 704
    float-to-double v14, v11

    .line 705
    invoke-virtual {v1, v14, v15}, Lr4/b;->u(D)D

    .line 706
    .line 707
    .line 708
    move-result-wide v14

    .line 709
    double-to-float v1, v14

    .line 710
    iput v1, v0, Le0/a;->e:F

    .line 711
    .line 712
    invoke-virtual {v9, v11}, Lt/h0;->a(F)F

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    iput v1, v0, Le0/a;->f:F

    .line 717
    .line 718
    goto :goto_14

    .line 719
    :cond_1d
    move-object v3, v15

    .line 720
    :goto_14
    if-eqz v2, :cond_1e

    .line 721
    .line 722
    iget-object v1, v2, Lt/h0;->a:Lr4/b;

    .line 723
    .line 724
    float-to-double v14, v11

    .line 725
    invoke-virtual {v1, v14, v15}, Lr4/b;->u(D)D

    .line 726
    .line 727
    .line 728
    move-result-wide v1

    .line 729
    double-to-float v1, v1

    .line 730
    iput v1, v0, Le0/a;->c:F

    .line 731
    .line 732
    :cond_1e
    if-eqz v10, :cond_1f

    .line 733
    .line 734
    iget-object v1, v10, Lt/h0;->a:Lr4/b;

    .line 735
    .line 736
    float-to-double v9, v11

    .line 737
    invoke-virtual {v1, v9, v10}, Lr4/b;->u(D)D

    .line 738
    .line 739
    .line 740
    move-result-wide v1

    .line 741
    double-to-float v1, v1

    .line 742
    iput v1, v0, Le0/a;->d:F

    .line 743
    .line 744
    :cond_1f
    if-eqz v5, :cond_20

    .line 745
    .line 746
    iget-object v1, v5, Lt/h0;->a:Lr4/b;

    .line 747
    .line 748
    float-to-double v5, v11

    .line 749
    invoke-virtual {v1, v5, v6}, Lr4/b;->u(D)D

    .line 750
    .line 751
    .line 752
    move-result-wide v1

    .line 753
    double-to-float v1, v1

    .line 754
    iput v1, v0, Le0/a;->a:F

    .line 755
    .line 756
    :cond_20
    if-eqz v4, :cond_21

    .line 757
    .line 758
    iget-object v1, v4, Lt/h0;->a:Lr4/b;

    .line 759
    .line 760
    float-to-double v4, v11

    .line 761
    invoke-virtual {v1, v4, v5}, Lr4/b;->u(D)D

    .line 762
    .line 763
    .line 764
    move-result-wide v1

    .line 765
    double-to-float v1, v1

    .line 766
    iput v1, v0, Le0/a;->b:F

    .line 767
    .line 768
    :cond_21
    if-eqz v8, :cond_22

    .line 769
    .line 770
    invoke-virtual {v8, v11}, Lt/i;->b(F)F

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    iput v1, v0, Le0/a;->e:F

    .line 775
    .line 776
    :cond_22
    if-eqz v30, :cond_23

    .line 777
    .line 778
    move-object/from16 v1, v30

    .line 779
    .line 780
    invoke-virtual {v1, v11}, Lt/i;->b(F)F

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    iput v1, v0, Le0/a;->c:F

    .line 785
    .line 786
    :cond_23
    if-eqz v29, :cond_24

    .line 787
    .line 788
    move-object/from16 v6, v29

    .line 789
    .line 790
    invoke-virtual {v6, v11}, Lt/i;->b(F)F

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    iput v1, v0, Le0/a;->d:F

    .line 795
    .line 796
    :cond_24
    if-nez v28, :cond_25

    .line 797
    .line 798
    if-nez v19, :cond_25

    .line 799
    .line 800
    goto :goto_15

    .line 801
    :cond_25
    if-nez v28, :cond_26

    .line 802
    .line 803
    move-object/from16 v1, v28

    .line 804
    .line 805
    invoke-virtual {v1, v11}, Lt/i;->b(F)F

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    iput v1, v0, Le0/a;->a:F

    .line 810
    .line 811
    :cond_26
    if-nez v19, :cond_27

    .line 812
    .line 813
    move-object/from16 v1, v19

    .line 814
    .line 815
    invoke-virtual {v1, v11}, Lt/i;->b(F)F

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    iput v1, v0, Le0/a;->b:F

    .line 820
    .line 821
    :cond_27
    :goto_15
    move-object v9, v0

    .line 822
    move v10, v13

    .line 823
    move v11, v7

    .line 824
    move/from16 v0, v22

    .line 825
    .line 826
    move/from16 v12, v16

    .line 827
    .line 828
    move v1, v13

    .line 829
    move/from16 v13, v17

    .line 830
    .line 831
    move-object v14, v3

    .line 832
    invoke-virtual/range {v9 .. v14}, Le0/a;->a(FFII[F)V

    .line 833
    .line 834
    .line 835
    goto :goto_16

    .line 836
    :cond_28
    move/from16 v27, v1

    .line 837
    .line 838
    move/from16 v25, v3

    .line 839
    .line 840
    move-object/from16 v26, v4

    .line 841
    .line 842
    move/from16 v24, v5

    .line 843
    .line 844
    move-object/from16 v18, v6

    .line 845
    .line 846
    move/from16 v23, v8

    .line 847
    .line 848
    move-object v3, v10

    .line 849
    move v0, v12

    .line 850
    move v1, v13

    .line 851
    move/from16 v20, v14

    .line 852
    .line 853
    move-object v14, v7

    .line 854
    move v7, v15

    .line 855
    invoke-virtual {v14, v11, v1, v7, v3}, Lt/o;->b(FFF[F)V

    .line 856
    .line 857
    .line 858
    :goto_16
    const/4 v2, 0x2

    .line 859
    if-ge v0, v2, :cond_29

    .line 860
    .line 861
    const/4 v0, 0x0

    .line 862
    aget v2, v3, v0

    .line 863
    .line 864
    mul-float v2, v2, v27

    .line 865
    .line 866
    aput v2, v3, v0

    .line 867
    .line 868
    const/4 v0, 0x1

    .line 869
    aget v2, v3, v0

    .line 870
    .line 871
    mul-float v2, v2, v27

    .line 872
    .line 873
    aput v2, v3, v0

    .line 874
    .line 875
    :cond_29
    move-object/from16 v0, p0

    .line 876
    .line 877
    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 878
    .line 879
    move-object/from16 v3, v26

    .line 880
    .line 881
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 882
    .line 883
    .line 884
    move/from16 v4, v25

    .line 885
    .line 886
    int-to-float v5, v4

    .line 887
    mul-float v9, v5, v1

    .line 888
    .line 889
    move/from16 v1, v24

    .line 890
    .line 891
    int-to-float v5, v1

    .line 892
    mul-float v10, v5, v7

    .line 893
    .line 894
    const/4 v5, 0x0

    .line 895
    aget v6, v2, v5

    .line 896
    .line 897
    iget v8, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 898
    .line 899
    mul-float v6, v6, v8

    .line 900
    .line 901
    sub-float v11, v9, v6

    .line 902
    .line 903
    const/4 v6, 0x1

    .line 904
    aget v12, v2, v6

    .line 905
    .line 906
    mul-float v12, v12, v8

    .line 907
    .line 908
    sub-float v12, v10, v12

    .line 909
    .line 910
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 911
    .line 912
    .line 913
    iget-object v13, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    .line 914
    .line 915
    move-object/from16 v8, p1

    .line 916
    .line 917
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 918
    .line 919
    .line 920
    const/4 v2, 0x1

    .line 921
    add-int/lit8 v14, v20, 0x1

    .line 922
    .line 923
    move v5, v1

    .line 924
    move v15, v7

    .line 925
    move-object/from16 v6, v18

    .line 926
    .line 927
    move/from16 v8, v23

    .line 928
    .line 929
    const/4 v1, 0x5

    .line 930
    move/from16 v31, v4

    .line 931
    .line 932
    move-object v4, v3

    .line 933
    move/from16 v3, v31

    .line 934
    .line 935
    goto/16 :goto_1

    .line 936
    .line 937
    :cond_2a
    move v1, v5

    .line 938
    move-object/from16 v18, v6

    .line 939
    .line 940
    move/from16 v23, v8

    .line 941
    .line 942
    const/4 v5, 0x0

    .line 943
    move-object/from16 v31, v4

    .line 944
    .line 945
    move v4, v3

    .line 946
    move-object/from16 v3, v31

    .line 947
    .line 948
    add-int/lit8 v8, v23, 0x1

    .line 949
    .line 950
    move v5, v1

    .line 951
    const/4 v1, 0x5

    .line 952
    move/from16 v31, v4

    .line 953
    .line 954
    move-object v4, v3

    .line 955
    move/from16 v3, v31

    .line 956
    .line 957
    goto/16 :goto_0

    .line 958
    .line 959
    :cond_2b
    return-void

    .line 960
    nop

    .line 961
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->f:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
