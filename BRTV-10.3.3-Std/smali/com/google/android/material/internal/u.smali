.class public final Lcom/google/android/material/internal/u;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final m:I

.field public static n:Z

.field public static o:Ljava/lang/reflect/Constructor;

.field public static p:Landroid/text/TextDirectionHeuristic;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;

.field public final c:I

.field public d:I

.field public e:Landroid/text/Layout$Alignment;

.field public f:I

.field public g:F

.field public h:F

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    sput v0, Lcom/google/android/material/internal/u;->m:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/u;->a:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/internal/u;->b:Landroid/text/TextPaint;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/internal/u;->c:I

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/material/internal/u;->d:I

    .line 15
    .line 16
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/material/internal/u;->e:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    const p1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/material/internal/u;->f:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/google/android/material/internal/u;->g:F

    .line 27
    .line 28
    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    iput p1, p0, Lcom/google/android/material/internal/u;->h:F

    .line 31
    .line 32
    sget p1, Lcom/google/android/material/internal/u;->m:I

    .line 33
    .line 34
    iput p1, p0, Lcom/google/android/material/internal/u;->i:I

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/material/internal/u;->j:Z

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/google/android/material/internal/u;->l:Landroid/text/TextUtils$TruncateAt;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()Landroid/text/StaticLayout;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v6, 0x7

    .line 4
    const/4 v7, 0x6

    .line 5
    const/4 v8, 0x5

    .line 6
    const/4 v9, 0x4

    .line 7
    const/4 v10, 0x3

    .line 8
    const/4 v11, 0x2

    .line 9
    const/16 v12, 0xd

    .line 10
    .line 11
    const/4 v13, 0x1

    .line 12
    const/4 v14, 0x0

    .line 13
    iget-object v15, v1, Lcom/google/android/material/internal/u;->a:Ljava/lang/CharSequence;

    .line 14
    .line 15
    if-nez v15, :cond_0

    .line 16
    .line 17
    const-string v15, ""

    .line 18
    .line 19
    iput-object v15, v1, Lcom/google/android/material/internal/u;->a:Ljava/lang/CharSequence;

    .line 20
    .line 21
    :cond_0
    iget v15, v1, Lcom/google/android/material/internal/u;->c:I

    .line 22
    .line 23
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v15

    .line 27
    iget-object v0, v1, Lcom/google/android/material/internal/u;->a:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget v2, v1, Lcom/google/android/material/internal/u;->f:I

    .line 30
    .line 31
    iget-object v3, v1, Lcom/google/android/material/internal/u;->b:Landroid/text/TextPaint;

    .line 32
    .line 33
    if-ne v2, v13, :cond_1

    .line 34
    .line 35
    int-to-float v2, v15

    .line 36
    iget-object v4, v1, Lcom/google/android/material/internal/u;->l:Landroid/text/TextUtils$TruncateAt;

    .line 37
    .line 38
    invoke-static {v0, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v4, v1, Lcom/google/android/material/internal/u;->d:I

    .line 47
    .line 48
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iput v2, v1, Lcom/google/android/material/internal/u;->d:I

    .line 53
    .line 54
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/high16 v18, 0x3f800000    # 1.0f

    .line 57
    .line 58
    const/16 v19, 0x0

    .line 59
    .line 60
    const/16 v5, 0x17

    .line 61
    .line 62
    if-lt v4, v5, :cond_8

    .line 63
    .line 64
    iget-boolean v4, v1, Lcom/google/android/material/internal/u;->k:Z

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    iget v4, v1, Lcom/google/android/material/internal/u;->f:I

    .line 69
    .line 70
    if-ne v4, v13, :cond_2

    .line 71
    .line 72
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 73
    .line 74
    iput-object v4, v1, Lcom/google/android/material/internal/u;->e:Landroid/text/Layout$Alignment;

    .line 75
    .line 76
    :cond_2
    invoke-static {v0, v2, v3, v15}, Landroidx/media3/exoplayer/mediacodec/h;->e(Ljava/lang/CharSequence;ILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, v1, Lcom/google/android/material/internal/u;->e:Landroid/text/Layout$Alignment;

    .line 81
    .line 82
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/h;->q(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)V

    .line 83
    .line 84
    .line 85
    iget-boolean v2, v1, Lcom/google/android/material/internal/u;->j:Z

    .line 86
    .line 87
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/h;->s(Landroid/text/StaticLayout$Builder;Z)V

    .line 88
    .line 89
    .line 90
    iget-boolean v2, v1, Lcom/google/android/material/internal/u;->k:Z

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 98
    .line 99
    :goto_0
    invoke-static {v0, v2}, Landroid/support/v4/media/a;->s(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v1, Lcom/google/android/material/internal/u;->l:Landroid/text/TextUtils$TruncateAt;

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/h;->r(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget v2, v1, Lcom/google/android/material/internal/u;->f:I

    .line 110
    .line 111
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/h;->p(Landroid/text/StaticLayout$Builder;I)V

    .line 112
    .line 113
    .line 114
    iget v2, v1, Lcom/google/android/material/internal/u;->g:F

    .line 115
    .line 116
    cmpl-float v3, v2, v19

    .line 117
    .line 118
    if-nez v3, :cond_5

    .line 119
    .line 120
    iget v3, v1, Lcom/google/android/material/internal/u;->h:F

    .line 121
    .line 122
    cmpl-float v3, v3, v18

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    :cond_5
    iget v3, v1, Lcom/google/android/material/internal/u;->h:F

    .line 127
    .line 128
    invoke-static {v0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/h;->o(Landroid/text/StaticLayout$Builder;FF)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget v2, v1, Lcom/google/android/material/internal/u;->f:I

    .line 132
    .line 133
    if-le v2, v13, :cond_7

    .line 134
    .line 135
    iget v2, v1, Lcom/google/android/material/internal/u;->i:I

    .line 136
    .line 137
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/h;->y(Landroid/text/StaticLayout$Builder;I)V

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/h;->f(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :cond_8
    sget-boolean v2, Lcom/google/android/material/internal/u;->n:Z

    .line 146
    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/material/internal/u;->k:Z

    .line 151
    .line 152
    if-eqz v2, :cond_a

    .line 153
    .line 154
    if-lt v4, v5, :cond_a

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    goto :goto_1

    .line 158
    :cond_a
    const/4 v2, 0x0

    .line 159
    :goto_1
    if-eqz v2, :cond_b

    .line 160
    .line 161
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_b
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 168
    .line 169
    :goto_2
    sput-object v2, Lcom/google/android/material/internal/u;->p:Landroid/text/TextDirectionHeuristic;

    .line 170
    .line 171
    new-array v2, v12, [Ljava/lang/Class;

    .line 172
    .line 173
    const-class v4, Ljava/lang/CharSequence;

    .line 174
    .line 175
    aput-object v4, v2, v14

    .line 176
    .line 177
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 178
    .line 179
    aput-object v4, v2, v13

    .line 180
    .line 181
    aput-object v4, v2, v11

    .line 182
    .line 183
    const-class v5, Landroid/text/TextPaint;

    .line 184
    .line 185
    aput-object v5, v2, v10

    .line 186
    .line 187
    aput-object v4, v2, v9

    .line 188
    .line 189
    const-class v5, Landroid/text/Layout$Alignment;

    .line 190
    .line 191
    aput-object v5, v2, v8

    .line 192
    .line 193
    const-class v5, Landroid/text/TextDirectionHeuristic;

    .line 194
    .line 195
    aput-object v5, v2, v7

    .line 196
    .line 197
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 198
    .line 199
    aput-object v5, v2, v6

    .line 200
    .line 201
    const/16 v20, 0x8

    .line 202
    .line 203
    aput-object v5, v2, v20

    .line 204
    .line 205
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 206
    .line 207
    const/16 v17, 0x9

    .line 208
    .line 209
    aput-object v5, v2, v17

    .line 210
    .line 211
    const-class v5, Landroid/text/TextUtils$TruncateAt;

    .line 212
    .line 213
    const/16 v16, 0xa

    .line 214
    .line 215
    aput-object v5, v2, v16

    .line 216
    .line 217
    const/16 v5, 0xb

    .line 218
    .line 219
    aput-object v4, v2, v5

    .line 220
    .line 221
    const/16 v5, 0xc

    .line 222
    .line 223
    aput-object v4, v2, v5

    .line 224
    .line 225
    const-class v4, Landroid/text/StaticLayout;

    .line 226
    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    sput-object v2, Lcom/google/android/material/internal/u;->o:Ljava/lang/reflect/Constructor;

    .line 232
    .line 233
    invoke-virtual {v2, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 234
    .line 235
    .line 236
    sput-boolean v13, Lcom/google/android/material/internal/u;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    :goto_3
    :try_start_1
    sget-object v2, Lcom/google/android/material/internal/u;->o:Ljava/lang/reflect/Constructor;

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    iget v5, v1, Lcom/google/android/material/internal/u;->d:I

    .line 248
    .line 249
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v21

    .line 257
    iget-object v6, v1, Lcom/google/android/material/internal/u;->e:Landroid/text/Layout$Alignment;

    .line 258
    .line 259
    sget-object v22, Lcom/google/android/material/internal/u;->p:Landroid/text/TextDirectionHeuristic;

    .line 260
    .line 261
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 265
    .line 266
    .line 267
    move-result-object v18

    .line 268
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 269
    .line 270
    .line 271
    move-result-object v19

    .line 272
    iget-boolean v7, v1, Lcom/google/android/material/internal/u;->j:Z

    .line 273
    .line 274
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v15

    .line 282
    iget v8, v1, Lcom/google/android/material/internal/u;->f:I

    .line 283
    .line 284
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    new-array v12, v12, [Ljava/lang/Object;

    .line 289
    .line 290
    aput-object v0, v12, v14

    .line 291
    .line 292
    aput-object v4, v12, v13

    .line 293
    .line 294
    aput-object v5, v12, v11

    .line 295
    .line 296
    aput-object v3, v12, v10

    .line 297
    .line 298
    aput-object v21, v12, v9

    .line 299
    .line 300
    const/4 v0, 0x5

    .line 301
    aput-object v6, v12, v0

    .line 302
    .line 303
    const/4 v0, 0x6

    .line 304
    aput-object v22, v12, v0

    .line 305
    .line 306
    const/4 v0, 0x7

    .line 307
    aput-object v18, v12, v0

    .line 308
    .line 309
    const/16 v0, 0x8

    .line 310
    .line 311
    aput-object v19, v12, v0

    .line 312
    .line 313
    const/16 v0, 0x9

    .line 314
    .line 315
    aput-object v7, v12, v0

    .line 316
    .line 317
    const/4 v0, 0x0

    .line 318
    const/16 v3, 0xa

    .line 319
    .line 320
    aput-object v0, v12, v3

    .line 321
    .line 322
    const/16 v0, 0xb

    .line 323
    .line 324
    aput-object v15, v12, v0

    .line 325
    .line 326
    const/16 v0, 0xc

    .line 327
    .line 328
    aput-object v8, v12, v0

    .line 329
    .line 330
    invoke-virtual {v2, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    .line 336
    return-object v0

    .line 337
    :catch_1
    move-exception v0

    .line 338
    new-instance v2, Lcom/google/android/material/internal/t;

    .line 339
    .line 340
    invoke-direct {v2, v0}, Lcom/google/android/material/internal/t;-><init>(Ljava/lang/Exception;)V

    .line 341
    .line 342
    .line 343
    throw v2

    .line 344
    :goto_4
    new-instance v2, Lcom/google/android/material/internal/t;

    .line 345
    .line 346
    invoke-direct {v2, v0}, Lcom/google/android/material/internal/t;-><init>(Ljava/lang/Exception;)V

    .line 347
    .line 348
    .line 349
    throw v2
.end method
