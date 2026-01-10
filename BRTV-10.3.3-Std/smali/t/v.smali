.class public final Lt/v;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field public d:I

.field public final synthetic e:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt/v;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    .line 6
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    iput p1, p0, Lt/v;->a:F

    .line 9
    .line 10
    iput p1, p0, Lt/v;->b:F

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lt/v;->c:I

    .line 14
    .line 15
    iput p1, p0, Lt/v;->d:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget v0, p0, Lt/v;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lt/v;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget v3, p0, Lt/v;->d:I

    .line 9
    .line 10
    if-eq v3, v2, :cond_13

    .line 11
    .line 12
    :cond_0
    sget-object v3, Lt/x;->b:Lt/x;

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lt/v;->d:I

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B(I)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_1
    iget v4, p0, Lt/v;->d:I

    .line 24
    .line 25
    if-ne v4, v2, :cond_11

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 28
    .line 29
    .line 30
    iput v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 31
    .line 32
    iput v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 33
    .line 34
    iput v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 35
    .line 36
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    .line 37
    .line 38
    if-eqz v4, :cond_10

    .line 39
    .line 40
    int-to-float v5, v2

    .line 41
    iget v6, v4, Ln0/e;->c:I

    .line 42
    .line 43
    iget-object v7, v4, Ln0/e;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v7, Landroid/util/SparseArray;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    iget-object v9, v4, Ln0/e;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    if-ne v6, v0, :cond_a

    .line 53
    .line 54
    if-ne v0, v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ly/b;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ly/b;

    .line 68
    .line 69
    :goto_0
    iget v6, v4, Ln0/e;->d:I

    .line 70
    .line 71
    if-eq v6, v2, :cond_3

    .line 72
    .line 73
    iget-object v7, v0, Ly/b;->b:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Ly/c;

    .line 80
    .line 81
    invoke-virtual {v6, v5, v5}, Ly/c;->a(FF)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_3
    :goto_1
    iget-object v6, v0, Ly/b;->b:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-ge v8, v7, :cond_5

    .line 96
    .line 97
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ly/c;

    .line 102
    .line 103
    invoke-virtual {v6, v5, v5}, Ly/c;->a(FF)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const/4 v8, -0x1

    .line 114
    :goto_2
    iget v5, v4, Ln0/e;->d:I

    .line 115
    .line 116
    if-ne v5, v8, :cond_6

    .line 117
    .line 118
    goto/16 :goto_9

    .line 119
    .line 120
    :cond_6
    iget-object v0, v0, Ly/b;->b:Ljava/util/ArrayList;

    .line 121
    .line 122
    if-ne v8, v2, :cond_7

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    goto :goto_3

    .line 126
    :cond_7
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ly/c;

    .line 131
    .line 132
    iget-object v5, v5, Ly/c;->f:Landroidx/constraintlayout/widget/d;

    .line 133
    .line 134
    :goto_3
    if-ne v8, v2, :cond_8

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ly/c;

    .line 142
    .line 143
    iget v0, v0, Ly/c;->e:I

    .line 144
    .line 145
    :goto_4
    if-nez v5, :cond_9

    .line 146
    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_9
    iput v8, v4, Ln0/e;->d:I

    .line 150
    .line 151
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :cond_a
    iput v0, v4, Ln0/e;->c:I

    .line 157
    .line 158
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ly/b;

    .line 163
    .line 164
    :goto_5
    iget-object v7, v6, Ly/b;->b:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-ge v8, v10, :cond_c

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Ly/c;

    .line 177
    .line 178
    invoke-virtual {v7, v5, v5}, Ly/c;->a(FF)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_b

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_c
    const/4 v8, -0x1

    .line 189
    :goto_6
    iget-object v5, v6, Ly/b;->b:Ljava/util/ArrayList;

    .line 190
    .line 191
    if-ne v8, v2, :cond_d

    .line 192
    .line 193
    iget-object v6, v6, Ly/b;->d:Landroidx/constraintlayout/widget/d;

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_d
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Ly/c;

    .line 201
    .line 202
    iget-object v6, v6, Ly/c;->f:Landroidx/constraintlayout/widget/d;

    .line 203
    .line 204
    :goto_7
    if-ne v8, v2, :cond_e

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_e
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Ly/c;

    .line 212
    .line 213
    iget v5, v5, Ly/c;->e:I

    .line 214
    .line 215
    :goto_8
    if-nez v6, :cond_f

    .line 216
    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v5, "NO Constraint set found ! id="

    .line 220
    .line 221
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, ", dim =-1.0, -1.0"

    .line 228
    .line 229
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v4, "ConstraintLayoutStates"

    .line 237
    .line 238
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_f
    iput v8, v4, Ln0/e;->d:I

    .line 243
    .line 244
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 245
    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_10
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 249
    .line 250
    if-eqz v4, :cond_12

    .line 251
    .line 252
    invoke-virtual {v4, v0}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 257
    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_11
    invoke-virtual {v1, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(II)V

    .line 261
    .line 262
    .line 263
    :cond_12
    :goto_9
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 264
    .line 265
    .line 266
    :cond_13
    iget v0, p0, Lt/v;->b:F

    .line 267
    .line 268
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_15

    .line 273
    .line 274
    iget v0, p0, Lt/v;->a:F

    .line 275
    .line 276
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_14

    .line 281
    .line 282
    return-void

    .line 283
    :cond_14
    iget v0, p0, Lt/v;->a:F

    .line 284
    .line 285
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_15
    iget v0, p0, Lt/v;->a:F

    .line 290
    .line 291
    iget v3, p0, Lt/v;->b:F

    .line 292
    .line 293
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y(FF)V

    .line 294
    .line 295
    .line 296
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 297
    .line 298
    iput v0, p0, Lt/v;->a:F

    .line 299
    .line 300
    iput v0, p0, Lt/v;->b:F

    .line 301
    .line 302
    iput v2, p0, Lt/v;->c:I

    .line 303
    .line 304
    iput v2, p0, Lt/v;->d:I

    .line 305
    .line 306
    return-void
.end method
