.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lv/f;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Landroidx/constraintlayout/widget/d;

.field public k:Ln0/e;

.field public l:I

.field public m:Ljava/util/HashMap;

.field public final n:Landroid/util/SparseArray;

.field public final o:Landroidx/constraintlayout/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lv/f;

    invoke-direct {p1}, Lv/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x107

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Landroidx/constraintlayout/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/widget/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/b;

    .line 17
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lv/f;

    invoke-direct {p1}, Lv/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const p1, 0x7fffffff

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 p1, 0x107

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 32
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 33
    new-instance p1, Landroidx/constraintlayout/widget/b;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/widget/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/b;

    .line 34
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    move v2, v1

    .line 39
    :cond_0
    return v2
.end method


# virtual methods
.method public final c(ZLandroid/view/View;Lv/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v8, p4

    .line 8
    .line 9
    move-object/from16 v9, p5

    .line 10
    .line 11
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, v7, Lv/e;->X:I

    .line 19
    .line 20
    iget-boolean v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 21
    .line 22
    const/4 v10, 0x1

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iput-boolean v10, v7, Lv/e;->x:Z

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    iput v2, v7, Lv/e;->X:I

    .line 30
    .line 31
    :cond_0
    iput-object v1, v7, Lv/e;->W:Landroid/view/View;

    .line 32
    .line 33
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 38
    .line 39
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 40
    .line 41
    iget-boolean v2, v2, Lv/f;->k0:Z

    .line 42
    .line 43
    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->i(Lv/e;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 47
    .line 48
    const/4 v11, -0x1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    move-object v1, v7

    .line 52
    check-cast v1, Lv/i;

    .line 53
    .line 54
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    .line 55
    .line 56
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 57
    .line 58
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:F

    .line 59
    .line 60
    const/high16 v5, -0x40800000    # -1.0f

    .line 61
    .line 62
    cmpl-float v6, v4, v5

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    if-lez v6, :cond_29

    .line 67
    .line 68
    iput v4, v1, Lv/i;->g0:F

    .line 69
    .line 70
    iput v11, v1, Lv/i;->h0:I

    .line 71
    .line 72
    iput v11, v1, Lv/i;->i0:I

    .line 73
    .line 74
    goto/16 :goto_14

    .line 75
    .line 76
    :cond_2
    if-eq v2, v11, :cond_3

    .line 77
    .line 78
    if-le v2, v11, :cond_29

    .line 79
    .line 80
    iput v5, v1, Lv/i;->g0:F

    .line 81
    .line 82
    iput v2, v1, Lv/i;->h0:I

    .line 83
    .line 84
    iput v11, v1, Lv/i;->i0:I

    .line 85
    .line 86
    goto/16 :goto_14

    .line 87
    .line 88
    :cond_3
    if-eq v3, v11, :cond_29

    .line 89
    .line 90
    if-le v3, v11, :cond_29

    .line 91
    .line 92
    iput v5, v1, Lv/i;->g0:F

    .line 93
    .line 94
    iput v11, v1, Lv/i;->h0:I

    .line 95
    .line 96
    iput v3, v1, Lv/i;->i0:I

    .line 97
    .line 98
    goto/16 :goto_14

    .line 99
    .line 100
    :cond_4
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 101
    .line 102
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 103
    .line 104
    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 105
    .line 106
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 107
    .line 108
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 109
    .line 110
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 111
    .line 112
    iget v15, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:F

    .line 113
    .line 114
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 115
    .line 116
    const/4 v5, 0x4

    .line 117
    const/4 v4, 0x2

    .line 118
    const/4 v10, 0x0

    .line 119
    if-eq v3, v11, :cond_6

    .line 120
    .line 121
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    move-object v3, v1

    .line 126
    check-cast v3, Lv/e;

    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 131
    .line 132
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 133
    .line 134
    const/4 v12, 0x7

    .line 135
    const/4 v13, 0x0

    .line 136
    move-object/from16 v1, p3

    .line 137
    .line 138
    move v2, v12

    .line 139
    const/4 v14, 0x2

    .line 140
    move v4, v12

    .line 141
    const/4 v12, 0x4

    .line 142
    move v5, v6

    .line 143
    move v6, v13

    .line 144
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 145
    .line 146
    .line 147
    iput v9, v7, Lv/e;->v:F

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const/4 v12, 0x4

    .line 151
    const/4 v14, 0x2

    .line 152
    :goto_0
    const/16 v17, 0x2

    .line 153
    .line 154
    const/16 v18, 0x4

    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_6
    if-eq v1, v11, :cond_8

    .line 159
    .line 160
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    move-object v3, v1

    .line 165
    check-cast v3, Lv/e;

    .line 166
    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 170
    .line 171
    move-object/from16 v1, p3

    .line 172
    .line 173
    move/from16 v16, v2

    .line 174
    .line 175
    move v2, v4

    .line 176
    const/16 v17, 0x2

    .line 177
    .line 178
    move/from16 v4, v17

    .line 179
    .line 180
    const/16 v18, 0x4

    .line 181
    .line 182
    move/from16 v5, v16

    .line 183
    .line 184
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_7
    const/16 v17, 0x2

    .line 189
    .line 190
    const/16 v18, 0x4

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    const/16 v17, 0x2

    .line 194
    .line 195
    const/16 v18, 0x4

    .line 196
    .line 197
    if-eq v2, v11, :cond_9

    .line 198
    .line 199
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    move-object v3, v1

    .line 204
    check-cast v3, Lv/e;

    .line 205
    .line 206
    if-eqz v3, :cond_9

    .line 207
    .line 208
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 209
    .line 210
    move-object/from16 v1, p3

    .line 211
    .line 212
    move/from16 v2, v17

    .line 213
    .line 214
    move/from16 v4, v18

    .line 215
    .line 216
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 217
    .line 218
    .line 219
    :cond_9
    :goto_1
    if-eq v12, v11, :cond_a

    .line 220
    .line 221
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    move-object v3, v1

    .line 226
    check-cast v3, Lv/e;

    .line 227
    .line 228
    if-eqz v3, :cond_b

    .line 229
    .line 230
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 231
    .line 232
    move-object/from16 v1, p3

    .line 233
    .line 234
    move/from16 v2, v18

    .line 235
    .line 236
    move/from16 v4, v17

    .line 237
    .line 238
    move v6, v14

    .line 239
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_a
    if-eq v13, v11, :cond_b

    .line 244
    .line 245
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    move-object v3, v1

    .line 250
    check-cast v3, Lv/e;

    .line 251
    .line 252
    if-eqz v3, :cond_b

    .line 253
    .line 254
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 255
    .line 256
    move-object/from16 v1, p3

    .line 257
    .line 258
    move/from16 v2, v18

    .line 259
    .line 260
    move/from16 v4, v18

    .line 261
    .line 262
    move v6, v14

    .line 263
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 264
    .line 265
    .line 266
    :cond_b
    :goto_2
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 267
    .line 268
    if-eq v1, v11, :cond_c

    .line 269
    .line 270
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    move-object v3, v1

    .line 275
    check-cast v3, Lv/e;

    .line 276
    .line 277
    if-eqz v3, :cond_d

    .line 278
    .line 279
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 280
    .line 281
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 282
    .line 283
    move-object/from16 v1, p3

    .line 284
    .line 285
    const/4 v12, 0x3

    .line 286
    move v2, v12

    .line 287
    move v4, v12

    .line 288
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_c
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 293
    .line 294
    if-eq v1, v11, :cond_d

    .line 295
    .line 296
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    move-object v3, v1

    .line 301
    check-cast v3, Lv/e;

    .line 302
    .line 303
    if-eqz v3, :cond_d

    .line 304
    .line 305
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 306
    .line 307
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 308
    .line 309
    move-object/from16 v1, p3

    .line 310
    .line 311
    const/4 v4, 0x3

    .line 312
    move v2, v4

    .line 313
    const/4 v12, 0x5

    .line 314
    move v4, v12

    .line 315
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 316
    .line 317
    .line 318
    :cond_d
    :goto_3
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 319
    .line 320
    if-eq v1, v11, :cond_e

    .line 321
    .line 322
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    move-object v3, v1

    .line 327
    check-cast v3, Lv/e;

    .line 328
    .line 329
    if-eqz v3, :cond_f

    .line 330
    .line 331
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 332
    .line 333
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 334
    .line 335
    move-object/from16 v1, p3

    .line 336
    .line 337
    const/4 v4, 0x5

    .line 338
    move v2, v4

    .line 339
    const/4 v12, 0x3

    .line 340
    move v4, v12

    .line 341
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_e
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 346
    .line 347
    if-eq v1, v11, :cond_f

    .line 348
    .line 349
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    move-object v3, v1

    .line 354
    check-cast v3, Lv/e;

    .line 355
    .line 356
    if-eqz v3, :cond_f

    .line 357
    .line 358
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 359
    .line 360
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 361
    .line 362
    move-object/from16 v1, p3

    .line 363
    .line 364
    const/4 v12, 0x5

    .line 365
    move v2, v12

    .line 366
    move v4, v12

    .line 367
    invoke-virtual/range {v1 .. v6}, Lv/e;->p(ILv/e;III)V

    .line 368
    .line 369
    .line 370
    :cond_f
    :goto_4
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 371
    .line 372
    if-eq v1, v11, :cond_10

    .line 373
    .line 374
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 375
    .line 376
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Landroid/view/View;

    .line 381
    .line 382
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 383
    .line 384
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Lv/e;

    .line 389
    .line 390
    if-eqz v2, :cond_10

    .line 391
    .line 392
    if-eqz v1, :cond_10

    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 399
    .line 400
    if-eqz v3, :cond_10

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 407
    .line 408
    const/4 v3, 0x1

    .line 409
    iput-boolean v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 410
    .line 411
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 412
    .line 413
    const/4 v4, 0x6

    .line 414
    invoke-virtual {v7, v4}, Lv/e;->h(I)Lv/c;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-virtual {v2, v4}, Lv/e;->h(I)Lv/c;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v5, v2, v10, v11, v3}, Lv/c;->b(Lv/c;IIZ)Z

    .line 423
    .line 424
    .line 425
    iput-boolean v3, v7, Lv/e;->w:Z

    .line 426
    .line 427
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 428
    .line 429
    iput-boolean v3, v1, Lv/e;->w:Z

    .line 430
    .line 431
    const/4 v1, 0x3

    .line 432
    invoke-virtual {v7, v1}, Lv/e;->h(I)Lv/c;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lv/c;->h()V

    .line 437
    .line 438
    .line 439
    const/4 v1, 0x5

    .line 440
    invoke-virtual {v7, v1}, Lv/e;->h(I)Lv/c;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v2}, Lv/c;->h()V

    .line 445
    .line 446
    .line 447
    :cond_10
    const/4 v1, 0x0

    .line 448
    cmpl-float v2, v15, v1

    .line 449
    .line 450
    if-ltz v2, :cond_11

    .line 451
    .line 452
    iput v15, v7, Lv/e;->U:F

    .line 453
    .line 454
    :cond_11
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 455
    .line 456
    cmpl-float v3, v2, v1

    .line 457
    .line 458
    if-ltz v3, :cond_12

    .line 459
    .line 460
    iput v2, v7, Lv/e;->V:F

    .line 461
    .line 462
    :cond_12
    :goto_5
    if-eqz p1, :cond_14

    .line 463
    .line 464
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 465
    .line 466
    if-ne v1, v11, :cond_13

    .line 467
    .line 468
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 469
    .line 470
    if-eq v2, v11, :cond_14

    .line 471
    .line 472
    :cond_13
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 473
    .line 474
    iput v1, v7, Lv/e;->P:I

    .line 475
    .line 476
    iput v2, v7, Lv/e;->Q:I

    .line 477
    .line 478
    :cond_14
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 479
    .line 480
    sget-object v2, Lv/d;->b:Lv/d;

    .line 481
    .line 482
    sget-object v3, Lv/d;->a:Lv/d;

    .line 483
    .line 484
    sget-object v4, Lv/d;->d:Lv/d;

    .line 485
    .line 486
    sget-object v5, Lv/d;->c:Lv/d;

    .line 487
    .line 488
    const/4 v6, -0x2

    .line 489
    if-nez v1, :cond_17

    .line 490
    .line 491
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 492
    .line 493
    if-ne v1, v11, :cond_16

    .line 494
    .line 495
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 496
    .line 497
    if-eqz v1, :cond_15

    .line 498
    .line 499
    invoke-virtual {v7, v5}, Lv/e;->x(Lv/d;)V

    .line 500
    .line 501
    .line 502
    :goto_6
    const/4 v1, 0x2

    .line 503
    goto :goto_7

    .line 504
    :cond_15
    invoke-virtual {v7, v4}, Lv/e;->x(Lv/d;)V

    .line 505
    .line 506
    .line 507
    goto :goto_6

    .line 508
    :goto_7
    invoke-virtual {v7, v1}, Lv/e;->h(I)Lv/c;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 513
    .line 514
    iput v9, v1, Lv/c;->e:I

    .line 515
    .line 516
    const/4 v1, 0x4

    .line 517
    invoke-virtual {v7, v1}, Lv/e;->h(I)Lv/c;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 522
    .line 523
    iput v9, v1, Lv/c;->e:I

    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_16
    invoke-virtual {v7, v5}, Lv/e;->x(Lv/d;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7, v10}, Lv/e;->z(I)V

    .line 530
    .line 531
    .line 532
    goto :goto_8

    .line 533
    :cond_17
    invoke-virtual {v7, v3}, Lv/e;->x(Lv/d;)V

    .line 534
    .line 535
    .line 536
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 537
    .line 538
    invoke-virtual {v7, v1}, Lv/e;->z(I)V

    .line 539
    .line 540
    .line 541
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 542
    .line 543
    if-ne v1, v6, :cond_18

    .line 544
    .line 545
    invoke-virtual {v7, v2}, Lv/e;->x(Lv/d;)V

    .line 546
    .line 547
    .line 548
    :cond_18
    :goto_8
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 549
    .line 550
    if-nez v1, :cond_1b

    .line 551
    .line 552
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 553
    .line 554
    if-ne v1, v11, :cond_1a

    .line 555
    .line 556
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 557
    .line 558
    if-eqz v1, :cond_19

    .line 559
    .line 560
    invoke-virtual {v7, v5}, Lv/e;->y(Lv/d;)V

    .line 561
    .line 562
    .line 563
    :goto_9
    const/4 v1, 0x3

    .line 564
    goto :goto_a

    .line 565
    :cond_19
    invoke-virtual {v7, v4}, Lv/e;->y(Lv/d;)V

    .line 566
    .line 567
    .line 568
    goto :goto_9

    .line 569
    :goto_a
    invoke-virtual {v7, v1}, Lv/e;->h(I)Lv/c;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 574
    .line 575
    iput v2, v1, Lv/c;->e:I

    .line 576
    .line 577
    const/4 v1, 0x5

    .line 578
    invoke-virtual {v7, v1}, Lv/e;->h(I)Lv/c;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 583
    .line 584
    iput v2, v1, Lv/c;->e:I

    .line 585
    .line 586
    goto :goto_b

    .line 587
    :cond_1a
    invoke-virtual {v7, v5}, Lv/e;->y(Lv/d;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v7, v10}, Lv/e;->w(I)V

    .line 591
    .line 592
    .line 593
    goto :goto_b

    .line 594
    :cond_1b
    invoke-virtual {v7, v3}, Lv/e;->y(Lv/d;)V

    .line 595
    .line 596
    .line 597
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 598
    .line 599
    invoke-virtual {v7, v1}, Lv/e;->w(I)V

    .line 600
    .line 601
    .line 602
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 603
    .line 604
    if-ne v1, v6, :cond_1c

    .line 605
    .line 606
    invoke-virtual {v7, v2}, Lv/e;->y(Lv/d;)V

    .line 607
    .line 608
    .line 609
    :cond_1c
    :goto_b
    iget-object v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 610
    .line 611
    if-eqz v1, :cond_1d

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-nez v2, :cond_1e

    .line 618
    .line 619
    :cond_1d
    const/4 v2, 0x0

    .line 620
    goto/16 :goto_11

    .line 621
    .line 622
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    const/16 v3, 0x2c

    .line 627
    .line 628
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    if-lez v3, :cond_21

    .line 633
    .line 634
    add-int/lit8 v4, v2, -0x1

    .line 635
    .line 636
    if-ge v3, v4, :cond_21

    .line 637
    .line 638
    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    const-string v5, "W"

    .line 643
    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    if-eqz v5, :cond_1f

    .line 649
    .line 650
    const/4 v4, 0x1

    .line 651
    const/4 v11, 0x0

    .line 652
    goto :goto_c

    .line 653
    :cond_1f
    const-string v5, "H"

    .line 654
    .line 655
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    if-eqz v4, :cond_20

    .line 660
    .line 661
    const/4 v4, 0x1

    .line 662
    const/4 v11, 0x1

    .line 663
    goto :goto_c

    .line 664
    :cond_20
    const/4 v4, 0x1

    .line 665
    :goto_c
    add-int/2addr v3, v4

    .line 666
    goto :goto_d

    .line 667
    :cond_21
    const/4 v4, 0x1

    .line 668
    const/4 v3, 0x0

    .line 669
    :goto_d
    const/16 v5, 0x3a

    .line 670
    .line 671
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    if-ltz v5, :cond_23

    .line 676
    .line 677
    sub-int/2addr v2, v4

    .line 678
    if-ge v5, v2, :cond_23

    .line 679
    .line 680
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    add-int/2addr v5, v4

    .line 685
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    if-lez v3, :cond_24

    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-lez v3, :cond_24

    .line 700
    .line 701
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    const/4 v3, 0x0

    .line 710
    cmpl-float v4, v2, v3

    .line 711
    .line 712
    if-lez v4, :cond_24

    .line 713
    .line 714
    cmpl-float v4, v1, v3

    .line 715
    .line 716
    if-lez v4, :cond_24

    .line 717
    .line 718
    const/4 v3, 0x1

    .line 719
    if-ne v11, v3, :cond_22

    .line 720
    .line 721
    div-float/2addr v1, v2

    .line 722
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    goto :goto_e

    .line 727
    :catch_0
    nop

    .line 728
    goto :goto_f

    .line 729
    :cond_22
    div-float/2addr v2, v1

    .line 730
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 731
    .line 732
    .line 733
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_e
    const/4 v2, 0x0

    .line 735
    goto :goto_10

    .line 736
    :cond_23
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    if-lez v2, :cond_24

    .line 745
    .line 746
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 747
    .line 748
    .line 749
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    goto :goto_e

    .line 751
    :catch_1
    nop

    .line 752
    :cond_24
    :goto_f
    const/4 v1, 0x0

    .line 753
    goto :goto_e

    .line 754
    :goto_10
    cmpl-float v3, v1, v2

    .line 755
    .line 756
    if-lez v3, :cond_25

    .line 757
    .line 758
    iput v1, v7, Lv/e;->N:F

    .line 759
    .line 760
    iput v11, v7, Lv/e;->O:I

    .line 761
    .line 762
    goto :goto_12

    .line 763
    :goto_11
    iput v2, v7, Lv/e;->N:F

    .line 764
    .line 765
    :cond_25
    :goto_12
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 766
    .line 767
    iget-object v2, v7, Lv/e;->b0:[F

    .line 768
    .line 769
    aput v1, v2, v10

    .line 770
    .line 771
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 772
    .line 773
    const/4 v3, 0x1

    .line 774
    aput v1, v2, v3

    .line 775
    .line 776
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 777
    .line 778
    iput v1, v7, Lv/e;->Z:I

    .line 779
    .line 780
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 781
    .line 782
    iput v1, v7, Lv/e;->a0:I

    .line 783
    .line 784
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 785
    .line 786
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 787
    .line 788
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 789
    .line 790
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 791
    .line 792
    iput v1, v7, Lv/e;->j:I

    .line 793
    .line 794
    iput v2, v7, Lv/e;->m:I

    .line 795
    .line 796
    const v2, 0x7fffffff

    .line 797
    .line 798
    .line 799
    if-ne v3, v2, :cond_26

    .line 800
    .line 801
    const/4 v3, 0x0

    .line 802
    :cond_26
    iput v3, v7, Lv/e;->n:I

    .line 803
    .line 804
    iput v4, v7, Lv/e;->o:F

    .line 805
    .line 806
    const/4 v3, 0x2

    .line 807
    const/high16 v5, 0x3f800000    # 1.0f

    .line 808
    .line 809
    const/4 v6, 0x0

    .line 810
    cmpl-float v9, v4, v6

    .line 811
    .line 812
    if-lez v9, :cond_27

    .line 813
    .line 814
    cmpg-float v4, v4, v5

    .line 815
    .line 816
    if-gez v4, :cond_27

    .line 817
    .line 818
    if-nez v1, :cond_27

    .line 819
    .line 820
    iput v3, v7, Lv/e;->j:I

    .line 821
    .line 822
    :cond_27
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 823
    .line 824
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 825
    .line 826
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 827
    .line 828
    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 829
    .line 830
    iput v1, v7, Lv/e;->k:I

    .line 831
    .line 832
    iput v4, v7, Lv/e;->p:I

    .line 833
    .line 834
    if-ne v6, v2, :cond_28

    .line 835
    .line 836
    goto :goto_13

    .line 837
    :cond_28
    move v10, v6

    .line 838
    :goto_13
    iput v10, v7, Lv/e;->q:I

    .line 839
    .line 840
    iput v8, v7, Lv/e;->r:F

    .line 841
    .line 842
    const/4 v2, 0x0

    .line 843
    cmpl-float v2, v8, v2

    .line 844
    .line 845
    if-lez v2, :cond_29

    .line 846
    .line 847
    cmpg-float v2, v8, v5

    .line 848
    .line 849
    if-gez v2, :cond_29

    .line 850
    .line 851
    if-nez v1, :cond_29

    .line 852
    .line 853
    iput v3, v7, Lv/e;->k:I

    .line 854
    .line 855
    :cond_29
    :goto_14
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final d(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->k(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    if-ge v5, v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v2

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float v7, v7, v3

    .line 123
    .line 124
    float-to-int v7, v7

    .line 125
    int-to-float v8, v8

    .line 126
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 127
    .line 128
    div-float/2addr v8, v11

    .line 129
    mul-float v8, v8, v4

    .line 130
    .line 131
    float-to-int v8, v8

    .line 132
    int-to-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    mul-float v9, v9, v3

    .line 135
    .line 136
    float-to-int v9, v9

    .line 137
    int-to-float v6, v6

    .line 138
    div-float/2addr v6, v11

    .line 139
    mul-float v6, v6, v4

    .line 140
    .line 141
    float-to-int v6, v6

    .line 142
    new-instance v15, Landroid/graphics/Paint;

    .line 143
    .line 144
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .line 146
    .line 147
    const/high16 v10, -0x10000

    .line 148
    .line 149
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    .line 151
    .line 152
    int-to-float v14, v7

    .line 153
    int-to-float v13, v8

    .line 154
    add-int/2addr v7, v9

    .line 155
    int-to-float v7, v7

    .line 156
    move-object/from16 v10, p1

    .line 157
    .line 158
    move v11, v14

    .line 159
    move v12, v13

    .line 160
    move v9, v13

    .line 161
    move v13, v7

    .line 162
    move/from16 v16, v14

    .line 163
    .line 164
    move v14, v9

    .line 165
    move-object/from16 v17, v15

    .line 166
    .line 167
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    add-int/2addr v8, v6

    .line 171
    int-to-float v6, v8

    .line 172
    move v11, v7

    .line 173
    move v12, v9

    .line 174
    move v14, v6

    .line 175
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    move v12, v6

    .line 179
    move/from16 v13, v16

    .line 180
    .line 181
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    move/from16 v11, v16

    .line 185
    .line 186
    move v14, v9

    .line 187
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    const v8, -0xff0100

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    .line 195
    .line 196
    move v12, v9

    .line 197
    move v13, v7

    .line 198
    move v14, v6

    .line 199
    move-object v8, v15

    .line 200
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    .line 202
    .line 203
    move v12, v6

    .line 204
    move v14, v9

    .line 205
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_3
    return-void
.end method

.method public final e(Landroid/view/View;)Lv/e;
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 17
    .line 18
    :goto_0
    return-object p1
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 2
    .line 3
    iget v0, v0, Lv/f;->s0:I

    .line 4
    .line 5
    return v0
.end method

.method public final h(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 2
    .line 3
    iput-object p0, v0, Lv/e;->W:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/b;

    .line 6
    .line 7
    iput-object v1, v0, Lv/f;->j0:Lw/c;

    .line 8
    .line 9
    iget-object v2, v0, Lv/f;->i0:Lw/f;

    .line 10
    .line 11
    iput-object v1, v2, Lw/f;->f:Lw/c;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_8

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Ly/j;->b:[I

    .line 33
    .line 34
    invoke-virtual {v3, p1, v4, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    if-ge v3, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v5, 0x9

    .line 50
    .line 51
    if-ne v4, v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 54
    .line 55
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const/16 v5, 0xa

    .line 63
    .line 64
    if-ne v4, v5, :cond_1

    .line 65
    .line 66
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 67
    .line 68
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/4 v5, 0x7

    .line 76
    if-ne v4, v5, :cond_2

    .line 77
    .line 78
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 79
    .line 80
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/16 v5, 0x8

    .line 88
    .line 89
    if-ne v4, v5, :cond_3

    .line 90
    .line 91
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 92
    .line 93
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/16 v5, 0x59

    .line 101
    .line 102
    if-ne v4, v5, :cond_4

    .line 103
    .line 104
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 105
    .line 106
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/16 v5, 0x26

    .line 114
    .line 115
    if-ne v4, v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    const/16 v5, 0x12

    .line 131
    .line 132
    if-ne v4, v5, :cond_6

    .line 133
    .line 134
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    :try_start_1
    new-instance v5, Landroidx/constraintlayout/widget/d;

    .line 139
    .line 140
    invoke-direct {v5}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/widget/d;->h(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 154
    .line 155
    :goto_1
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 156
    .line 157
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 164
    .line 165
    iput p1, v0, Lv/f;->s0:I

    .line 166
    .line 167
    const/16 p2, 0x100

    .line 168
    .line 169
    and-int/2addr p1, p2

    .line 170
    if-ne p1, p2, :cond_9

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    :cond_9
    sput-boolean v2, Lu/e;->p:Z

    .line 174
    .line 175
    return-void
.end method

.method public final k()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    const/high16 v1, 0x400000

    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public l(I)V
    .locals 2

    .line 1
    new-instance v0, Ln0/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p1}, Ln0/e;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    .line 11
    .line 12
    return-void
.end method

.method public final m(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/b;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/b;->e:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/constraintlayout/widget/b;->d:I

    .line 6
    .line 7
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 24
    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 30
    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 36
    .line 37
    if-eqz p5, :cond_0

    .line 38
    .line 39
    or-int/2addr p1, p3

    .line 40
    :cond_0
    if-eqz p6, :cond_1

    .line 41
    .line 42
    or-int/2addr p2, p3

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final n(Lv/f;III)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    add-int v10, v7, v9

    .line 41
    .line 42
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/b;

    .line 47
    .line 48
    iput v7, v12, Landroidx/constraintlayout/widget/b;->b:I

    .line 49
    .line 50
    iput v9, v12, Landroidx/constraintlayout/widget/b;->c:I

    .line 51
    .line 52
    iput v11, v12, Landroidx/constraintlayout/widget/b;->d:I

    .line 53
    .line 54
    iput v10, v12, Landroidx/constraintlayout/widget/b;->e:I

    .line 55
    .line 56
    move/from16 v9, p3

    .line 57
    .line 58
    iput v9, v12, Landroidx/constraintlayout/widget/b;->f:I

    .line 59
    .line 60
    move/from16 v9, p4

    .line 61
    .line 62
    iput v9, v12, Landroidx/constraintlayout/widget/b;->g:I

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-gtz v9, :cond_1

    .line 81
    .line 82
    if-lez v13, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-eqz v14, :cond_2

    .line 99
    .line 100
    move v9, v13

    .line 101
    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    .line 102
    sub-int/2addr v6, v10

    .line 103
    iget v10, v12, Landroidx/constraintlayout/widget/b;->e:I

    .line 104
    .line 105
    iget v11, v12, Landroidx/constraintlayout/widget/b;->d:I

    .line 106
    .line 107
    sget-object v12, Lv/d;->a:Lv/d;

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    sget-object v14, Lv/d;->b:Lv/d;

    .line 114
    .line 115
    const/high16 v15, 0x40000000    # 2.0f

    .line 116
    .line 117
    const/high16 v8, -0x80000000

    .line 118
    .line 119
    if-eq v3, v8, :cond_6

    .line 120
    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    if-eq v3, v15, :cond_3

    .line 124
    .line 125
    move-object/from16 p4, v12

    .line 126
    .line 127
    :goto_2
    const/4 v15, 0x0

    .line 128
    goto :goto_5

    .line 129
    :cond_3
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 130
    .line 131
    sub-int/2addr v15, v11

    .line 132
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    move-object/from16 p4, v12

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_4
    if-nez v13, :cond_5

    .line 140
    .line 141
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    move-object/from16 p4, v12

    .line 149
    .line 150
    move-object v12, v14

    .line 151
    move/from16 v15, v16

    .line 152
    .line 153
    :goto_3
    const/high16 v8, -0x80000000

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_5
    const/4 v8, 0x0

    .line 157
    move-object/from16 p4, v12

    .line 158
    .line 159
    move-object v12, v14

    .line 160
    const/high16 v8, -0x80000000

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    const/4 v8, 0x0

    .line 164
    if-nez v13, :cond_7

    .line 165
    .line 166
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 167
    .line 168
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    :goto_4
    move-object/from16 p4, v12

    .line 173
    .line 174
    move-object v12, v14

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    move v15, v4

    .line 177
    goto :goto_4

    .line 178
    :goto_5
    if-eq v5, v8, :cond_b

    .line 179
    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    const/high16 v8, 0x40000000    # 2.0f

    .line 183
    .line 184
    if-eq v5, v8, :cond_8

    .line 185
    .line 186
    move-object/from16 v8, p4

    .line 187
    .line 188
    move-object/from16 v17, v14

    .line 189
    .line 190
    const/4 v13, 0x0

    .line 191
    goto :goto_7

    .line 192
    :cond_8
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 193
    .line 194
    sub-int/2addr v8, v10

    .line 195
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    move v13, v8

    .line 200
    move-object/from16 v17, v14

    .line 201
    .line 202
    move-object/from16 v8, p4

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_9
    if-nez v13, :cond_a

    .line 206
    .line 207
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 208
    .line 209
    const/4 v13, 0x0

    .line 210
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v16

    .line 214
    move-object v8, v14

    .line 215
    move-object/from16 v17, v8

    .line 216
    .line 217
    move/from16 v13, v16

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_a
    const/4 v13, 0x0

    .line 221
    :goto_6
    move-object v8, v14

    .line 222
    move-object/from16 v17, v8

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_b
    const/4 v8, 0x0

    .line 226
    if-nez v13, :cond_c

    .line 227
    .line 228
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 229
    .line 230
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    goto :goto_6

    .line 235
    :cond_c
    move v13, v6

    .line 236
    goto :goto_6

    .line 237
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    move/from16 v18, v6

    .line 242
    .line 243
    iget-object v6, v1, Lv/f;->i0:Lw/f;

    .line 244
    .line 245
    move/from16 v19, v4

    .line 246
    .line 247
    const/4 v4, 0x1

    .line 248
    if-ne v15, v14, :cond_e

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-eq v13, v14, :cond_d

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_d
    :goto_8
    const/4 v14, 0x0

    .line 258
    goto :goto_a

    .line 259
    :cond_e
    :goto_9
    iput-boolean v4, v6, Lw/f;->c:Z

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :goto_a
    iput v14, v1, Lv/e;->P:I

    .line 263
    .line 264
    iput v14, v1, Lv/e;->Q:I

    .line 265
    .line 266
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 267
    .line 268
    sub-int/2addr v4, v11

    .line 269
    move-object/from16 v21, v6

    .line 270
    .line 271
    iget-object v6, v1, Lv/e;->u:[I

    .line 272
    .line 273
    aput v4, v6, v14

    .line 274
    .line 275
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 276
    .line 277
    sub-int/2addr v4, v10

    .line 278
    const/16 v16, 0x1

    .line 279
    .line 280
    aput v4, v6, v16

    .line 281
    .line 282
    iput v14, v1, Lv/e;->S:I

    .line 283
    .line 284
    iput v14, v1, Lv/e;->T:I

    .line 285
    .line 286
    invoke-virtual {v1, v12}, Lv/e;->x(Lv/d;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v15}, Lv/e;->z(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v8}, Lv/e;->y(Lv/d;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v13}, Lv/e;->w(I)V

    .line 296
    .line 297
    .line 298
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 299
    .line 300
    sub-int/2addr v4, v11

    .line 301
    if-gez v4, :cond_f

    .line 302
    .line 303
    iput v14, v1, Lv/e;->S:I

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_f
    iput v4, v1, Lv/e;->S:I

    .line 307
    .line 308
    :goto_b
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 309
    .line 310
    sub-int/2addr v4, v10

    .line 311
    if-gez v4, :cond_10

    .line 312
    .line 313
    iput v14, v1, Lv/e;->T:I

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :cond_10
    iput v4, v1, Lv/e;->T:I

    .line 317
    .line 318
    :goto_c
    iput v9, v1, Lv/f;->m0:I

    .line 319
    .line 320
    iput v7, v1, Lv/f;->n0:I

    .line 321
    .line 322
    iget-object v4, v1, Lv/f;->h0:Ls/g;

    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    iget-object v6, v1, Lv/f;->j0:Lw/c;

    .line 328
    .line 329
    iget-object v7, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    and-int/lit16 v10, v2, 0x80

    .line 344
    .line 345
    const/16 v11, 0x80

    .line 346
    .line 347
    if-ne v10, v11, :cond_11

    .line 348
    .line 349
    const/4 v10, 0x1

    .line 350
    goto :goto_d

    .line 351
    :cond_11
    const/4 v10, 0x0

    .line 352
    :goto_d
    if-nez v10, :cond_13

    .line 353
    .line 354
    const/16 v11, 0x40

    .line 355
    .line 356
    and-int/2addr v2, v11

    .line 357
    if-ne v2, v11, :cond_12

    .line 358
    .line 359
    goto :goto_e

    .line 360
    :cond_12
    const/4 v2, 0x0

    .line 361
    goto :goto_f

    .line 362
    :cond_13
    :goto_e
    const/4 v2, 0x1

    .line 363
    :goto_f
    sget-object v11, Lv/d;->c:Lv/d;

    .line 364
    .line 365
    if-eqz v2, :cond_1c

    .line 366
    .line 367
    const/4 v12, 0x0

    .line 368
    :goto_10
    if-ge v12, v7, :cond_1c

    .line 369
    .line 370
    iget-object v13, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v13

    .line 376
    check-cast v13, Lv/e;

    .line 377
    .line 378
    iget-object v14, v13, Lv/e;->J:[Lv/d;

    .line 379
    .line 380
    const/4 v15, 0x0

    .line 381
    aget-object v0, v14, v15

    .line 382
    .line 383
    if-ne v0, v11, :cond_14

    .line 384
    .line 385
    const/4 v0, 0x1

    .line 386
    :goto_11
    const/4 v15, 0x1

    .line 387
    goto :goto_12

    .line 388
    :cond_14
    const/4 v0, 0x0

    .line 389
    goto :goto_11

    .line 390
    :goto_12
    aget-object v14, v14, v15

    .line 391
    .line 392
    if-ne v14, v11, :cond_15

    .line 393
    .line 394
    const/4 v14, 0x1

    .line 395
    goto :goto_13

    .line 396
    :cond_15
    const/4 v14, 0x0

    .line 397
    :goto_13
    if-eqz v0, :cond_16

    .line 398
    .line 399
    if-eqz v14, :cond_16

    .line 400
    .line 401
    iget v0, v13, Lv/e;->N:F

    .line 402
    .line 403
    const/4 v14, 0x0

    .line 404
    cmpl-float v0, v0, v14

    .line 405
    .line 406
    if-lez v0, :cond_16

    .line 407
    .line 408
    const/4 v0, 0x1

    .line 409
    goto :goto_14

    .line 410
    :cond_16
    const/4 v0, 0x0

    .line 411
    :goto_14
    invoke-virtual {v13}, Lv/e;->r()Z

    .line 412
    .line 413
    .line 414
    move-result v14

    .line 415
    if-eqz v14, :cond_18

    .line 416
    .line 417
    if-eqz v0, :cond_18

    .line 418
    .line 419
    :cond_17
    :goto_15
    const/high16 v0, 0x40000000    # 2.0f

    .line 420
    .line 421
    const/4 v2, 0x0

    .line 422
    goto :goto_16

    .line 423
    :cond_18
    invoke-virtual {v13}, Lv/e;->s()Z

    .line 424
    .line 425
    .line 426
    move-result v14

    .line 427
    if-eqz v14, :cond_19

    .line 428
    .line 429
    if-eqz v0, :cond_19

    .line 430
    .line 431
    goto :goto_15

    .line 432
    :cond_19
    instance-of v0, v13, Lv/h;

    .line 433
    .line 434
    if-eqz v0, :cond_1a

    .line 435
    .line 436
    goto :goto_15

    .line 437
    :cond_1a
    invoke-virtual {v13}, Lv/e;->r()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_17

    .line 442
    .line 443
    invoke-virtual {v13}, Lv/e;->s()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_1b

    .line 448
    .line 449
    goto :goto_15

    .line 450
    :cond_1b
    add-int/lit8 v12, v12, 0x1

    .line 451
    .line 452
    move-object/from16 v0, p0

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_1c
    const/high16 v0, 0x40000000    # 2.0f

    .line 456
    .line 457
    :goto_16
    if-ne v3, v0, :cond_1d

    .line 458
    .line 459
    if-eq v5, v0, :cond_1e

    .line 460
    .line 461
    :cond_1d
    if-eqz v10, :cond_1f

    .line 462
    .line 463
    :cond_1e
    const/4 v0, 0x1

    .line 464
    goto :goto_17

    .line 465
    :cond_1f
    const/4 v0, 0x0

    .line 466
    :goto_17
    and-int/2addr v0, v2

    .line 467
    if-eqz v0, :cond_3e

    .line 468
    .line 469
    iget-object v0, v1, Lv/e;->u:[I

    .line 470
    .line 471
    const/4 v12, 0x0

    .line 472
    aget v0, v0, v12

    .line 473
    .line 474
    move/from16 v12, v19

    .line 475
    .line 476
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    iget-object v12, v1, Lv/e;->u:[I

    .line 481
    .line 482
    const/4 v13, 0x1

    .line 483
    aget v12, v12, v13

    .line 484
    .line 485
    move/from16 v14, v18

    .line 486
    .line 487
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 488
    .line 489
    .line 490
    move-result v12

    .line 491
    const/high16 v14, 0x40000000    # 2.0f

    .line 492
    .line 493
    if-ne v3, v14, :cond_20

    .line 494
    .line 495
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 496
    .line 497
    .line 498
    move-result v15

    .line 499
    if-eq v15, v0, :cond_20

    .line 500
    .line 501
    invoke-virtual {v1, v0}, Lv/e;->z(I)V

    .line 502
    .line 503
    .line 504
    iget-object v0, v1, Lv/f;->i0:Lw/f;

    .line 505
    .line 506
    iput-boolean v13, v0, Lw/f;->b:Z

    .line 507
    .line 508
    :cond_20
    if-ne v5, v14, :cond_21

    .line 509
    .line 510
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eq v0, v12, :cond_21

    .line 515
    .line 516
    invoke-virtual {v1, v12}, Lv/e;->w(I)V

    .line 517
    .line 518
    .line 519
    iget-object v0, v1, Lv/f;->i0:Lw/f;

    .line 520
    .line 521
    iput-boolean v13, v0, Lw/f;->b:Z

    .line 522
    .line 523
    :cond_21
    if-ne v3, v14, :cond_37

    .line 524
    .line 525
    if-ne v5, v14, :cond_37

    .line 526
    .line 527
    move-object/from16 v0, v21

    .line 528
    .line 529
    iget-boolean v12, v0, Lw/f;->b:Z

    .line 530
    .line 531
    iget-object v13, v0, Lw/f;->a:Lv/f;

    .line 532
    .line 533
    if-nez v12, :cond_23

    .line 534
    .line 535
    iget-boolean v12, v0, Lw/f;->c:Z

    .line 536
    .line 537
    if-eqz v12, :cond_22

    .line 538
    .line 539
    goto :goto_18

    .line 540
    :cond_22
    const/4 v15, 0x0

    .line 541
    goto :goto_1a

    .line 542
    :cond_23
    :goto_18
    iget-object v12, v13, Lv/f;->g0:Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v12

    .line 548
    :goto_19
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    if-eqz v14, :cond_24

    .line 553
    .line 554
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v14

    .line 558
    check-cast v14, Lv/e;

    .line 559
    .line 560
    const/4 v15, 0x0

    .line 561
    iput-boolean v15, v14, Lv/e;->a:Z

    .line 562
    .line 563
    iget-object v2, v14, Lv/e;->d:Lw/k;

    .line 564
    .line 565
    invoke-virtual {v2}, Lw/k;->n()V

    .line 566
    .line 567
    .line 568
    iget-object v2, v14, Lv/e;->e:Lw/m;

    .line 569
    .line 570
    invoke-virtual {v2}, Lw/m;->m()V

    .line 571
    .line 572
    .line 573
    goto :goto_19

    .line 574
    :cond_24
    const/4 v15, 0x0

    .line 575
    iput-boolean v15, v13, Lv/e;->a:Z

    .line 576
    .line 577
    iget-object v2, v13, Lv/e;->d:Lw/k;

    .line 578
    .line 579
    invoke-virtual {v2}, Lw/k;->n()V

    .line 580
    .line 581
    .line 582
    iget-object v2, v13, Lv/e;->e:Lw/m;

    .line 583
    .line 584
    invoke-virtual {v2}, Lw/m;->m()V

    .line 585
    .line 586
    .line 587
    iput-boolean v15, v0, Lw/f;->c:Z

    .line 588
    .line 589
    :goto_1a
    iget-object v2, v0, Lw/f;->d:Lv/f;

    .line 590
    .line 591
    invoke-virtual {v0, v2}, Lw/f;->b(Lv/f;)V

    .line 592
    .line 593
    .line 594
    iput v15, v13, Lv/e;->P:I

    .line 595
    .line 596
    iput v15, v13, Lv/e;->Q:I

    .line 597
    .line 598
    invoke-virtual {v13, v15}, Lv/e;->i(I)Lv/d;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    const/4 v12, 0x1

    .line 603
    invoke-virtual {v13, v12}, Lv/e;->i(I)Lv/d;

    .line 604
    .line 605
    .line 606
    move-result-object v14

    .line 607
    iget-boolean v12, v0, Lw/f;->b:Z

    .line 608
    .line 609
    if-eqz v12, :cond_25

    .line 610
    .line 611
    invoke-virtual {v0}, Lw/f;->c()V

    .line 612
    .line 613
    .line 614
    :cond_25
    invoke-virtual {v13}, Lv/e;->n()I

    .line 615
    .line 616
    .line 617
    move-result v12

    .line 618
    invoke-virtual {v13}, Lv/e;->o()I

    .line 619
    .line 620
    .line 621
    move-result v15

    .line 622
    move-object/from16 v18, v6

    .line 623
    .line 624
    iget-object v6, v13, Lv/e;->d:Lw/k;

    .line 625
    .line 626
    move/from16 v19, v8

    .line 627
    .line 628
    iget-object v8, v6, Lw/n;->h:Lw/g;

    .line 629
    .line 630
    invoke-virtual {v8, v12}, Lw/g;->d(I)V

    .line 631
    .line 632
    .line 633
    iget-object v8, v13, Lv/e;->e:Lw/m;

    .line 634
    .line 635
    move/from16 v21, v9

    .line 636
    .line 637
    iget-object v9, v8, Lw/n;->h:Lw/g;

    .line 638
    .line 639
    invoke-virtual {v9, v15}, Lw/g;->d(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Lw/f;->g()V

    .line 643
    .line 644
    .line 645
    iget-object v9, v0, Lw/f;->e:Ljava/util/ArrayList;

    .line 646
    .line 647
    move-object/from16 v22, v4

    .line 648
    .line 649
    iget-object v4, v6, Lw/n;->e:Lw/h;

    .line 650
    .line 651
    move-object/from16 v23, v11

    .line 652
    .line 653
    iget-object v11, v8, Lw/n;->e:Lw/h;

    .line 654
    .line 655
    move/from16 v24, v7

    .line 656
    .line 657
    move-object/from16 v7, v17

    .line 658
    .line 659
    if-eq v2, v7, :cond_27

    .line 660
    .line 661
    if-ne v14, v7, :cond_26

    .line 662
    .line 663
    goto :goto_1b

    .line 664
    :cond_26
    move/from16 v25, v3

    .line 665
    .line 666
    move/from16 v17, v5

    .line 667
    .line 668
    move-object/from16 v5, p4

    .line 669
    .line 670
    goto :goto_1d

    .line 671
    :cond_27
    :goto_1b
    if-eqz v10, :cond_29

    .line 672
    .line 673
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v17

    .line 677
    :cond_28
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v25

    .line 681
    if-eqz v25, :cond_29

    .line 682
    .line 683
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v25

    .line 687
    check-cast v25, Lw/n;

    .line 688
    .line 689
    invoke-virtual/range {v25 .. v25}, Lw/n;->k()Z

    .line 690
    .line 691
    .line 692
    move-result v25

    .line 693
    if-nez v25, :cond_28

    .line 694
    .line 695
    const/4 v10, 0x0

    .line 696
    :cond_29
    if-eqz v10, :cond_2a

    .line 697
    .line 698
    if-ne v2, v7, :cond_2a

    .line 699
    .line 700
    move/from16 v17, v5

    .line 701
    .line 702
    move-object/from16 v5, p4

    .line 703
    .line 704
    invoke-virtual {v13, v5}, Lv/e;->x(Lv/d;)V

    .line 705
    .line 706
    .line 707
    move/from16 v25, v3

    .line 708
    .line 709
    const/4 v1, 0x0

    .line 710
    invoke-virtual {v0, v13, v1}, Lw/f;->d(Lv/f;I)I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    invoke-virtual {v13, v3}, Lv/e;->z(I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v13}, Lv/e;->m()I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-virtual {v4, v1}, Lw/h;->d(I)V

    .line 722
    .line 723
    .line 724
    goto :goto_1c

    .line 725
    :cond_2a
    move/from16 v25, v3

    .line 726
    .line 727
    move/from16 v17, v5

    .line 728
    .line 729
    move-object/from16 v5, p4

    .line 730
    .line 731
    :goto_1c
    if-eqz v10, :cond_2b

    .line 732
    .line 733
    if-ne v14, v7, :cond_2b

    .line 734
    .line 735
    invoke-virtual {v13, v5}, Lv/e;->y(Lv/d;)V

    .line 736
    .line 737
    .line 738
    const/4 v1, 0x1

    .line 739
    invoke-virtual {v0, v13, v1}, Lw/f;->d(Lv/f;I)I

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    invoke-virtual {v13, v3}, Lv/e;->w(I)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v13}, Lv/e;->j()I

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    invoke-virtual {v11, v1}, Lw/h;->d(I)V

    .line 751
    .line 752
    .line 753
    :cond_2b
    :goto_1d
    iget-object v1, v13, Lv/e;->J:[Lv/d;

    .line 754
    .line 755
    const/4 v3, 0x0

    .line 756
    aget-object v1, v1, v3

    .line 757
    .line 758
    sget-object v3, Lv/d;->d:Lv/d;

    .line 759
    .line 760
    if-eq v1, v5, :cond_2d

    .line 761
    .line 762
    if-ne v1, v3, :cond_2c

    .line 763
    .line 764
    goto :goto_1e

    .line 765
    :cond_2c
    const/4 v0, 0x0

    .line 766
    goto :goto_1f

    .line 767
    :cond_2d
    :goto_1e
    invoke-virtual {v13}, Lv/e;->m()I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    add-int/2addr v1, v12

    .line 772
    iget-object v6, v6, Lw/n;->i:Lw/g;

    .line 773
    .line 774
    invoke-virtual {v6, v1}, Lw/g;->d(I)V

    .line 775
    .line 776
    .line 777
    sub-int/2addr v1, v12

    .line 778
    invoke-virtual {v4, v1}, Lw/h;->d(I)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0}, Lw/f;->g()V

    .line 782
    .line 783
    .line 784
    iget-object v1, v13, Lv/e;->J:[Lv/d;

    .line 785
    .line 786
    const/4 v4, 0x1

    .line 787
    aget-object v1, v1, v4

    .line 788
    .line 789
    if-eq v1, v5, :cond_2e

    .line 790
    .line 791
    if-ne v1, v3, :cond_2f

    .line 792
    .line 793
    :cond_2e
    invoke-virtual {v13}, Lv/e;->j()I

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    add-int/2addr v1, v15

    .line 798
    iget-object v3, v8, Lw/n;->i:Lw/g;

    .line 799
    .line 800
    invoke-virtual {v3, v1}, Lw/g;->d(I)V

    .line 801
    .line 802
    .line 803
    sub-int/2addr v1, v15

    .line 804
    invoke-virtual {v11, v1}, Lw/h;->d(I)V

    .line 805
    .line 806
    .line 807
    :cond_2f
    invoke-virtual {v0}, Lw/f;->g()V

    .line 808
    .line 809
    .line 810
    const/4 v0, 0x1

    .line 811
    :goto_1f
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    if-eqz v3, :cond_31

    .line 820
    .line 821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    check-cast v3, Lw/n;

    .line 826
    .line 827
    iget-object v4, v3, Lw/n;->b:Lv/e;

    .line 828
    .line 829
    if-ne v4, v13, :cond_30

    .line 830
    .line 831
    iget-boolean v4, v3, Lw/n;->g:Z

    .line 832
    .line 833
    if-nez v4, :cond_30

    .line 834
    .line 835
    goto :goto_20

    .line 836
    :cond_30
    invoke-virtual {v3}, Lw/n;->e()V

    .line 837
    .line 838
    .line 839
    goto :goto_20

    .line 840
    :cond_31
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    :cond_32
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-eqz v3, :cond_36

    .line 849
    .line 850
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    check-cast v3, Lw/n;

    .line 855
    .line 856
    if-nez v0, :cond_33

    .line 857
    .line 858
    iget-object v4, v3, Lw/n;->b:Lv/e;

    .line 859
    .line 860
    if-ne v4, v13, :cond_33

    .line 861
    .line 862
    goto :goto_21

    .line 863
    :cond_33
    iget-object v4, v3, Lw/n;->h:Lw/g;

    .line 864
    .line 865
    iget-boolean v4, v4, Lw/g;->j:Z

    .line 866
    .line 867
    if-nez v4, :cond_34

    .line 868
    .line 869
    :goto_22
    const/4 v0, 0x0

    .line 870
    goto :goto_23

    .line 871
    :cond_34
    iget-object v4, v3, Lw/n;->i:Lw/g;

    .line 872
    .line 873
    iget-boolean v4, v4, Lw/g;->j:Z

    .line 874
    .line 875
    if-nez v4, :cond_35

    .line 876
    .line 877
    instance-of v4, v3, Lw/i;

    .line 878
    .line 879
    if-nez v4, :cond_35

    .line 880
    .line 881
    goto :goto_22

    .line 882
    :cond_35
    iget-object v4, v3, Lw/n;->e:Lw/h;

    .line 883
    .line 884
    iget-boolean v4, v4, Lw/g;->j:Z

    .line 885
    .line 886
    if-nez v4, :cond_32

    .line 887
    .line 888
    instance-of v4, v3, Lw/d;

    .line 889
    .line 890
    if-nez v4, :cond_32

    .line 891
    .line 892
    instance-of v3, v3, Lw/i;

    .line 893
    .line 894
    if-nez v3, :cond_32

    .line 895
    .line 896
    goto :goto_22

    .line 897
    :cond_36
    const/4 v0, 0x1

    .line 898
    :goto_23
    invoke-virtual {v13, v2}, Lv/e;->x(Lv/d;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v13, v14}, Lv/e;->y(Lv/d;)V

    .line 902
    .line 903
    .line 904
    move-object/from16 v2, p1

    .line 905
    .line 906
    move v4, v0

    .line 907
    move/from16 v6, v17

    .line 908
    .line 909
    move/from16 v0, v25

    .line 910
    .line 911
    const/high16 v1, 0x40000000    # 2.0f

    .line 912
    .line 913
    const/4 v3, 0x2

    .line 914
    goto/16 :goto_27

    .line 915
    .line 916
    :cond_37
    move/from16 v25, v3

    .line 917
    .line 918
    move-object/from16 v22, v4

    .line 919
    .line 920
    move-object/from16 v18, v6

    .line 921
    .line 922
    move/from16 v24, v7

    .line 923
    .line 924
    move/from16 v19, v8

    .line 925
    .line 926
    move-object/from16 v23, v11

    .line 927
    .line 928
    move-object/from16 v7, v17

    .line 929
    .line 930
    move-object/from16 v0, v21

    .line 931
    .line 932
    move/from16 v17, v5

    .line 933
    .line 934
    move/from16 v21, v9

    .line 935
    .line 936
    move-object/from16 v5, p4

    .line 937
    .line 938
    iget-boolean v1, v0, Lw/f;->b:Z

    .line 939
    .line 940
    iget-object v2, v0, Lw/f;->a:Lv/f;

    .line 941
    .line 942
    if-eqz v1, :cond_39

    .line 943
    .line 944
    iget-object v1, v2, Lv/f;->g0:Ljava/util/ArrayList;

    .line 945
    .line 946
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    if-eqz v3, :cond_38

    .line 955
    .line 956
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    check-cast v3, Lv/e;

    .line 961
    .line 962
    const/4 v4, 0x0

    .line 963
    iput-boolean v4, v3, Lv/e;->a:Z

    .line 964
    .line 965
    iget-object v6, v3, Lv/e;->d:Lw/k;

    .line 966
    .line 967
    iget-object v8, v6, Lw/n;->e:Lw/h;

    .line 968
    .line 969
    iput-boolean v4, v8, Lw/g;->j:Z

    .line 970
    .line 971
    iput-boolean v4, v6, Lw/n;->g:Z

    .line 972
    .line 973
    invoke-virtual {v6}, Lw/k;->n()V

    .line 974
    .line 975
    .line 976
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 977
    .line 978
    iget-object v6, v3, Lw/n;->e:Lw/h;

    .line 979
    .line 980
    iput-boolean v4, v6, Lw/g;->j:Z

    .line 981
    .line 982
    iput-boolean v4, v3, Lw/n;->g:Z

    .line 983
    .line 984
    invoke-virtual {v3}, Lw/m;->m()V

    .line 985
    .line 986
    .line 987
    goto :goto_24

    .line 988
    :cond_38
    const/4 v4, 0x0

    .line 989
    iput-boolean v4, v2, Lv/e;->a:Z

    .line 990
    .line 991
    iget-object v1, v2, Lv/e;->d:Lw/k;

    .line 992
    .line 993
    iget-object v3, v1, Lw/n;->e:Lw/h;

    .line 994
    .line 995
    iput-boolean v4, v3, Lw/g;->j:Z

    .line 996
    .line 997
    iput-boolean v4, v1, Lw/n;->g:Z

    .line 998
    .line 999
    invoke-virtual {v1}, Lw/k;->n()V

    .line 1000
    .line 1001
    .line 1002
    iget-object v1, v2, Lv/e;->e:Lw/m;

    .line 1003
    .line 1004
    iget-object v3, v1, Lw/n;->e:Lw/h;

    .line 1005
    .line 1006
    iput-boolean v4, v3, Lw/g;->j:Z

    .line 1007
    .line 1008
    iput-boolean v4, v1, Lw/n;->g:Z

    .line 1009
    .line 1010
    invoke-virtual {v1}, Lw/m;->m()V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0}, Lw/f;->c()V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_25

    .line 1017
    :cond_39
    const/4 v4, 0x0

    .line 1018
    :goto_25
    iget-object v1, v0, Lw/f;->d:Lv/f;

    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Lw/f;->b(Lv/f;)V

    .line 1021
    .line 1022
    .line 1023
    iput v4, v2, Lv/e;->P:I

    .line 1024
    .line 1025
    iput v4, v2, Lv/e;->Q:I

    .line 1026
    .line 1027
    iget-object v0, v2, Lv/e;->d:Lw/k;

    .line 1028
    .line 1029
    iget-object v0, v0, Lw/n;->h:Lw/g;

    .line 1030
    .line 1031
    invoke-virtual {v0, v4}, Lw/g;->d(I)V

    .line 1032
    .line 1033
    .line 1034
    iget-object v0, v2, Lv/e;->e:Lw/m;

    .line 1035
    .line 1036
    iget-object v0, v0, Lw/n;->h:Lw/g;

    .line 1037
    .line 1038
    invoke-virtual {v0, v4}, Lw/g;->d(I)V

    .line 1039
    .line 1040
    .line 1041
    move/from16 v0, v25

    .line 1042
    .line 1043
    const/high16 v1, 0x40000000    # 2.0f

    .line 1044
    .line 1045
    move-object/from16 v2, p1

    .line 1046
    .line 1047
    if-ne v0, v1, :cond_3a

    .line 1048
    .line 1049
    invoke-virtual {v2, v4, v10}, Lv/f;->E(IZ)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    move v4, v3

    .line 1054
    move/from16 v6, v17

    .line 1055
    .line 1056
    const/4 v3, 0x1

    .line 1057
    goto :goto_26

    .line 1058
    :cond_3a
    move/from16 v6, v17

    .line 1059
    .line 1060
    const/4 v3, 0x0

    .line 1061
    const/4 v4, 0x1

    .line 1062
    :goto_26
    if-ne v6, v1, :cond_3b

    .line 1063
    .line 1064
    const/4 v8, 0x1

    .line 1065
    invoke-virtual {v2, v8, v10}, Lv/f;->E(IZ)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v9

    .line 1069
    and-int/2addr v4, v9

    .line 1070
    add-int/lit8 v3, v3, 0x1

    .line 1071
    .line 1072
    :cond_3b
    :goto_27
    if-eqz v4, :cond_3f

    .line 1073
    .line 1074
    if-ne v0, v1, :cond_3c

    .line 1075
    .line 1076
    const/4 v0, 0x1

    .line 1077
    goto :goto_28

    .line 1078
    :cond_3c
    const/4 v0, 0x0

    .line 1079
    :goto_28
    if-ne v6, v1, :cond_3d

    .line 1080
    .line 1081
    const/4 v1, 0x1

    .line 1082
    goto :goto_29

    .line 1083
    :cond_3d
    const/4 v1, 0x0

    .line 1084
    :goto_29
    invoke-virtual {v2, v0, v1}, Lv/f;->A(ZZ)V

    .line 1085
    .line 1086
    .line 1087
    goto :goto_2a

    .line 1088
    :cond_3e
    move-object/from16 v5, p4

    .line 1089
    .line 1090
    move-object v2, v1

    .line 1091
    move-object/from16 v22, v4

    .line 1092
    .line 1093
    move-object/from16 v18, v6

    .line 1094
    .line 1095
    move/from16 v24, v7

    .line 1096
    .line 1097
    move/from16 v19, v8

    .line 1098
    .line 1099
    move/from16 v21, v9

    .line 1100
    .line 1101
    move-object/from16 v23, v11

    .line 1102
    .line 1103
    move-object/from16 v7, v17

    .line 1104
    .line 1105
    const/4 v3, 0x0

    .line 1106
    const/4 v4, 0x0

    .line 1107
    :cond_3f
    :goto_2a
    if-eqz v4, :cond_40

    .line 1108
    .line 1109
    const/4 v0, 0x2

    .line 1110
    if-eq v3, v0, :cond_68

    .line 1111
    .line 1112
    :cond_40
    const/16 v0, 0x8

    .line 1113
    .line 1114
    if-lez v24, :cond_4a

    .line 1115
    .line 1116
    iget-object v1, v2, Lv/f;->g0:Ljava/util/ArrayList;

    .line 1117
    .line 1118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1119
    .line 1120
    .line 1121
    move-result v1

    .line 1122
    iget-object v3, v2, Lv/f;->j0:Lw/c;

    .line 1123
    .line 1124
    const/4 v4, 0x0

    .line 1125
    :goto_2b
    if-ge v4, v1, :cond_44

    .line 1126
    .line 1127
    iget-object v6, v2, Lv/f;->g0:Ljava/util/ArrayList;

    .line 1128
    .line 1129
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v6

    .line 1133
    check-cast v6, Lv/e;

    .line 1134
    .line 1135
    instance-of v8, v6, Lv/i;

    .line 1136
    .line 1137
    if-eqz v8, :cond_41

    .line 1138
    .line 1139
    :goto_2c
    move-object/from16 v9, v22

    .line 1140
    .line 1141
    move-object/from16 v11, v23

    .line 1142
    .line 1143
    goto :goto_2d

    .line 1144
    :cond_41
    iget-object v8, v6, Lv/e;->d:Lw/k;

    .line 1145
    .line 1146
    iget-object v8, v8, Lw/n;->e:Lw/h;

    .line 1147
    .line 1148
    iget-boolean v8, v8, Lw/g;->j:Z

    .line 1149
    .line 1150
    if-eqz v8, :cond_42

    .line 1151
    .line 1152
    iget-object v8, v6, Lv/e;->e:Lw/m;

    .line 1153
    .line 1154
    iget-object v8, v8, Lw/n;->e:Lw/h;

    .line 1155
    .line 1156
    iget-boolean v8, v8, Lw/g;->j:Z

    .line 1157
    .line 1158
    if-eqz v8, :cond_42

    .line 1159
    .line 1160
    goto :goto_2c

    .line 1161
    :cond_42
    const/4 v8, 0x0

    .line 1162
    invoke-virtual {v6, v8}, Lv/e;->i(I)Lv/d;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v9

    .line 1166
    const/4 v8, 0x1

    .line 1167
    invoke-virtual {v6, v8}, Lv/e;->i(I)Lv/d;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v10

    .line 1171
    move-object/from16 v11, v23

    .line 1172
    .line 1173
    if-ne v9, v11, :cond_43

    .line 1174
    .line 1175
    iget v9, v6, Lv/e;->j:I

    .line 1176
    .line 1177
    if-eq v9, v8, :cond_43

    .line 1178
    .line 1179
    if-ne v10, v11, :cond_43

    .line 1180
    .line 1181
    iget v9, v6, Lv/e;->k:I

    .line 1182
    .line 1183
    if-eq v9, v8, :cond_43

    .line 1184
    .line 1185
    move-object/from16 v9, v22

    .line 1186
    .line 1187
    goto :goto_2d

    .line 1188
    :cond_43
    move-object/from16 v9, v22

    .line 1189
    .line 1190
    const/4 v8, 0x0

    .line 1191
    invoke-virtual {v9, v3, v6, v8}, Ls/g;->j(Lw/c;Lv/e;Z)Z

    .line 1192
    .line 1193
    .line 1194
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    .line 1195
    .line 1196
    move-object/from16 v22, v9

    .line 1197
    .line 1198
    move-object/from16 v23, v11

    .line 1199
    .line 1200
    goto :goto_2b

    .line 1201
    :cond_44
    move-object/from16 v9, v22

    .line 1202
    .line 1203
    check-cast v3, Landroidx/constraintlayout/widget/b;

    .line 1204
    .line 1205
    iget-object v1, v3, Landroidx/constraintlayout/widget/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1206
    .line 1207
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1208
    .line 1209
    .line 1210
    move-result v3

    .line 1211
    const/4 v8, 0x0

    .line 1212
    :goto_2e
    if-ge v8, v3, :cond_49

    .line 1213
    .line 1214
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v4

    .line 1218
    instance-of v6, v4, Landroidx/constraintlayout/widget/Placeholder;

    .line 1219
    .line 1220
    if-eqz v6, :cond_48

    .line 1221
    .line 1222
    check-cast v4, Landroidx/constraintlayout/widget/Placeholder;

    .line 1223
    .line 1224
    iget-object v6, v4, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 1225
    .line 1226
    if-nez v6, :cond_45

    .line 1227
    .line 1228
    goto :goto_2f

    .line 1229
    :cond_45
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v6

    .line 1233
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1234
    .line 1235
    iget-object v4, v4, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 1236
    .line 1237
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v4

    .line 1241
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1242
    .line 1243
    iget-object v10, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 1244
    .line 1245
    const/4 v11, 0x0

    .line 1246
    iput v11, v10, Lv/e;->X:I

    .line 1247
    .line 1248
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 1249
    .line 1250
    iget-object v13, v12, Lv/e;->J:[Lv/d;

    .line 1251
    .line 1252
    aget-object v13, v13, v11

    .line 1253
    .line 1254
    if-eq v13, v5, :cond_46

    .line 1255
    .line 1256
    invoke-virtual {v10}, Lv/e;->m()I

    .line 1257
    .line 1258
    .line 1259
    move-result v10

    .line 1260
    invoke-virtual {v12, v10}, Lv/e;->z(I)V

    .line 1261
    .line 1262
    .line 1263
    :cond_46
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 1264
    .line 1265
    iget-object v10, v6, Lv/e;->J:[Lv/d;

    .line 1266
    .line 1267
    const/4 v11, 0x1

    .line 1268
    aget-object v10, v10, v11

    .line 1269
    .line 1270
    if-eq v10, v5, :cond_47

    .line 1271
    .line 1272
    iget-object v10, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 1273
    .line 1274
    invoke-virtual {v10}, Lv/e;->j()I

    .line 1275
    .line 1276
    .line 1277
    move-result v10

    .line 1278
    invoke-virtual {v6, v10}, Lv/e;->w(I)V

    .line 1279
    .line 1280
    .line 1281
    :cond_47
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 1282
    .line 1283
    iput v0, v4, Lv/e;->X:I

    .line 1284
    .line 1285
    :cond_48
    :goto_2f
    add-int/lit8 v8, v8, 0x1

    .line 1286
    .line 1287
    goto :goto_2e

    .line 1288
    :cond_49
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 1289
    .line 1290
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1291
    .line 1292
    .line 1293
    move-result v3

    .line 1294
    if-lez v3, :cond_4b

    .line 1295
    .line 1296
    const/4 v8, 0x0

    .line 1297
    :goto_30
    if-ge v8, v3, :cond_4b

    .line 1298
    .line 1299
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v4

    .line 1303
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1304
    .line 1305
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    add-int/lit8 v8, v8, 0x1

    .line 1309
    .line 1310
    goto :goto_30

    .line 1311
    :cond_4a
    move-object/from16 v9, v22

    .line 1312
    .line 1313
    :cond_4b
    iget v1, v2, Lv/f;->s0:I

    .line 1314
    .line 1315
    iget-object v3, v9, Ls/g;->b:Ljava/lang/Object;

    .line 1316
    .line 1317
    check-cast v3, Ljava/util/ArrayList;

    .line 1318
    .line 1319
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1320
    .line 1321
    .line 1322
    move-result v4

    .line 1323
    move/from16 v5, v19

    .line 1324
    .line 1325
    move/from16 v6, v21

    .line 1326
    .line 1327
    if-lez v24, :cond_4c

    .line 1328
    .line 1329
    invoke-virtual {v9, v2, v5, v6}, Ls/g;->l(Lv/f;II)V

    .line 1330
    .line 1331
    .line 1332
    :cond_4c
    if-lez v4, :cond_66

    .line 1333
    .line 1334
    iget-object v8, v2, Lv/e;->J:[Lv/d;

    .line 1335
    .line 1336
    const/4 v10, 0x0

    .line 1337
    aget-object v11, v8, v10

    .line 1338
    .line 1339
    if-ne v11, v7, :cond_4d

    .line 1340
    .line 1341
    const/4 v11, 0x1

    .line 1342
    :goto_31
    const/4 v12, 0x1

    .line 1343
    goto :goto_32

    .line 1344
    :cond_4d
    const/4 v11, 0x0

    .line 1345
    goto :goto_31

    .line 1346
    :goto_32
    aget-object v8, v8, v12

    .line 1347
    .line 1348
    if-ne v8, v7, :cond_4e

    .line 1349
    .line 1350
    const/4 v8, 0x1

    .line 1351
    goto :goto_33

    .line 1352
    :cond_4e
    const/4 v8, 0x0

    .line 1353
    :goto_33
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 1354
    .line 1355
    .line 1356
    move-result v7

    .line 1357
    iget-object v12, v9, Ls/g;->d:Ljava/lang/Object;

    .line 1358
    .line 1359
    check-cast v12, Lv/f;

    .line 1360
    .line 1361
    iget v13, v12, Lv/e;->S:I

    .line 1362
    .line 1363
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    .line 1364
    .line 1365
    .line 1366
    move-result v7

    .line 1367
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 1368
    .line 1369
    .line 1370
    move-result v13

    .line 1371
    iget v12, v12, Lv/e;->T:I

    .line 1372
    .line 1373
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 1374
    .line 1375
    .line 1376
    move-result v12

    .line 1377
    move v14, v12

    .line 1378
    const/4 v12, 0x0

    .line 1379
    const/4 v13, 0x0

    .line 1380
    :goto_34
    if-ge v12, v4, :cond_54

    .line 1381
    .line 1382
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v17

    .line 1386
    move-object/from16 v0, v17

    .line 1387
    .line 1388
    check-cast v0, Lv/e;

    .line 1389
    .line 1390
    instance-of v15, v0, Lv/h;

    .line 1391
    .line 1392
    if-nez v15, :cond_4f

    .line 1393
    .line 1394
    move/from16 v19, v1

    .line 1395
    .line 1396
    move-object/from16 v2, v18

    .line 1397
    .line 1398
    goto/16 :goto_35

    .line 1399
    .line 1400
    :cond_4f
    invoke-virtual {v0}, Lv/e;->m()I

    .line 1401
    .line 1402
    .line 1403
    move-result v15

    .line 1404
    invoke-virtual {v0}, Lv/e;->j()I

    .line 1405
    .line 1406
    .line 1407
    move-result v10

    .line 1408
    move/from16 v19, v1

    .line 1409
    .line 1410
    move-object/from16 v2, v18

    .line 1411
    .line 1412
    const/4 v1, 0x1

    .line 1413
    invoke-virtual {v9, v2, v0, v1}, Ls/g;->j(Lw/c;Lv/e;Z)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v18

    .line 1417
    or-int v1, v13, v18

    .line 1418
    .line 1419
    invoke-virtual {v0}, Lv/e;->m()I

    .line 1420
    .line 1421
    .line 1422
    move-result v13

    .line 1423
    move/from16 v18, v1

    .line 1424
    .line 1425
    invoke-virtual {v0}, Lv/e;->j()I

    .line 1426
    .line 1427
    .line 1428
    move-result v1

    .line 1429
    if-eq v13, v15, :cond_51

    .line 1430
    .line 1431
    invoke-virtual {v0, v13}, Lv/e;->z(I)V

    .line 1432
    .line 1433
    .line 1434
    if-eqz v11, :cond_50

    .line 1435
    .line 1436
    invoke-virtual {v0}, Lv/e;->n()I

    .line 1437
    .line 1438
    .line 1439
    move-result v13

    .line 1440
    iget v15, v0, Lv/e;->L:I

    .line 1441
    .line 1442
    add-int/2addr v13, v15

    .line 1443
    if-le v13, v7, :cond_50

    .line 1444
    .line 1445
    invoke-virtual {v0}, Lv/e;->n()I

    .line 1446
    .line 1447
    .line 1448
    move-result v13

    .line 1449
    iget v15, v0, Lv/e;->L:I

    .line 1450
    .line 1451
    add-int/2addr v13, v15

    .line 1452
    const/4 v15, 0x4

    .line 1453
    invoke-virtual {v0, v15}, Lv/e;->h(I)Lv/c;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v15

    .line 1457
    invoke-virtual {v15}, Lv/c;->c()I

    .line 1458
    .line 1459
    .line 1460
    move-result v15

    .line 1461
    add-int/2addr v15, v13

    .line 1462
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    .line 1463
    .line 1464
    .line 1465
    move-result v7

    .line 1466
    :cond_50
    const/16 v18, 0x1

    .line 1467
    .line 1468
    :cond_51
    if-eq v1, v10, :cond_53

    .line 1469
    .line 1470
    invoke-virtual {v0, v1}, Lv/e;->w(I)V

    .line 1471
    .line 1472
    .line 1473
    if-eqz v8, :cond_52

    .line 1474
    .line 1475
    invoke-virtual {v0}, Lv/e;->o()I

    .line 1476
    .line 1477
    .line 1478
    move-result v1

    .line 1479
    iget v10, v0, Lv/e;->M:I

    .line 1480
    .line 1481
    add-int/2addr v1, v10

    .line 1482
    if-le v1, v14, :cond_52

    .line 1483
    .line 1484
    invoke-virtual {v0}, Lv/e;->o()I

    .line 1485
    .line 1486
    .line 1487
    move-result v1

    .line 1488
    iget v10, v0, Lv/e;->M:I

    .line 1489
    .line 1490
    add-int/2addr v1, v10

    .line 1491
    const/4 v10, 0x5

    .line 1492
    invoke-virtual {v0, v10}, Lv/e;->h(I)Lv/c;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v10

    .line 1496
    invoke-virtual {v10}, Lv/c;->c()I

    .line 1497
    .line 1498
    .line 1499
    move-result v10

    .line 1500
    add-int/2addr v10, v1

    .line 1501
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    .line 1502
    .line 1503
    .line 1504
    move-result v14

    .line 1505
    :cond_52
    const/16 v18, 0x1

    .line 1506
    .line 1507
    :cond_53
    check-cast v0, Lv/h;

    .line 1508
    .line 1509
    iget-boolean v0, v0, Lv/h;->o0:Z

    .line 1510
    .line 1511
    or-int v0, v18, v0

    .line 1512
    .line 1513
    move v13, v0

    .line 1514
    :goto_35
    add-int/lit8 v12, v12, 0x1

    .line 1515
    .line 1516
    move-object/from16 v18, v2

    .line 1517
    .line 1518
    move/from16 v1, v19

    .line 1519
    .line 1520
    const/16 v0, 0x8

    .line 1521
    .line 1522
    const/4 v10, 0x0

    .line 1523
    move-object/from16 v2, p1

    .line 1524
    .line 1525
    goto/16 :goto_34

    .line 1526
    .line 1527
    :cond_54
    move/from16 v19, v1

    .line 1528
    .line 1529
    move-object/from16 v2, v18

    .line 1530
    .line 1531
    const/4 v0, 0x0

    .line 1532
    :goto_36
    const/4 v1, 0x2

    .line 1533
    if-ge v0, v1, :cond_62

    .line 1534
    .line 1535
    const/4 v10, 0x0

    .line 1536
    :goto_37
    if-ge v10, v4, :cond_60

    .line 1537
    .line 1538
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v12

    .line 1542
    check-cast v12, Lv/e;

    .line 1543
    .line 1544
    instance-of v15, v12, Lv/j;

    .line 1545
    .line 1546
    if-eqz v15, :cond_56

    .line 1547
    .line 1548
    instance-of v15, v12, Lv/h;

    .line 1549
    .line 1550
    if-eqz v15, :cond_55

    .line 1551
    .line 1552
    goto :goto_39

    .line 1553
    :cond_55
    :goto_38
    const/16 v1, 0x8

    .line 1554
    .line 1555
    goto :goto_3a

    .line 1556
    :cond_56
    :goto_39
    instance-of v15, v12, Lv/i;

    .line 1557
    .line 1558
    if-eqz v15, :cond_57

    .line 1559
    .line 1560
    goto :goto_38

    .line 1561
    :cond_57
    iget v15, v12, Lv/e;->X:I

    .line 1562
    .line 1563
    const/16 v1, 0x8

    .line 1564
    .line 1565
    if-ne v15, v1, :cond_58

    .line 1566
    .line 1567
    goto :goto_3a

    .line 1568
    :cond_58
    iget-object v15, v12, Lv/e;->d:Lw/k;

    .line 1569
    .line 1570
    iget-object v15, v15, Lw/n;->e:Lw/h;

    .line 1571
    .line 1572
    iget-boolean v15, v15, Lw/g;->j:Z

    .line 1573
    .line 1574
    if-eqz v15, :cond_59

    .line 1575
    .line 1576
    iget-object v15, v12, Lv/e;->e:Lw/m;

    .line 1577
    .line 1578
    iget-object v15, v15, Lw/n;->e:Lw/h;

    .line 1579
    .line 1580
    iget-boolean v15, v15, Lw/g;->j:Z

    .line 1581
    .line 1582
    if-eqz v15, :cond_59

    .line 1583
    .line 1584
    goto :goto_3a

    .line 1585
    :cond_59
    instance-of v15, v12, Lv/h;

    .line 1586
    .line 1587
    if-eqz v15, :cond_5a

    .line 1588
    .line 1589
    :goto_3a
    move-object/from16 v22, v2

    .line 1590
    .line 1591
    move-object/from16 v18, v3

    .line 1592
    .line 1593
    move/from16 v21, v4

    .line 1594
    .line 1595
    const/4 v2, 0x5

    .line 1596
    const/4 v15, 0x4

    .line 1597
    goto/16 :goto_3f

    .line 1598
    .line 1599
    :cond_5a
    invoke-virtual {v12}, Lv/e;->m()I

    .line 1600
    .line 1601
    .line 1602
    move-result v15

    .line 1603
    invoke-virtual {v12}, Lv/e;->j()I

    .line 1604
    .line 1605
    .line 1606
    move-result v1

    .line 1607
    move-object/from16 v18, v3

    .line 1608
    .line 1609
    iget v3, v12, Lv/e;->R:I

    .line 1610
    .line 1611
    move/from16 v21, v4

    .line 1612
    .line 1613
    const/4 v4, 0x1

    .line 1614
    invoke-virtual {v9, v2, v12, v4}, Ls/g;->j(Lw/c;Lv/e;Z)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v20

    .line 1618
    or-int v13, v13, v20

    .line 1619
    .line 1620
    invoke-virtual {v12}, Lv/e;->m()I

    .line 1621
    .line 1622
    .line 1623
    move-result v4

    .line 1624
    move-object/from16 v22, v2

    .line 1625
    .line 1626
    invoke-virtual {v12}, Lv/e;->j()I

    .line 1627
    .line 1628
    .line 1629
    move-result v2

    .line 1630
    if-eq v4, v15, :cond_5c

    .line 1631
    .line 1632
    invoke-virtual {v12, v4}, Lv/e;->z(I)V

    .line 1633
    .line 1634
    .line 1635
    if-eqz v11, :cond_5b

    .line 1636
    .line 1637
    invoke-virtual {v12}, Lv/e;->n()I

    .line 1638
    .line 1639
    .line 1640
    move-result v4

    .line 1641
    iget v13, v12, Lv/e;->L:I

    .line 1642
    .line 1643
    add-int/2addr v4, v13

    .line 1644
    if-le v4, v7, :cond_5b

    .line 1645
    .line 1646
    invoke-virtual {v12}, Lv/e;->n()I

    .line 1647
    .line 1648
    .line 1649
    move-result v4

    .line 1650
    iget v13, v12, Lv/e;->L:I

    .line 1651
    .line 1652
    add-int/2addr v4, v13

    .line 1653
    const/4 v15, 0x4

    .line 1654
    invoke-virtual {v12, v15}, Lv/e;->h(I)Lv/c;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v13

    .line 1658
    invoke-virtual {v13}, Lv/c;->c()I

    .line 1659
    .line 1660
    .line 1661
    move-result v13

    .line 1662
    add-int/2addr v13, v4

    .line 1663
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    .line 1664
    .line 1665
    .line 1666
    move-result v7

    .line 1667
    goto :goto_3b

    .line 1668
    :cond_5b
    const/4 v15, 0x4

    .line 1669
    :goto_3b
    const/4 v13, 0x1

    .line 1670
    goto :goto_3c

    .line 1671
    :cond_5c
    const/4 v15, 0x4

    .line 1672
    :goto_3c
    if-eq v2, v1, :cond_5e

    .line 1673
    .line 1674
    invoke-virtual {v12, v2}, Lv/e;->w(I)V

    .line 1675
    .line 1676
    .line 1677
    if-eqz v8, :cond_5d

    .line 1678
    .line 1679
    invoke-virtual {v12}, Lv/e;->o()I

    .line 1680
    .line 1681
    .line 1682
    move-result v1

    .line 1683
    iget v2, v12, Lv/e;->M:I

    .line 1684
    .line 1685
    add-int/2addr v1, v2

    .line 1686
    if-le v1, v14, :cond_5d

    .line 1687
    .line 1688
    invoke-virtual {v12}, Lv/e;->o()I

    .line 1689
    .line 1690
    .line 1691
    move-result v1

    .line 1692
    iget v2, v12, Lv/e;->M:I

    .line 1693
    .line 1694
    add-int/2addr v1, v2

    .line 1695
    const/4 v2, 0x5

    .line 1696
    invoke-virtual {v12, v2}, Lv/e;->h(I)Lv/c;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v4

    .line 1700
    invoke-virtual {v4}, Lv/c;->c()I

    .line 1701
    .line 1702
    .line 1703
    move-result v4

    .line 1704
    add-int/2addr v4, v1

    .line 1705
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 1706
    .line 1707
    .line 1708
    move-result v14

    .line 1709
    goto :goto_3d

    .line 1710
    :cond_5d
    const/4 v2, 0x5

    .line 1711
    :goto_3d
    const/4 v13, 0x1

    .line 1712
    goto :goto_3e

    .line 1713
    :cond_5e
    const/4 v2, 0x5

    .line 1714
    :goto_3e
    iget-boolean v1, v12, Lv/e;->w:Z

    .line 1715
    .line 1716
    if-eqz v1, :cond_5f

    .line 1717
    .line 1718
    iget v1, v12, Lv/e;->R:I

    .line 1719
    .line 1720
    if-eq v3, v1, :cond_5f

    .line 1721
    .line 1722
    const/4 v13, 0x1

    .line 1723
    :cond_5f
    :goto_3f
    add-int/lit8 v10, v10, 0x1

    .line 1724
    .line 1725
    move-object/from16 v3, v18

    .line 1726
    .line 1727
    move/from16 v4, v21

    .line 1728
    .line 1729
    move-object/from16 v2, v22

    .line 1730
    .line 1731
    const/4 v1, 0x2

    .line 1732
    goto/16 :goto_37

    .line 1733
    .line 1734
    :cond_60
    move-object/from16 v22, v2

    .line 1735
    .line 1736
    move-object/from16 v18, v3

    .line 1737
    .line 1738
    move/from16 v21, v4

    .line 1739
    .line 1740
    const/4 v2, 0x5

    .line 1741
    const/4 v15, 0x4

    .line 1742
    move-object/from16 v1, p1

    .line 1743
    .line 1744
    move-object/from16 v3, v22

    .line 1745
    .line 1746
    if-eqz v13, :cond_61

    .line 1747
    .line 1748
    invoke-virtual {v9, v1, v5, v6}, Ls/g;->l(Lv/f;II)V

    .line 1749
    .line 1750
    .line 1751
    const/4 v13, 0x0

    .line 1752
    :cond_61
    add-int/lit8 v0, v0, 0x1

    .line 1753
    .line 1754
    move-object v2, v3

    .line 1755
    move-object/from16 v3, v18

    .line 1756
    .line 1757
    move/from16 v4, v21

    .line 1758
    .line 1759
    goto/16 :goto_36

    .line 1760
    .line 1761
    :cond_62
    move-object/from16 v1, p1

    .line 1762
    .line 1763
    if-eqz v13, :cond_65

    .line 1764
    .line 1765
    invoke-virtual {v9, v1, v5, v6}, Ls/g;->l(Lv/f;II)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 1769
    .line 1770
    .line 1771
    move-result v0

    .line 1772
    if-ge v0, v7, :cond_63

    .line 1773
    .line 1774
    invoke-virtual {v1, v7}, Lv/e;->z(I)V

    .line 1775
    .line 1776
    .line 1777
    const/4 v8, 0x1

    .line 1778
    goto :goto_40

    .line 1779
    :cond_63
    const/4 v8, 0x0

    .line 1780
    :goto_40
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 1781
    .line 1782
    .line 1783
    move-result v0

    .line 1784
    if-ge v0, v14, :cond_64

    .line 1785
    .line 1786
    invoke-virtual {v1, v14}, Lv/e;->w(I)V

    .line 1787
    .line 1788
    .line 1789
    const/4 v8, 0x1

    .line 1790
    :cond_64
    if-eqz v8, :cond_65

    .line 1791
    .line 1792
    invoke-virtual {v9, v1, v5, v6}, Ls/g;->l(Lv/f;II)V

    .line 1793
    .line 1794
    .line 1795
    :cond_65
    :goto_41
    move/from16 v0, v19

    .line 1796
    .line 1797
    goto :goto_42

    .line 1798
    :cond_66
    move/from16 v19, v1

    .line 1799
    .line 1800
    move-object v1, v2

    .line 1801
    goto :goto_41

    .line 1802
    :goto_42
    iput v0, v1, Lv/f;->s0:I

    .line 1803
    .line 1804
    const/16 v1, 0x100

    .line 1805
    .line 1806
    and-int/2addr v0, v1

    .line 1807
    if-ne v0, v1, :cond_67

    .line 1808
    .line 1809
    const/4 v8, 0x1

    .line 1810
    goto :goto_43

    .line 1811
    :cond_67
    const/4 v8, 0x0

    .line 1812
    :goto_43
    sput-boolean v8, Lu/e;->p:Z

    .line 1813
    .line 1814
    :cond_68
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 p4, 0x0

    .line 11
    :goto_0
    if-ge p4, p1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v1}, Lv/e;->n()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1}, Lv/e;->o()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Lv/e;->m()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/2addr v3, v0

    .line 62
    invoke-virtual {v1}, Lv/e;->j()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v2

    .line 67
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 68
    .line 69
    .line 70
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 75
    .line 76
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p5

    .line 80
    if-eqz p5, :cond_2

    .line 81
    .line 82
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-lez p2, :cond_4

    .line 98
    .line 99
    :goto_2
    if-ge p3, p2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    check-cast p4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 106
    .line 107
    invoke-virtual {p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->j()V

    .line 108
    .line 109
    .line 110
    add-int/lit8 p3, p3, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 8
    .line 9
    iput-boolean v0, v6, Lv/f;->k0:Z

    .line 10
    .line 11
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1d

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    const/4 v3, 0x1

    .line 24
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v8, 0x0

    .line 42
    :goto_1
    if-eqz v8, :cond_1c

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_2
    if-ge v1, v10, :cond_3

    .line 54
    .line 55
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lv/e;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    invoke-virtual {v2}, Lv/e;->t()V

    .line 67
    .line 68
    .line 69
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/4 v11, 0x0

    .line 73
    const/4 v1, -0x1

    .line 74
    if-eqz v9, :cond_c

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    :goto_4
    if-ge v2, v10, :cond_c

    .line 78
    .line 79
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    instance-of v13, v5, Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v13, :cond_6

    .line 106
    .line 107
    iget-object v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 108
    .line 109
    if-nez v13, :cond_4

    .line 110
    .line 111
    new-instance v13, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 117
    .line 118
    :cond_4
    const-string v13, "/"

    .line 119
    .line 120
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eq v13, v1, :cond_5

    .line 125
    .line 126
    add-int/lit8 v13, v13, 0x1

    .line 127
    .line 128
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    goto :goto_5

    .line 133
    :cond_5
    move-object v13, v5

    .line 134
    :goto_5
    iget-object v14, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v14, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_6
    const/16 v12, 0x2f

    .line 140
    .line 141
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-eq v12, v1, :cond_7

    .line 146
    .line 147
    add-int/lit8 v12, v12, 0x1

    .line 148
    .line 149
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_8

    .line 158
    .line 159
    :goto_6
    move-object v4, v6

    .line 160
    goto :goto_7

    .line 161
    :cond_8
    iget-object v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 162
    .line 163
    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    check-cast v12, Landroid/view/View;

    .line 168
    .line 169
    if-nez v12, :cond_9

    .line 170
    .line 171
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    if-eqz v12, :cond_9

    .line 176
    .line 177
    if-eq v12, v7, :cond_9

    .line 178
    .line 179
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-ne v4, v7, :cond_9

    .line 184
    .line 185
    invoke-virtual {v7, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    if-ne v12, v7, :cond_a

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_a
    if-nez v12, :cond_b

    .line 192
    .line 193
    move-object v4, v11

    .line 194
    goto :goto_7

    .line 195
    :cond_b
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 200
    .line 201
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 202
    .line 203
    :goto_7
    iput-object v5, v4, Lv/e;->Y:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 206
    .line 207
    goto/16 :goto_4

    .line 208
    .line 209
    :cond_c
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 210
    .line 211
    if-eq v2, v1, :cond_e

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    :goto_8
    if-ge v2, v10, :cond_e

    .line 215
    .line 216
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 225
    .line 226
    if-ne v5, v12, :cond_d

    .line 227
    .line 228
    instance-of v5, v4, Landroidx/constraintlayout/widget/Constraints;

    .line 229
    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    check-cast v4, Landroidx/constraintlayout/widget/Constraints;

    .line 233
    .line 234
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/d;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    iput-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 239
    .line 240
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_e
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 244
    .line 245
    if-eqz v2, :cond_f

    .line 246
    .line 247
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 248
    .line 249
    .line 250
    :cond_f
    iget-object v2, v6, Lv/f;->g0:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 253
    .line 254
    .line 255
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-lez v4, :cond_15

    .line 262
    .line 263
    const/4 v5, 0x0

    .line 264
    :goto_9
    if-ge v5, v4, :cond_15

    .line 265
    .line 266
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 271
    .line 272
    invoke-virtual {v12}, Landroid/view/View;->isInEditMode()Z

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    if-eqz v13, :cond_10

    .line 277
    .line 278
    iget-object v13, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->e:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_10
    iget-object v13, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Lv/j;

    .line 284
    .line 285
    if-nez v13, :cond_11

    .line 286
    .line 287
    goto :goto_b

    .line 288
    :cond_11
    iput v0, v13, Lv/j;->h0:I

    .line 289
    .line 290
    iget-object v13, v13, Lv/j;->g0:[Lv/e;

    .line 291
    .line 292
    invoke-static {v13, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    const/4 v13, 0x0

    .line 296
    :goto_a
    iget v14, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->b:I

    .line 297
    .line 298
    if-ge v13, v14, :cond_14

    .line 299
    .line 300
    iget-object v14, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    .line 301
    .line 302
    aget v14, v14, v13

    .line 303
    .line 304
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v15

    .line 308
    if-nez v15, :cond_12

    .line 309
    .line 310
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    iget-object v11, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Ljava/util/HashMap;

    .line 315
    .line 316
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    check-cast v14, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v12, v7, v14}, Landroidx/constraintlayout/widget/ConstraintHelper;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_12

    .line 327
    .line 328
    iget-object v15, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    .line 329
    .line 330
    aput v0, v15, v13

    .line 331
    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v15

    .line 336
    invoke-virtual {v11, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    :cond_12
    if-eqz v15, :cond_13

    .line 344
    .line 345
    iget-object v0, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Lv/j;

    .line 346
    .line 347
    invoke-virtual {v7, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lv/e;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    invoke-virtual {v0, v11}, Lv/j;->C(Lv/e;)V

    .line 352
    .line 353
    .line 354
    :cond_13
    add-int/lit8 v13, v13, 0x1

    .line 355
    .line 356
    const/4 v0, 0x0

    .line 357
    const/4 v11, 0x0

    .line 358
    goto :goto_a

    .line 359
    :cond_14
    iget-object v0, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Lv/j;

    .line 360
    .line 361
    invoke-virtual {v0}, Lv/j;->D()V

    .line 362
    .line 363
    .line 364
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 365
    .line 366
    const/4 v0, 0x0

    .line 367
    const/4 v11, 0x0

    .line 368
    goto :goto_9

    .line 369
    :cond_15
    const/4 v0, 0x0

    .line 370
    :goto_c
    if-ge v0, v10, :cond_18

    .line 371
    .line 372
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    instance-of v4, v2, Landroidx/constraintlayout/widget/Placeholder;

    .line 377
    .line 378
    if-eqz v4, :cond_17

    .line 379
    .line 380
    check-cast v2, Landroidx/constraintlayout/widget/Placeholder;

    .line 381
    .line 382
    iget v4, v2, Landroidx/constraintlayout/widget/Placeholder;->a:I

    .line 383
    .line 384
    if-ne v4, v1, :cond_16

    .line 385
    .line 386
    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-nez v4, :cond_16

    .line 391
    .line 392
    iget v4, v2, Landroidx/constraintlayout/widget/Placeholder;->c:I

    .line 393
    .line 394
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    :cond_16
    iget v4, v2, Landroidx/constraintlayout/widget/Placeholder;->a:I

    .line 398
    .line 399
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    iput-object v4, v2, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 404
    .line 405
    if-eqz v4, :cond_17

    .line 406
    .line 407
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 412
    .line 413
    iput-boolean v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 414
    .line 415
    iget-object v4, v2, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 416
    .line 417
    const/4 v5, 0x0

    .line 418
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_17
    const/4 v5, 0x0

    .line 426
    :goto_d
    add-int/lit8 v0, v0, 0x1

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_18
    const/4 v5, 0x0

    .line 430
    iget-object v11, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 431
    .line 432
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v11, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    invoke-virtual {v11, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    const/4 v0, 0x0

    .line 446
    :goto_e
    if-ge v0, v10, :cond_19

    .line 447
    .line 448
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lv/e;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-virtual {v11, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    add-int/lit8 v0, v0, 0x1

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_19
    const/4 v12, 0x0

    .line 467
    :goto_f
    if-ge v12, v10, :cond_1c

    .line 468
    .line 469
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lv/e;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    if-nez v3, :cond_1a

    .line 478
    .line 479
    const/4 v13, 0x0

    .line 480
    goto :goto_11

    .line 481
    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    move-object v4, v0

    .line 486
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 487
    .line 488
    iget-object v0, v6, Lv/f;->g0:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    iget-object v0, v3, Lv/e;->K:Lv/e;

    .line 494
    .line 495
    if-eqz v0, :cond_1b

    .line 496
    .line 497
    check-cast v0, Lv/f;

    .line 498
    .line 499
    iget-object v0, v0, Lv/f;->g0:Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    const/4 v13, 0x0

    .line 505
    iput-object v13, v3, Lv/e;->K:Lv/e;

    .line 506
    .line 507
    goto :goto_10

    .line 508
    :cond_1b
    const/4 v13, 0x0

    .line 509
    :goto_10
    iput-object v6, v3, Lv/e;->K:Lv/e;

    .line 510
    .line 511
    move-object/from16 v0, p0

    .line 512
    .line 513
    move v1, v9

    .line 514
    move-object v5, v11

    .line 515
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(ZLandroid/view/View;Lv/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 516
    .line 517
    .line 518
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 519
    .line 520
    goto :goto_f

    .line 521
    :cond_1c
    if-eqz v8, :cond_1d

    .line 522
    .line 523
    invoke-virtual {v6}, Lv/f;->G()V

    .line 524
    .line 525
    .line 526
    :cond_1d
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 527
    .line 528
    move/from16 v1, p1

    .line 529
    .line 530
    move/from16 v2, p2

    .line 531
    .line 532
    invoke-virtual {v7, v6, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v6}, Lv/e;->m()I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    invoke-virtual {v6}, Lv/e;->j()I

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    iget-boolean v5, v6, Lv/f;->t0:Z

    .line 544
    .line 545
    iget-boolean v6, v6, Lv/f;->u0:Z

    .line 546
    .line 547
    move-object/from16 v0, p0

    .line 548
    .line 549
    move/from16 v1, p1

    .line 550
    .line 551
    move/from16 v2, p2

    .line 552
    .line 553
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(IIIIZZ)V

    .line 554
    .line 555
    .line 556
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lv/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Lv/i;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    new-instance v1, Lv/i;

    .line 24
    .line 25
    invoke-direct {v1}, Lv/i;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Lv/e;

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 31
    .line 32
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lv/i;->C(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->l()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 52
    .line 53
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 76
    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lv/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 18
    .line 19
    iget-object v1, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lv/e;->K:Lv/e;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 34
    .line 35
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Landroidx/constraintlayout/widget/d;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Ly/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 4
    .line 5
    iput p1, v0, Lv/f;->s0:I

    .line 6
    .line 7
    const/16 v0, 0x100

    .line 8
    .line 9
    and-int/2addr p1, v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    sput-boolean p1, Lu/e;->p:Z

    .line 16
    .line 17
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
