.class public final Lc7/b0;
.super Ljava/util/AbstractMap;
.source "MyApplication"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field public static final s:Lc7/e;

.field public static final t:Lc7/f;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Lc7/q;

.field public final d:I

.field public final e:Lb7/h;

.field public final f:Lb7/h;

.field public final g:I

.field public final h:I

.field public final i:J

.field public final j:Lc7/c;

.field public final k:J

.field public final l:Lc7/f;

.field public final m:Lb7/k0;

.field public final n:I

.field public final o:Lx4/e;

.field public p:Lc7/m;

.field public q:Lc7/w;

.field public r:Lc7/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lc7/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lc7/e;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lc7/b0;->s:Lc7/e;

    .line 16
    .line 17
    new-instance v0, Lc7/f;

    .line 18
    .line 19
    invoke-direct {v0}, Lc7/f;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lc7/b0;->t:Lc7/f;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lc7/d;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    const/high16 v2, 0x10000

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v6, Lc7/b0;->d:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput v1, v6, Lc7/b0;->g:I

    .line 19
    .line 20
    iput v1, v6, Lc7/b0;->h:I

    .line 21
    .line 22
    sget-object v2, Lb7/f;->a:Lb7/f;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v3, v2}, Lb7/b;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lb7/h;

    .line 30
    .line 31
    iput-object v4, v6, Lc7/b0;->e:Lb7/h;

    .line 32
    .line 33
    invoke-static {v3, v2}, Lb7/b;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lb7/h;

    .line 38
    .line 39
    iput-object v2, v6, Lc7/b0;->f:Lb7/h;

    .line 40
    .line 41
    iget-wide v2, v0, Lc7/d;->b:J

    .line 42
    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v7, v2, v4

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    iget-wide v7, v0, Lc7/d;->a:J

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-wide v7, v4

    .line 53
    :goto_0
    iput-wide v7, v6, Lc7/b0;->i:J

    .line 54
    .line 55
    sget-object v0, Lc7/c;->a:Lc7/c;

    .line 56
    .line 57
    iput-object v0, v6, Lc7/b0;->j:Lc7/c;

    .line 58
    .line 59
    const-wide/16 v9, -0x1

    .line 60
    .line 61
    cmp-long v0, v2, v9

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    move-wide v2, v4

    .line 66
    :cond_1
    iput-wide v2, v6, Lc7/b0;->k:J

    .line 67
    .line 68
    sget-object v0, Lc7/b0;->t:Lc7/f;

    .line 69
    .line 70
    iput-object v0, v6, Lc7/b0;->l:Lc7/f;

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->b()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    sget-object v0, Lc7/d;->d:Lc7/a;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sget-object v0, Lb7/k0;->a:Lb7/j0;

    .line 82
    .line 83
    :goto_1
    iput-object v0, v6, Lc7/b0;->m:Lb7/k0;

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->b()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v3, 0x0

    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v2, 0x0

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 106
    :goto_3
    if-eqz v2, :cond_5

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    const/4 v2, 0x0

    .line 111
    :goto_4
    or-int/2addr v0, v2

    .line 112
    sget-object v2, Lc7/k;->a:[I

    .line 113
    .line 114
    aget v0, v2, v0

    .line 115
    .line 116
    iput v0, v6, Lc7/b0;->n:I

    .line 117
    .line 118
    sget-object v9, Lc7/d;->c:Lb7/h0;

    .line 119
    .line 120
    iget-object v0, v9, Lb7/h0;->a:Lx4/e;

    .line 121
    .line 122
    iput-object v0, v6, Lc7/b0;->o:Lx4/e;

    .line 123
    .line 124
    const/16 v0, 0x10

    .line 125
    .line 126
    const/high16 v2, 0x40000000    # 2.0f

    .line 127
    .line 128
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->a()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    int-to-long v4, v0

    .line 139
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    long-to-int v0, v4

    .line 144
    :cond_6
    const/4 v2, 0x1

    .line 145
    const/4 v4, 0x0

    .line 146
    :goto_5
    iget v5, v6, Lc7/b0;->d:I

    .line 147
    .line 148
    if-ge v2, v5, :cond_8

    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->a()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_7

    .line 155
    .line 156
    int-to-long v7, v2

    .line 157
    const-wide/16 v10, 0x14

    .line 158
    .line 159
    mul-long v7, v7, v10

    .line 160
    .line 161
    iget-wide v10, v6, Lc7/b0;->i:J

    .line 162
    .line 163
    cmp-long v5, v7, v10

    .line 164
    .line 165
    if-gtz v5, :cond_8

    .line 166
    .line 167
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 168
    .line 169
    shl-int/lit8 v2, v2, 0x1

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_8
    rsub-int/lit8 v4, v4, 0x20

    .line 173
    .line 174
    iput v4, v6, Lc7/b0;->b:I

    .line 175
    .line 176
    add-int/lit8 v4, v2, -0x1

    .line 177
    .line 178
    iput v4, v6, Lc7/b0;->a:I

    .line 179
    .line 180
    new-array v4, v2, [Lc7/q;

    .line 181
    .line 182
    iput-object v4, v6, Lc7/b0;->c:[Lc7/q;

    .line 183
    .line 184
    div-int v4, v0, v2

    .line 185
    .line 186
    mul-int v5, v4, v2

    .line 187
    .line 188
    if-ge v5, v0, :cond_9

    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    :cond_9
    const/4 v7, 0x1

    .line 193
    :goto_6
    if-ge v7, v4, :cond_a

    .line 194
    .line 195
    shl-int/lit8 v7, v7, 0x1

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lc7/b0;->a()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    iget-wide v0, v6, Lc7/b0;->i:J

    .line 205
    .line 206
    int-to-long v4, v2

    .line 207
    div-long v10, v0, v4

    .line 208
    .line 209
    const-wide/16 v12, 0x1

    .line 210
    .line 211
    add-long/2addr v10, v12

    .line 212
    rem-long v14, v0, v4

    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    :goto_7
    iget-object v5, v6, Lc7/b0;->c:[Lc7/q;

    .line 216
    .line 217
    array-length v0, v5

    .line 218
    if-ge v8, v0, :cond_d

    .line 219
    .line 220
    int-to-long v0, v8

    .line 221
    cmp-long v2, v0, v14

    .line 222
    .line 223
    if-nez v2, :cond_b

    .line 224
    .line 225
    sub-long/2addr v10, v12

    .line 226
    :cond_b
    iget-object v3, v9, Lb7/h0;->a:Lx4/e;

    .line 227
    .line 228
    new-instance v16, Lc7/q;

    .line 229
    .line 230
    move-object/from16 v0, v16

    .line 231
    .line 232
    move-object/from16 v1, p0

    .line 233
    .line 234
    move v2, v7

    .line 235
    move-object/from16 v17, v3

    .line 236
    .line 237
    move-wide v3, v10

    .line 238
    move-object/from16 v18, v5

    .line 239
    .line 240
    move-object/from16 v5, v17

    .line 241
    .line 242
    invoke-direct/range {v0 .. v5}, Lc7/q;-><init>(Lc7/b0;IJLx4/e;)V

    .line 243
    .line 244
    .line 245
    aput-object v16, v18, v8

    .line 246
    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_c
    const/4 v8, 0x0

    .line 251
    :goto_8
    iget-object v10, v6, Lc7/b0;->c:[Lc7/q;

    .line 252
    .line 253
    array-length v0, v10

    .line 254
    if-ge v8, v0, :cond_d

    .line 255
    .line 256
    iget-object v5, v9, Lb7/h0;->a:Lx4/e;

    .line 257
    .line 258
    new-instance v11, Lc7/q;

    .line 259
    .line 260
    const-wide/16 v3, -0x1

    .line 261
    .line 262
    move-object v0, v11

    .line 263
    move-object/from16 v1, p0

    .line 264
    .line 265
    move v2, v7

    .line 266
    invoke-direct/range {v0 .. v5}, Lc7/q;-><init>(Lc7/b0;IJLx4/e;)V

    .line 267
    .line 268
    .line 269
    aput-object v11, v10, v8

    .line 270
    .line 271
    add-int/lit8 v8, v8, 0x1

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_d
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc7/b0;->i:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc7/b0;->k:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc7/b0;->e:Lb7/h;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lb7/h;->b(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    shl-int/lit8 v0, p1, 0xf

    .line 15
    .line 16
    xor-int/lit16 v0, v0, -0x3283

    .line 17
    .line 18
    add-int/2addr p1, v0

    .line 19
    ushr-int/lit8 v0, p1, 0xa

    .line 20
    .line 21
    xor-int/2addr p1, v0

    .line 22
    shl-int/lit8 v0, p1, 0x3

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    ushr-int/lit8 v0, p1, 0x6

    .line 26
    .line 27
    xor-int/2addr p1, v0

    .line 28
    shl-int/lit8 v0, p1, 0x2

    .line 29
    .line 30
    shl-int/lit8 v1, p1, 0xe

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    add-int/2addr v0, p1

    .line 34
    ushr-int/lit8 p1, v0, 0x10

    .line 35
    .line 36
    xor-int/2addr p1, v0

    .line 37
    return p1
.end method

.method public final clear()V
    .locals 13

    .line 1
    iget-object v0, p0, Lc7/b0;->c:[Lc7/q;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_b

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget v5, v4, Lc7/q;->b:I

    .line 11
    .line 12
    if-eqz v5, :cond_a

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v5, v4, Lc7/q;->a:Lc7/b0;

    .line 18
    .line 19
    iget-object v5, v5, Lc7/b0;->m:Lb7/k0;

    .line 20
    .line 21
    invoke-virtual {v5}, Lb7/k0;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    invoke-virtual {v4, v5, v6}, Lc7/q;->o(J)V

    .line 26
    .line 27
    .line 28
    iget-object v5, v4, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v8, 0x1

    .line 36
    if-ge v6, v7, :cond_4

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lc7/c0;

    .line 43
    .line 44
    :goto_2
    if-eqz v7, :cond_3

    .line 45
    .line 46
    invoke-interface {v7}, Lc7/c0;->a()Lc7/v;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-interface {v9}, Lc7/v;->isActive()Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-eqz v9, :cond_2

    .line 55
    .line 56
    invoke-interface {v7}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-interface {v7}, Lc7/c0;->a()Lc7/v;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-interface {v10}, Lc7/v;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    if-eqz v9, :cond_1

    .line 69
    .line 70
    if-nez v10, :cond_0

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_0
    const/4 v11, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_1
    :goto_3
    const/4 v11, 0x3

    .line 76
    :goto_4
    invoke-interface {v7}, Lc7/c0;->c()I

    .line 77
    .line 78
    .line 79
    invoke-interface {v7}, Lc7/c0;->a()Lc7/v;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-interface {v12}, Lc7/v;->d()I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    invoke-virtual {v4, v12, v9, v10, v11}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_b

    .line 93
    :cond_2
    :goto_5
    invoke-interface {v7}, Lc7/c0;->b()Lc7/c0;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v6, 0x0

    .line 102
    :goto_6
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-ge v6, v7, :cond_5

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_5
    iget-object v5, v4, Lc7/q;->a:Lc7/b0;

    .line 116
    .line 117
    iget v6, v5, Lc7/b0;->g:I

    .line 118
    .line 119
    if-eq v6, v8, :cond_6

    .line 120
    .line 121
    const/4 v6, 0x1

    .line 122
    goto :goto_7

    .line 123
    :cond_6
    const/4 v6, 0x0

    .line 124
    :goto_7
    if-eqz v6, :cond_7

    .line 125
    .line 126
    :goto_8
    iget-object v6, v4, Lc7/q;->h:Ljava/lang/ref/ReferenceQueue;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_7
    iget v5, v5, Lc7/b0;->h:I

    .line 136
    .line 137
    if-eq v5, v8, :cond_8

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    goto :goto_9

    .line 141
    :cond_8
    const/4 v5, 0x0

    .line 142
    :goto_9
    if-eqz v5, :cond_9

    .line 143
    .line 144
    :goto_a
    iget-object v5, v4, Lc7/q;->i:Ljava/lang/ref/ReferenceQueue;

    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    if-eqz v5, :cond_9

    .line 151
    .line 152
    goto :goto_a

    .line 153
    :cond_9
    iget-object v5, v4, Lc7/q;->l:Ljava/util/AbstractQueue;

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    .line 156
    .line 157
    .line 158
    iget-object v5, v4, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 159
    .line 160
    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    .line 161
    .line 162
    .line 163
    iget-object v5, v4, Lc7/q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    .line 165
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 166
    .line 167
    .line 168
    iget v5, v4, Lc7/q;->d:I

    .line 169
    .line 170
    add-int/2addr v5, v8

    .line 171
    iput v5, v4, Lc7/q;->d:I

    .line 172
    .line 173
    iput v2, v4, Lc7/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lc7/q;->p()V

    .line 179
    .line 180
    .line 181
    goto :goto_c

    .line 182
    :goto_b
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Lc7/q;->p()V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_a
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_b
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Lc7/b0;->e(I)Lc7/q;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v3, v2, Lc7/q;->b:I

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-object v3, v2, Lc7/q;->a:Lc7/b0;

    .line 21
    .line 22
    iget-object v3, v3, Lc7/b0;->m:Lb7/k0;

    .line 23
    .line 24
    invoke-virtual {v3}, Lb7/k0;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v1, v3, v4, p1}, Lc7/q;->i(IJLjava/lang/Object;)Lc7/c0;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lc7/q;->j()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lc7/v;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    return v0

    .line 53
    :goto_2
    invoke-virtual {v2}, Lc7/q;->j()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v3, v1, Lc7/b0;->m:Lb7/k0;

    .line 10
    .line 11
    invoke-virtual {v3}, Lb7/k0;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v5, v1, Lc7/b0;->c:[Lc7/q;

    .line 16
    .line 17
    const-wide/16 v6, -0x1

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    :goto_0
    const/4 v9, 0x3

    .line 21
    if-ge v8, v9, :cond_9

    .line 22
    .line 23
    array-length v9, v5

    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    :goto_1
    if-ge v12, v9, :cond_8

    .line 28
    .line 29
    aget-object v13, v5, v12

    .line 30
    .line 31
    iget v14, v13, Lc7/q;->b:I

    .line 32
    .line 33
    iget-object v14, v13, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    .line 35
    const/4 v15, 0x0

    .line 36
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ge v15, v2, :cond_7

    .line 41
    .line 42
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lc7/c0;

    .line 47
    .line 48
    :goto_3
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-interface {v2}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v16

    .line 54
    const/16 v17, 0x0

    .line 55
    .line 56
    if-nez v16, :cond_2

    .line 57
    .line 58
    invoke-virtual {v13}, Lc7/q;->r()V

    .line 59
    .line 60
    .line 61
    :goto_4
    move-object/from16 v18, v5

    .line 62
    .line 63
    :cond_1
    :goto_5
    move-object/from16 v5, v17

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_2
    invoke-interface {v2}, Lc7/c0;->a()Lc7/v;

    .line 67
    .line 68
    .line 69
    move-result-object v16

    .line 70
    invoke-interface/range {v16 .. v16}, Lc7/v;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    if-nez v16, :cond_3

    .line 75
    .line 76
    invoke-virtual {v13}, Lc7/q;->r()V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    move-object/from16 v18, v5

    .line 81
    .line 82
    iget-object v5, v13, Lc7/q;->a:Lc7/b0;

    .line 83
    .line 84
    invoke-virtual {v5, v2, v3, v4}, Lc7/b0;->d(Lc7/c0;J)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    :try_start_0
    invoke-virtual {v13, v3, v4}, Lc7/q;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    move-object v2, v0

    .line 105
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :cond_4
    move-object/from16 v5, v16

    .line 110
    .line 111
    :goto_6
    move-wide/from16 v16, v3

    .line 112
    .line 113
    if-eqz v5, :cond_5

    .line 114
    .line 115
    iget-object v3, v1, Lc7/b0;->f:Lb7/h;

    .line 116
    .line 117
    invoke-virtual {v3, v0, v5}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    return v0

    .line 125
    :cond_5
    invoke-interface {v2}, Lc7/c0;->b()Lc7/c0;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    move-wide/from16 v3, v16

    .line 130
    .line 131
    move-object/from16 v5, v18

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    move-wide/from16 v16, v3

    .line 135
    .line 136
    move-object/from16 v18, v5

    .line 137
    .line 138
    add-int/lit8 v15, v15, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    move-wide/from16 v16, v3

    .line 142
    .line 143
    move-object/from16 v18, v5

    .line 144
    .line 145
    iget v2, v13, Lc7/q;->d:I

    .line 146
    .line 147
    int-to-long v2, v2

    .line 148
    add-long/2addr v10, v2

    .line 149
    add-int/lit8 v12, v12, 0x1

    .line 150
    .line 151
    move-wide/from16 v3, v16

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    goto :goto_1

    .line 155
    :cond_8
    move-wide/from16 v16, v3

    .line 156
    .line 157
    move-object/from16 v18, v5

    .line 158
    .line 159
    cmp-long v2, v10, v6

    .line 160
    .line 161
    if-nez v2, :cond_a

    .line 162
    .line 163
    :cond_9
    const/4 v0, 0x0

    .line 164
    goto :goto_7

    .line 165
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    move-wide v6, v10

    .line 168
    move-wide/from16 v3, v16

    .line 169
    .line 170
    move-object/from16 v5, v18

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :goto_7
    return v0
.end method

.method public final d(Lc7/c0;J)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc7/b0;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lc7/c0;->k()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sub-long/2addr p2, v0

    .line 15
    iget-wide v0, p0, Lc7/b0;->k:J

    .line 16
    .line 17
    cmp-long p1, p2, v0

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final e(I)Lc7/q;
    .locals 1

    .line 1
    iget v0, p0, Lc7/b0;->b:I

    .line 2
    .line 3
    ushr-int/2addr p1, v0

    .line 4
    iget v0, p0, Lc7/b0;->a:I

    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget-object v0, p0, Lc7/b0;->c:[Lc7/q;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lc7/b0;->r:Lc7/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lc7/m;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lc7/m;-><init>(Lc7/b0;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lc7/b0;->r:Lc7/m;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lc7/b0;->e(I)Lc7/q;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0, p1}, Lc7/q;->h(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc7/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move-object p2, p1

    .line 8
    :cond_0
    return-object p2
.end method

.method public final isEmpty()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lc7/b0;->c:[Lc7/q;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    move-wide v6, v2

    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_0
    if-ge v5, v1, :cond_1

    .line 10
    .line 11
    aget-object v8, v0, v5

    .line 12
    .line 13
    iget v9, v8, Lc7/q;->b:I

    .line 14
    .line 15
    if-eqz v9, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget v8, v8, Lc7/q;->d:I

    .line 19
    .line 20
    int-to-long v8, v8

    .line 21
    add-long/2addr v6, v8

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x1

    .line 26
    cmp-long v5, v6, v2

    .line 27
    .line 28
    if-eqz v5, :cond_5

    .line 29
    .line 30
    array-length v5, v0

    .line 31
    const/4 v8, 0x0

    .line 32
    :goto_1
    if-ge v8, v5, :cond_3

    .line 33
    .line 34
    aget-object v9, v0, v8

    .line 35
    .line 36
    iget v10, v9, Lc7/q;->b:I

    .line 37
    .line 38
    if-eqz v10, :cond_2

    .line 39
    .line 40
    return v4

    .line 41
    :cond_2
    iget v9, v9, Lc7/q;->d:I

    .line 42
    .line 43
    int-to-long v9, v9

    .line 44
    sub-long/2addr v6, v9

    .line 45
    add-int/lit8 v8, v8, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    cmp-long v0, v6, v2

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    :cond_4
    return v4

    .line 54
    :cond_5
    return v1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lc7/b0;->p:Lc7/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lc7/m;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lc7/m;-><init>(Lc7/b0;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lc7/b0;->p:Lc7/m;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lc7/b0;->e(I)Lc7/q;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, p1, p2, v2}, Lc7/q;->k(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v1, v0}, Lc7/b0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lc7/b0;->e(I)Lc7/q;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v0, p1, p2, v2}, Lc7/q;->k(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    move-result v5

    .line 2
    invoke-virtual {p0, v5}, Lc7/b0;->e(I)Lc7/q;

    move-result-object v9

    .line 3
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, v9, Lc7/q;->a:Lc7/b0;

    iget-object v1, v1, Lc7/b0;->m:Lb7/k0;

    invoke-virtual {v1}, Lb7/k0;->a()J

    move-result-wide v1

    .line 5
    invoke-virtual {v9, v1, v2}, Lc7/q;->o(J)V

    .line 6
    iget-object v10, v9, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v5, v1

    .line 8
    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc7/c0;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v3}, Lc7/c0;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-interface {v3}, Lc7/c0;->c()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, v9, Lc7/q;->a:Lc7/b0;

    iget-object v1, v1, Lc7/b0;->e:Lb7/h;

    .line 11
    invoke-virtual {v1, p1, v4}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v3}, Lc7/c0;->a()Lc7/v;

    move-result-object v7

    .line 13
    invoke-interface {v7}, Lc7/v;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v7}, Lc7/v;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    const/4 v8, 0x3

    .line 15
    :goto_1
    iget v0, v9, Lc7/q;->d:I

    add-int/2addr v0, v11

    iput v0, v9, Lc7/q;->d:I

    move-object v1, v9

    move-object v6, p1

    .line 16
    invoke-virtual/range {v1 .. v8}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    move-result-object v0

    .line 17
    iget v1, v9, Lc7/q;->b:I

    sub-int/2addr v1, v11

    .line 18
    invoke-virtual {v10, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 19
    iput v1, v9, Lc7/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    invoke-virtual {v9}, Lc7/q;->p()V

    move-object v0, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    invoke-virtual {v9}, Lc7/q;->p()V

    goto :goto_2

    .line 24
    :cond_3
    :try_start_1
    invoke-interface {v3}, Lc7/c0;->b()Lc7/c0;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-object v0

    .line 25
    :goto_3
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    invoke-virtual {v9}, Lc7/q;->p()V

    .line 27
    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    move-result v5

    .line 29
    invoke-virtual {p0, v5}, Lc7/b0;->e(I)Lc7/q;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    :try_start_0
    iget-object v1, v9, Lc7/q;->a:Lc7/b0;

    iget-object v1, v1, Lc7/b0;->m:Lb7/k0;

    invoke-virtual {v1}, Lb7/k0;->a()J

    move-result-wide v1

    .line 32
    invoke-virtual {v9, v1, v2}, Lc7/q;->o(J)V

    .line 33
    iget-object v10, v9, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v5, v1

    .line 35
    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc7/c0;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 36
    invoke-interface {v3}, Lc7/c0;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-interface {v3}, Lc7/c0;->c()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, v9, Lc7/q;->a:Lc7/b0;

    iget-object v1, v1, Lc7/b0;->e:Lb7/h;

    .line 38
    invoke-virtual {v1, p1, v4}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-interface {v3}, Lc7/c0;->a()Lc7/v;

    move-result-object v7

    .line 40
    invoke-interface {v7}, Lc7/v;->get()Ljava/lang/Object;

    move-result-object v6

    .line 41
    iget-object p1, v9, Lc7/q;->a:Lc7/b0;

    iget-object p1, p1, Lc7/b0;->f:Lb7/h;

    invoke-virtual {p1, p2, v6}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 42
    invoke-interface {v7}, Lc7/v;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 43
    :goto_1
    iget p2, v9, Lc7/q;->d:I

    add-int/2addr p2, v11

    iput p2, v9, Lc7/q;->d:I

    move-object v1, v9

    move v8, p1

    .line 44
    invoke-virtual/range {v1 .. v8}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    move-result-object p2

    .line 45
    iget v1, v9, Lc7/q;->b:I

    sub-int/2addr v1, v11

    .line 46
    invoke-virtual {v10, v12, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 47
    iput v1, v9, Lc7/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v11, :cond_2

    const/4 v0, 0x1

    .line 48
    :cond_2
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    invoke-virtual {v9}, Lc7/q;->p()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 50
    :cond_3
    :try_start_1
    invoke-interface {v3}, Lc7/c0;->b()Lc7/c0;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return v0

    .line 51
    :goto_3
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    invoke-virtual {v9}, Lc7/q;->p()V

    .line 53
    throw p1

    :cond_4
    :goto_4
    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    move-result v4

    .line 4
    invoke-virtual {p0, v4}, Lc7/b0;->e(I)Lc7/q;

    move-result-object v8

    .line 5
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_0
    iget-object v0, v8, Lc7/q;->a:Lc7/b0;

    iget-object v0, v0, Lc7/b0;->m:Lb7/k0;

    invoke-virtual {v0}, Lb7/k0;->a()J

    move-result-wide v0

    .line 7
    invoke-virtual {v8, v0, v1}, Lc7/q;->o(J)V

    .line 8
    iget-object v9, v8, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v10, v4, v2

    .line 10
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc7/c0;

    move-object v3, v2

    :goto_0
    const/4 v11, 0x0

    if-eqz v3, :cond_0

    .line 11
    invoke-interface {v3}, Lc7/c0;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {v3}, Lc7/c0;->c()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, v8, Lc7/q;->a:Lc7/b0;

    iget-object v6, v6, Lc7/b0;->e:Lb7/h;

    .line 13
    invoke-virtual {v6, p1, v5}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    invoke-interface {v3}, Lc7/c0;->a()Lc7/v;

    move-result-object v6

    .line 15
    invoke-interface {v6}, Lc7/v;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 16
    invoke-interface {v6}, Lc7/v;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget p1, v8, Lc7/q;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v8, Lc7/q;->d:I

    const/4 p1, 0x3

    move-object v0, v8

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    move v7, p1

    .line 18
    invoke-virtual/range {v0 .. v7}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    move-result-object p1

    .line 19
    iget p2, v8, Lc7/q;->b:I

    add-int/lit8 p2, p2, -0x1

    .line 20
    invoke-virtual {v9, v10, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 21
    iput p2, v8, Lc7/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 22
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    invoke-virtual {v8}, Lc7/q;->p()V

    goto :goto_2

    .line 24
    :cond_1
    :try_start_1
    iget v2, v8, Lc7/q;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v8, Lc7/q;->d:I

    .line 25
    invoke-interface {v6}, Lc7/v;->d()I

    move-result v2

    const/4 v4, 0x2

    .line 26
    invoke-virtual {v8, v2, p1, v7, v4}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    invoke-virtual {v8, v3, p2, v0, v1}, Lc7/q;->q(Lc7/c0;Ljava/lang/Object;J)V

    .line 28
    invoke-virtual {v8, v3}, Lc7/q;->e(Lc7/c0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    invoke-virtual {v8}, Lc7/q;->p()V

    move-object v11, v7

    goto :goto_2

    .line 31
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lc7/c0;->b()Lc7/c0;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-object v11

    .line 32
    :goto_3
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    invoke-virtual {v8}, Lc7/q;->p()V

    .line 34
    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 37
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lc7/b0;->c(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v11, p0

    .line 38
    invoke-virtual {v11, v7}, Lc7/b0;->e(I)Lc7/q;

    move-result-object v12

    .line 39
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 40
    :try_start_0
    iget-object v3, v12, Lc7/q;->a:Lc7/b0;

    iget-object v3, v3, Lc7/b0;->m:Lb7/k0;

    invoke-virtual {v3}, Lb7/k0;->a()J

    move-result-wide v3

    .line 41
    invoke-virtual {v12, v3, v4}, Lc7/q;->o(J)V

    .line 42
    iget-object v13, v12, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 43
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    const/4 v14, 0x1

    sub-int/2addr v5, v14

    and-int v15, v7, v5

    .line 44
    invoke-virtual {v13, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc7/c0;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    .line 45
    invoke-interface {v6}, Lc7/c0;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 46
    invoke-interface {v6}, Lc7/c0;->c()I

    move-result v9

    if-ne v9, v7, :cond_4

    if-eqz v8, :cond_4

    iget-object v9, v12, Lc7/q;->a:Lc7/b0;

    iget-object v9, v9, Lc7/b0;->e:Lb7/h;

    .line 47
    invoke-virtual {v9, v0, v8}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 48
    invoke-interface {v6}, Lc7/c0;->a()Lc7/v;

    move-result-object v9

    .line 49
    invoke-interface {v9}, Lc7/v;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 50
    invoke-interface {v9}, Lc7/v;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget v0, v12, Lc7/q;->d:I

    add-int/2addr v0, v14

    iput v0, v12, Lc7/q;->d:I

    const/4 v0, 0x3

    move-object v3, v12

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v10

    move v10, v0

    .line 52
    invoke-virtual/range {v3 .. v10}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    move-result-object v0

    .line 53
    iget v1, v12, Lc7/q;->b:I

    sub-int/2addr v1, v14

    .line 54
    invoke-virtual {v13, v15, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 55
    iput v1, v12, Lc7/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    invoke-virtual {v12}, Lc7/q;->p()V

    goto :goto_2

    .line 58
    :cond_2
    :try_start_1
    iget-object v5, v12, Lc7/q;->a:Lc7/b0;

    iget-object v5, v5, Lc7/b0;->f:Lb7/h;

    invoke-virtual {v5, v1, v10}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget v1, v12, Lc7/q;->d:I

    add-int/2addr v1, v14

    iput v1, v12, Lc7/q;->d:I

    .line 60
    invoke-interface {v9}, Lc7/v;->d()I

    move-result v1

    const/4 v2, 0x2

    .line 61
    invoke-virtual {v12, v1, v0, v10, v2}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v8, p3

    .line 62
    invoke-virtual {v12, v6, v8, v3, v4}, Lc7/q;->q(Lc7/c0;Ljava/lang/Object;J)V

    .line 63
    invoke-virtual {v12, v6}, Lc7/q;->e(Lc7/c0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    invoke-virtual {v12}, Lc7/q;->p()V

    const/4 v2, 0x1

    goto :goto_2

    .line 66
    :cond_3
    :try_start_2
    iget-object v0, v12, Lc7/q;->a:Lc7/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iget-object v0, v12, Lc7/q;->m:Ljava/util/AbstractQueue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v8, p3

    .line 68
    invoke-interface {v6}, Lc7/c0;->b()Lc7/c0;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_2
    return v2

    .line 69
    :goto_3
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    invoke-virtual {v12}, Lc7/q;->p()V

    .line 71
    throw v0
.end method

.method public final size()I
    .locals 8

    .line 1
    iget-object v0, p0, Lc7/b0;->c:[Lc7/q;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    :goto_0
    if-ge v5, v1, :cond_0

    .line 9
    .line 10
    aget-object v6, v0, v5

    .line 11
    .line 12
    iget v6, v6, Lc7/q;->b:I

    .line 13
    .line 14
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    int-to-long v6, v6

    .line 19
    add-long/2addr v2, v6

    .line 20
    add-int/lit8 v5, v5, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v2, v3}, Lr4/b;->K(J)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lc7/b0;->q:Lc7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lc7/w;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lc7/w;-><init>(Ljava/util/AbstractMap;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lc7/b0;->q:Lc7/w;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method
