.class public final Lcom/alibaba/fastjson/util/RyuDouble;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x4

    .line 6
    aput v3, v1, v2

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x146

    .line 10
    .line 11
    aput v5, v1, v4

    .line 12
    .line 13
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, [[I

    .line 20
    .line 21
    sput-object v1, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    aput v3, v0, v2

    .line 26
    .line 27
    const/16 v1, 0x123

    .line 28
    .line 29
    aput v1, v0, v4

    .line 30
    .line 31
    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, [[I

    .line 36
    .line 37
    sput-object v0, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 38
    .line 39
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 40
    .line 41
    const/16 v1, 0x1f

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v7, 0x0

    .line 60
    :goto_0
    if-ge v7, v5, :cond_5

    .line 61
    .line 62
    const-wide/16 v8, 0x5

    .line 63
    .line 64
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-nez v7, :cond_0

    .line 77
    .line 78
    const/4 v11, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    int-to-long v10, v7

    .line 81
    const-wide/32 v12, 0x1624c50

    .line 82
    .line 83
    .line 84
    mul-long v10, v10, v12

    .line 85
    .line 86
    const-wide/32 v12, 0x98967f

    .line 87
    .line 88
    .line 89
    add-long/2addr v10, v12

    .line 90
    const-wide/32 v12, 0x989680

    .line 91
    .line 92
    .line 93
    div-long/2addr v10, v12

    .line 94
    long-to-int v11, v10

    .line 95
    :goto_1
    if-ne v11, v9, :cond_4

    .line 96
    .line 97
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    .line 98
    .line 99
    array-length v10, v10

    .line 100
    if-ge v7, v10, :cond_1

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    :goto_2
    if-ge v10, v3, :cond_1

    .line 104
    .line 105
    sget-object v11, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    .line 106
    .line 107
    aget-object v11, v11, v7

    .line 108
    .line 109
    add-int/lit8 v12, v9, -0x79

    .line 110
    .line 111
    rsub-int/lit8 v13, v10, 0x3

    .line 112
    .line 113
    mul-int/lit8 v13, v13, 0x1f

    .line 114
    .line 115
    add-int/2addr v13, v12

    .line 116
    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    aput v12, v11, v10

    .line 129
    .line 130
    add-int/lit8 v10, v10, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 134
    .line 135
    array-length v10, v10

    .line 136
    if-ge v7, v10, :cond_3

    .line 137
    .line 138
    add-int/lit8 v9, v9, 0x79

    .line 139
    .line 140
    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 141
    .line 142
    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    const/4 v9, 0x0

    .line 155
    :goto_3
    if-ge v9, v3, :cond_3

    .line 156
    .line 157
    if-nez v9, :cond_2

    .line 158
    .line 159
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 160
    .line 161
    aget-object v10, v10, v7

    .line 162
    .line 163
    rsub-int/lit8 v11, v9, 0x3

    .line 164
    .line 165
    mul-int/lit8 v11, v11, 0x1f

    .line 166
    .line 167
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    aput v11, v10, v9

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_2
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 179
    .line 180
    aget-object v10, v10, v7

    .line 181
    .line 182
    rsub-int/lit8 v11, v9, 0x3

    .line 183
    .line 184
    mul-int/lit8 v11, v11, 0x1f

    .line 185
    .line 186
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    aput v11, v10, v9

    .line 199
    .line 200
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, " != "

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toString(D[CI)I
    .locals 43

    .line 4
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x4e

    .line 5
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    const/16 v2, 0x61

    .line 6
    aput-char v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v2, 0x4e

    .line 7
    aput-char v2, p2, v1

    :goto_0
    sub-int v0, v0, p3

    return v0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v2, 0x79

    const/16 v3, 0x69

    const/16 v4, 0x6e

    cmpl-double v5, p0, v0

    if-nez v5, :cond_1

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x49

    .line 8
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    .line 9
    aput-char v4, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v5, 0x66

    .line 10
    aput-char v5, p2, v1

    add-int/lit8 v1, p3, 0x4

    .line 11
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x5

    .line 12
    aput-char v4, p2, v1

    add-int/lit8 v1, p3, 0x6

    .line 13
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x7

    const/16 v3, 0x74

    .line 14
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x8

    .line 15
    aput-char v2, p2, v0

    :goto_1
    sub-int v1, v1, p3

    return v1

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v5, p0, v0

    if-nez v5, :cond_2

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    .line 16
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    const/16 v5, 0x49

    .line 17
    aput-char v5, p2, v0

    add-int/lit8 v0, p3, 0x3

    .line 18
    aput-char v4, p2, v1

    add-int/lit8 v1, p3, 0x4

    const/16 v5, 0x66

    .line 19
    aput-char v5, p2, v0

    add-int/lit8 v0, p3, 0x5

    .line 20
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x6

    .line 21
    aput-char v4, p2, v0

    add-int/lit8 v0, p3, 0x7

    .line 22
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x8

    const/16 v3, 0x74

    .line 23
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x9

    .line 24
    aput-char v2, p2, v1

    goto :goto_0

    .line 25
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v3, 0x2e

    const/16 v4, 0x30

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_3

    add-int/lit8 v0, p3, 0x1

    .line 26
    aput-char v4, p2, p3

    add-int/lit8 v1, p3, 0x2

    .line 27
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x3

    .line 28
    aput-char v4, p2, v1

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v0, v8

    if-nez v10, :cond_4

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    .line 29
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    .line 30
    aput-char v4, p2, v0

    add-int/lit8 v0, p3, 0x3

    .line 31
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x4

    .line 32
    aput-char v4, p2, v0

    goto :goto_1

    :cond_4
    const/16 v8, 0x34

    ushr-long v8, v0, v8

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v9, v8

    const-wide v10, 0xfffffffffffffL

    and-long/2addr v0, v10

    if-nez v9, :cond_5

    const/16 v8, -0x432

    goto :goto_2

    :cond_5
    add-int/lit16 v8, v9, -0x433

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v0, v10

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    const-wide/16 v12, 0x1

    and-long v14, v0, v12

    cmp-long v16, v14, v5

    if-nez v16, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    const-wide/16 v15, 0x4

    mul-long v15, v15, v0

    const-wide/16 v17, 0x2

    add-long v17, v15, v17

    const-wide/high16 v19, 0x10000000000000L

    cmp-long v21, v0, v19

    if-nez v21, :cond_9

    if-gt v9, v11, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x1

    :goto_6
    sub-long v19, v15, v12

    int-to-long v3, v0

    sub-long v19, v19, v3

    add-int/lit8 v8, v8, -0x2

    const-wide/32 v3, 0x989680

    const-wide/32 v21, 0x7fffffff

    const/16 v23, 0x3

    const/16 v24, 0x2

    const/16 v25, 0x1f

    if-ltz v8, :cond_23

    int-to-long v12, v8

    const-wide/32 v26, 0x2deefb

    mul-long v12, v12, v26

    .line 33
    div-long/2addr v12, v3

    long-to-int v0, v12

    sub-int/2addr v0, v11

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v13, 0x1

    goto :goto_7

    :cond_a
    int-to-long v12, v0

    const-wide/32 v26, 0x1624c50

    mul-long v12, v12, v26

    const-wide/32 v26, 0x98967f

    add-long v12, v12, v26

    .line 34
    div-long/2addr v12, v3

    long-to-int v13, v12

    :goto_7
    add-int/2addr v13, v2

    neg-int v2, v8

    add-int/2addr v2, v0

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, -0x72

    if-ltz v2, :cond_22

    .line 35
    sget-object v8, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v8, v8, v0

    ushr-long v12, v15, v25

    and-long v26, v15, v21

    .line 36
    aget v3, v8, v10

    int-to-long v5, v3

    mul-long v5, v5, v12

    int-to-long v9, v3

    mul-long v9, v9, v26

    .line 37
    aget v4, v8, v11

    move/from16 v29, v2

    int-to-long v1, v4

    mul-long v1, v1, v12

    move-wide/from16 v30, v12

    int-to-long v11, v4

    mul-long v11, v11, v26

    .line 38
    aget v13, v8, v24

    move/from16 v32, v14

    move-wide/from16 v33, v15

    int-to-long v14, v13

    mul-long v14, v14, v30

    move/from16 v16, v3

    move/from16 v35, v4

    int-to-long v3, v13

    mul-long v3, v3, v26

    .line 39
    aget v8, v8, v23

    move-wide/from16 v36, v5

    int-to-long v5, v8

    mul-long v5, v5, v30

    move/from16 v30, v0

    move-wide/from16 v38, v1

    int-to-long v0, v8

    mul-long v26, v26, v0

    ushr-long v0, v26, v25

    add-long/2addr v0, v3

    add-long/2addr v0, v5

    ushr-long v0, v0, v25

    add-long/2addr v0, v11

    add-long/2addr v0, v14

    ushr-long v0, v0, v25

    add-long/2addr v0, v9

    add-long v0, v0, v38

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v36, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v29

    ushr-long v2, v17, v25

    and-long v4, v17, v21

    move/from16 v6, v16

    int-to-long v9, v6

    mul-long v9, v9, v2

    int-to-long v11, v6

    mul-long v11, v11, v4

    move-wide v15, v0

    move/from16 v14, v35

    int-to-long v0, v14

    mul-long v0, v0, v2

    move/from16 v27, v6

    move/from16 v26, v7

    int-to-long v6, v14

    mul-long v6, v6, v4

    move-wide/from16 v36, v15

    int-to-long v14, v13

    mul-long v14, v14, v2

    move-wide/from16 v38, v9

    int-to-long v9, v13

    mul-long v9, v9, v4

    move-wide/from16 v40, v0

    int-to-long v0, v8

    mul-long v2, v2, v0

    int-to-long v0, v8

    mul-long v4, v4, v0

    ushr-long v0, v4, v25

    add-long/2addr v0, v9

    add-long/2addr v0, v2

    ushr-long v0, v0, v25

    add-long/2addr v0, v6

    add-long/2addr v0, v14

    ushr-long v0, v0, v25

    add-long/2addr v0, v11

    add-long v0, v0, v40

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v38, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v29

    ushr-long v2, v19, v25

    and-long v4, v19, v21

    move/from16 v6, v27

    int-to-long v9, v6

    mul-long v9, v9, v2

    int-to-long v6, v6

    mul-long v6, v6, v4

    move/from16 v11, v35

    int-to-long v14, v11

    mul-long v14, v14, v2

    int-to-long v11, v11

    mul-long v11, v11, v4

    move-wide/from16 v38, v0

    int-to-long v0, v13

    mul-long v0, v0, v2

    move-wide/from16 v21, v9

    int-to-long v9, v13

    mul-long v9, v9, v4

    move-wide/from16 v40, v14

    int-to-long v13, v8

    mul-long v2, v2, v13

    int-to-long v13, v8

    mul-long v4, v4, v13

    ushr-long v4, v4, v25

    add-long/2addr v4, v9

    add-long/2addr v4, v2

    ushr-long v2, v4, v25

    add-long/2addr v2, v11

    add-long/2addr v2, v0

    ushr-long v0, v2, v25

    add-long/2addr v0, v6

    add-long v0, v0, v40

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v3, 0xa

    shl-long v4, v21, v3

    add-long/2addr v0, v4

    ushr-long v0, v0, v29

    move/from16 v3, v30

    if-gt v3, v2, :cond_21

    const-wide/16 v4, 0x5

    .line 40
    rem-long v15, v33, v4

    const-wide/16 v6, 0x271

    const-wide/16 v8, 0x0

    cmp-long v2, v15, v8

    if-nez v2, :cond_12

    if-eqz v2, :cond_b

    const/4 v4, 0x0

    goto :goto_a

    :cond_b
    const-wide/16 v10, 0x19

    .line 41
    rem-long v15, v33, v10

    cmp-long v2, v15, v8

    if-eqz v2, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    const-wide/16 v10, 0x7d

    .line 42
    rem-long v15, v33, v10

    cmp-long v2, v15, v8

    if-eqz v2, :cond_d

    const/4 v4, 0x2

    goto :goto_a

    .line 43
    :cond_d
    rem-long v15, v33, v6

    cmp-long v2, v15, v8

    if-eqz v2, :cond_e

    const/4 v4, 0x3

    goto :goto_a

    .line 44
    :cond_e
    div-long v15, v33, v6

    const/4 v2, 0x4

    :goto_8
    cmp-long v6, v15, v8

    if-lez v6, :cond_10

    .line 45
    rem-long v6, v15, v4

    cmp-long v10, v6, v8

    if-eqz v10, :cond_f

    goto :goto_9

    .line 46
    :cond_f
    div-long/2addr v15, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_10
    :goto_9
    move v4, v2

    :goto_a
    if-lt v4, v3, :cond_11

    const/4 v4, 0x1

    goto :goto_b

    :cond_11
    const/4 v4, 0x0

    :goto_b
    move v2, v4

    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_14

    :cond_12
    if-eqz v32, :cond_1a

    .line 47
    rem-long v8, v19, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_13

    const/4 v4, 0x0

    goto :goto_f

    :cond_13
    const-wide/16 v8, 0x19

    .line 48
    rem-long v8, v19, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_14

    const/4 v4, 0x1

    goto :goto_f

    :cond_14
    const-wide/16 v8, 0x7d

    .line 49
    rem-long v8, v19, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_15

    const/4 v4, 0x2

    goto :goto_f

    .line 50
    :cond_15
    rem-long v8, v19, v6

    cmp-long v2, v8, v10

    if-eqz v2, :cond_16

    const/4 v4, 0x3

    goto :goto_f

    .line 51
    :cond_16
    div-long v19, v19, v6

    const/4 v2, 0x4

    :goto_d
    cmp-long v6, v19, v10

    if-lez v6, :cond_18

    .line 52
    rem-long v6, v19, v4

    cmp-long v8, v6, v10

    if-eqz v8, :cond_17

    goto :goto_e

    .line 53
    :cond_17
    div-long v19, v19, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    goto :goto_d

    :cond_18
    :goto_e
    move v4, v2

    :goto_f
    if-lt v4, v3, :cond_19

    const/4 v4, 0x1

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    :goto_10
    const/4 v2, 0x0

    goto :goto_14

    .line 54
    :cond_1a
    rem-long v8, v17, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1b

    const/4 v4, 0x0

    goto :goto_13

    :cond_1b
    const-wide/16 v8, 0x19

    .line 55
    rem-long v8, v17, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1c

    const/4 v4, 0x1

    goto :goto_13

    :cond_1c
    const-wide/16 v8, 0x7d

    .line 56
    rem-long v8, v17, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1d

    const/4 v4, 0x2

    goto :goto_13

    .line 57
    :cond_1d
    rem-long v8, v17, v6

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1e

    const/4 v4, 0x3

    goto :goto_13

    .line 58
    :cond_1e
    div-long v17, v17, v6

    const/4 v2, 0x4

    :goto_11
    cmp-long v6, v17, v10

    if-lez v6, :cond_20

    .line 59
    rem-long v6, v17, v4

    cmp-long v8, v6, v10

    if-eqz v8, :cond_1f

    goto :goto_12

    .line 60
    :cond_1f
    div-long v17, v17, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    goto :goto_11

    :cond_20
    :goto_12
    move v4, v2

    :goto_13
    if-lt v4, v3, :cond_21

    const-wide/16 v4, 0x1

    sub-long v4, v38, v4

    move-wide/from16 v38, v4

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_c

    :goto_14
    move-wide/from16 v17, v36

    const/16 v28, 0x0

    move/from16 v42, v3

    move v3, v2

    move/from16 v2, v42

    goto/16 :goto_17

    :cond_22
    move/from16 v29, v2

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    .line 62
    invoke-static {v2, v1}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move/from16 v26, v7

    move/from16 v32, v14

    move-wide/from16 v33, v15

    neg-int v1, v8

    int-to-long v3, v1

    const-wide/32 v5, 0x6aa784

    mul-long v3, v3, v5

    const-wide/32 v5, 0x989680

    .line 64
    div-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v1, v5

    if-nez v1, :cond_24

    const/4 v3, 0x1

    goto :goto_15

    :cond_24
    int-to-long v6, v1

    const-wide/32 v9, 0x1624c50

    mul-long v6, v6, v9

    const-wide/32 v9, 0x98967f

    add-long/2addr v6, v9

    const-wide/32 v9, 0x989680

    .line 65
    div-long/2addr v6, v9

    long-to-int v3, v6

    :goto_15
    sub-int/2addr v3, v2

    sub-int v2, v5, v3

    add-int/lit8 v2, v2, -0x72

    if-ltz v2, :cond_5d

    .line 66
    sget-object v3, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v1, v3, v1

    ushr-long v6, v33, v25

    and-long v9, v33, v21

    const/16 v28, 0x0

    .line 67
    aget v3, v1, v28

    int-to-long v11, v3

    mul-long v11, v11, v6

    int-to-long v13, v3

    mul-long v13, v13, v9

    const/4 v4, 0x1

    .line 68
    aget v15, v1, v4

    move/from16 v16, v5

    int-to-long v4, v15

    mul-long v4, v4, v6

    move/from16 v27, v2

    move/from16 v29, v3

    int-to-long v2, v15

    mul-long v2, v2, v9

    move/from16 v30, v0

    .line 69
    aget v0, v1, v24

    move-wide/from16 v35, v11

    int-to-long v11, v0

    mul-long v11, v11, v6

    move-wide/from16 v37, v4

    int-to-long v4, v0

    mul-long v4, v4, v9

    .line 70
    aget v1, v1, v23

    move-wide/from16 v39, v13

    int-to-long v13, v1

    mul-long v6, v6, v13

    int-to-long v13, v1

    mul-long v9, v9, v13

    ushr-long v9, v9, v25

    add-long/2addr v9, v4

    add-long/2addr v9, v6

    ushr-long v4, v9, v25

    add-long/2addr v4, v2

    add-long/2addr v4, v11

    ushr-long v2, v4, v25

    add-long v2, v2, v39

    add-long v2, v2, v37

    const/16 v4, 0x15

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    shl-long v5, v35, v4

    add-long/2addr v2, v5

    ushr-long v2, v2, v27

    ushr-long v4, v17, v25

    and-long v6, v17, v21

    move/from16 v9, v29

    int-to-long v10, v9

    mul-long v10, v10, v4

    int-to-long v12, v9

    mul-long v12, v12, v6

    move-wide/from16 v17, v2

    int-to-long v2, v15

    mul-long v2, v2, v4

    move v14, v8

    int-to-long v8, v15

    mul-long v8, v8, v6

    move/from16 v35, v14

    move/from16 v31, v15

    int-to-long v14, v0

    mul-long v14, v14, v4

    move-wide/from16 v36, v10

    int-to-long v10, v0

    mul-long v10, v10, v6

    move-wide/from16 v38, v2

    int-to-long v2, v1

    mul-long v4, v4, v2

    int-to-long v2, v1

    mul-long v6, v6, v2

    ushr-long v2, v6, v25

    add-long/2addr v2, v10

    add-long/2addr v2, v4

    ushr-long v2, v2, v25

    add-long/2addr v2, v8

    add-long/2addr v2, v14

    ushr-long v2, v2, v25

    add-long/2addr v2, v12

    add-long v2, v2, v38

    const/16 v4, 0x15

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    shl-long v5, v36, v4

    add-long/2addr v2, v5

    ushr-long v38, v2, v27

    ushr-long v2, v19, v25

    and-long v4, v19, v21

    move/from16 v6, v29

    int-to-long v7, v6

    mul-long v7, v7, v2

    int-to-long v9, v6

    mul-long v9, v9, v4

    move/from16 v6, v31

    int-to-long v11, v6

    mul-long v11, v11, v2

    int-to-long v13, v6

    mul-long v13, v13, v4

    move-wide/from16 v19, v7

    int-to-long v6, v0

    mul-long v6, v6, v2

    move-wide/from16 v21, v11

    int-to-long v11, v0

    mul-long v11, v11, v4

    move-wide/from16 v36, v9

    int-to-long v8, v1

    mul-long v2, v2, v8

    int-to-long v0, v1

    mul-long v4, v4, v0

    ushr-long v0, v4, v25

    add-long/2addr v0, v11

    add-long/2addr v0, v2

    ushr-long v0, v0, v25

    add-long/2addr v0, v13

    add-long/2addr v0, v6

    ushr-long v0, v0, v25

    add-long v0, v0, v36

    add-long v0, v0, v21

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v19, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v27

    add-int v2, v16, v35

    move/from16 v4, v16

    const/4 v3, 0x1

    if-gt v4, v3, :cond_27

    if-eqz v32, :cond_25

    move/from16 v10, v30

    if-ne v10, v3, :cond_26

    const/4 v4, 0x1

    goto :goto_17

    :cond_25
    const-wide/16 v5, 0x1

    sub-long v38, v38, v5

    :cond_26
    :goto_16
    const/4 v4, 0x0

    goto :goto_17

    :cond_27
    const-wide/16 v5, 0x1

    const/16 v7, 0x3f

    if-ge v4, v7, :cond_28

    sub-int/2addr v4, v3

    shl-long v3, v5, v4

    sub-long/2addr v3, v5

    and-long v3, v33, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_28

    const/4 v3, 0x1

    goto :goto_16

    :cond_28
    const/4 v3, 0x0

    goto :goto_16

    :goto_17
    const-wide v5, 0xde0b6b3a7640000L

    const/4 v7, 0x7

    const/4 v8, 0x5

    const-wide/16 v9, 0xa

    cmp-long v11, v38, v5

    if-ltz v11, :cond_29

    const/16 v23, 0x13

    goto/16 :goto_18

    :cond_29
    const-wide v5, 0x16345785d8a0000L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_2a

    const/16 v23, 0x12

    goto/16 :goto_18

    :cond_2a
    const-wide v5, 0x2386f26fc10000L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_2b

    const/16 v23, 0x11

    goto/16 :goto_18

    :cond_2b
    const-wide v5, 0x38d7ea4c68000L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_2c

    const/16 v23, 0x10

    goto/16 :goto_18

    :cond_2c
    const-wide v5, 0x5af3107a4000L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_2d

    const/16 v23, 0xf

    goto/16 :goto_18

    :cond_2d
    const-wide v5, 0x9184e72a000L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_2e

    const/16 v23, 0xe

    goto/16 :goto_18

    :cond_2e
    const-wide v5, 0xe8d4a51000L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_2f

    const/16 v23, 0xd

    goto/16 :goto_18

    :cond_2f
    const-wide v5, 0x174876e800L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_30

    const/16 v23, 0xc

    goto/16 :goto_18

    :cond_30
    const-wide v5, 0x2540be400L

    cmp-long v11, v38, v5

    if-ltz v11, :cond_31

    const/16 v23, 0xb

    goto :goto_18

    :cond_31
    const-wide/32 v5, 0x3b9aca00

    cmp-long v11, v38, v5

    if-ltz v11, :cond_32

    const/16 v23, 0xa

    goto :goto_18

    :cond_32
    const-wide/32 v5, 0x5f5e100

    cmp-long v11, v38, v5

    if-ltz v11, :cond_33

    const/16 v23, 0x9

    goto :goto_18

    :cond_33
    const-wide/32 v5, 0x989680

    cmp-long v11, v38, v5

    if-ltz v11, :cond_34

    const/16 v23, 0x8

    goto :goto_18

    :cond_34
    const-wide/32 v5, 0xf4240

    cmp-long v11, v38, v5

    if-ltz v11, :cond_35

    const/16 v23, 0x7

    goto :goto_18

    :cond_35
    const-wide/32 v5, 0x186a0

    cmp-long v11, v38, v5

    if-ltz v11, :cond_36

    const/16 v23, 0x6

    goto :goto_18

    :cond_36
    const-wide/16 v5, 0x2710

    cmp-long v11, v38, v5

    if-ltz v11, :cond_37

    const/16 v23, 0x5

    goto :goto_18

    :cond_37
    const-wide/16 v5, 0x3e8

    cmp-long v11, v38, v5

    if-ltz v11, :cond_38

    const/16 v23, 0x4

    goto :goto_18

    :cond_38
    const-wide/16 v5, 0x64

    cmp-long v11, v38, v5

    if-ltz v11, :cond_39

    goto :goto_18

    :cond_39
    cmp-long v5, v38, v9

    if-ltz v5, :cond_3a

    const/16 v23, 0x2

    goto :goto_18

    :cond_3a
    const/16 v23, 0x1

    :goto_18
    add-int v2, v2, v23

    add-int/lit8 v5, v2, -0x1

    const/4 v6, -0x3

    if-lt v5, v6, :cond_3c

    if-lt v5, v7, :cond_3b

    goto :goto_19

    :cond_3b
    const/4 v6, 0x0

    goto :goto_1a

    :cond_3c
    :goto_19
    const/4 v6, 0x1

    :goto_1a
    if-nez v4, :cond_42

    if-eqz v3, :cond_3d

    goto :goto_1f

    :cond_3d
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 71
    :goto_1b
    div-long v11, v38, v9

    div-long v13, v0, v9

    cmp-long v7, v11, v13

    if-lez v7, :cond_3f

    const-wide/16 v15, 0x64

    cmp-long v7, v38, v15

    if-gez v7, :cond_3e

    if-eqz v6, :cond_3e

    goto :goto_1c

    .line 72
    :cond_3e
    rem-long v0, v17, v9

    long-to-int v4, v0

    .line 73
    div-long v17, v17, v9

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v38, v11

    move-wide v0, v13

    goto :goto_1b

    :cond_3f
    :goto_1c
    cmp-long v7, v17, v0

    if-eqz v7, :cond_41

    if-lt v4, v8, :cond_40

    goto :goto_1d

    :cond_40
    const/4 v0, 0x0

    goto :goto_1e

    :cond_41
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    int-to-long v0, v0

    add-long v17, v17, v0

    goto/16 :goto_28

    :cond_42
    :goto_1f
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 74
    :goto_20
    div-long v12, v38, v9

    div-long v14, v0, v9

    cmp-long v16, v12, v14

    if-lez v16, :cond_46

    const-wide/16 v19, 0x64

    cmp-long v16, v38, v19

    if-gez v16, :cond_43

    if-eqz v6, :cond_43

    goto :goto_23

    .line 75
    :cond_43
    rem-long/2addr v0, v9

    const-wide/16 v19, 0x0

    cmp-long v16, v0, v19

    if-nez v16, :cond_44

    const/4 v0, 0x1

    goto :goto_21

    :cond_44
    const/4 v0, 0x0

    :goto_21
    and-int/2addr v4, v0

    if-nez v7, :cond_45

    const/4 v0, 0x1

    goto :goto_22

    :cond_45
    const/4 v0, 0x0

    :goto_22
    and-int/2addr v3, v0

    .line 76
    rem-long v0, v17, v9

    long-to-int v7, v0

    .line 77
    div-long v17, v17, v9

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v38, v12

    move-wide v0, v14

    goto :goto_20

    :cond_46
    :goto_23
    if-eqz v4, :cond_49

    if-eqz v32, :cond_49

    .line 78
    :goto_24
    rem-long v12, v0, v9

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_49

    const-wide/16 v12, 0x64

    cmp-long v14, v38, v12

    if-gez v14, :cond_47

    if-eqz v6, :cond_47

    goto :goto_26

    :cond_47
    if-nez v7, :cond_48

    const/4 v7, 0x1

    goto :goto_25

    :cond_48
    const/4 v7, 0x0

    :goto_25
    and-int/2addr v3, v7

    .line 79
    rem-long v12, v17, v9

    long-to-int v7, v12

    .line 80
    div-long v38, v38, v9

    .line 81
    div-long v17, v17, v9

    .line 82
    div-long/2addr v0, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :cond_49
    :goto_26
    if-eqz v3, :cond_4a

    if-ne v7, v8, :cond_4a

    const-wide/16 v12, 0x2

    .line 83
    rem-long v12, v17, v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_4a

    const/4 v7, 0x4

    :cond_4a
    cmp-long v3, v17, v0

    if-nez v3, :cond_4b

    if-eqz v4, :cond_4c

    if-eqz v32, :cond_4c

    :cond_4b
    if-lt v7, v8, :cond_4d

    :cond_4c
    const/4 v0, 0x1

    goto :goto_27

    :cond_4d
    const/4 v0, 0x0

    :goto_27
    int-to-long v0, v0

    add-long v17, v17, v0

    move v3, v11

    :goto_28
    sub-int v0, v23, v3

    if-eqz v26, :cond_4e

    add-int/lit8 v1, p3, 0x1

    const/16 v3, 0x2d

    .line 84
    aput-char v3, p2, p3

    goto :goto_29

    :cond_4e
    move/from16 v1, p3

    :goto_29
    if-eqz v6, :cond_54

    const/4 v2, 0x0

    :goto_2a
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4f

    .line 85
    rem-long v3, v17, v9

    long-to-int v4, v3

    .line 86
    div-long v17, v17, v9

    add-int v3, v1, v0

    sub-int/2addr v3, v2

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v4, v4

    .line 87
    aput-char v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4f
    const-wide/16 v2, 0x30

    .line 88
    rem-long v17, v17, v9

    add-long v2, v17, v2

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2e

    .line 89
    aput-char v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_50

    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x30

    .line 90
    aput-char v1, p2, v2

    move v2, v0

    :cond_50
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x45

    .line 91
    aput-char v1, p2, v2

    if-gez v5, :cond_51

    add-int/lit8 v2, v2, 0x2

    const/16 v1, 0x2d

    .line 92
    aput-char v1, p2, v0

    neg-int v5, v5

    move v0, v2

    :cond_51
    const/16 v1, 0x64

    if-lt v5, v1, :cond_52

    add-int/lit8 v1, v0, 0x1

    .line 93
    div-int/lit8 v2, v5, 0x64

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v0

    .line 94
    rem-int/lit8 v5, v5, 0x64

    add-int/lit8 v0, v0, 0x2

    .line 95
    div-int/lit8 v2, v5, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v1

    goto :goto_2b

    :cond_52
    const/16 v1, 0xa

    const/16 v3, 0x30

    if-lt v5, v1, :cond_53

    add-int/lit8 v1, v0, 0x1

    .line 96
    div-int/lit8 v2, v5, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v0

    move v0, v1

    :cond_53
    :goto_2b
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    .line 97
    rem-int/2addr v5, v2

    add-int/2addr v5, v3

    int-to-char v2, v5

    aput-char v2, p2, v0

    goto/16 :goto_1

    :cond_54
    const/16 v3, 0x30

    if-gez v5, :cond_56

    add-int/lit8 v2, v1, 0x1

    .line 98
    aput-char v3, p2, v1

    add-int/lit8 v1, v1, 0x2

    const/16 v4, 0x2e

    .line 99
    aput-char v4, p2, v2

    const/4 v2, -0x1

    :goto_2c
    if-le v2, v5, :cond_55

    add-int/lit8 v4, v1, 0x1

    .line 100
    aput-char v3, p2, v1

    add-int/lit8 v2, v2, -0x1

    move v1, v4

    const/16 v3, 0x30

    goto :goto_2c

    :cond_55
    move v3, v1

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_5c

    const/4 v4, 0x1

    .line 101
    invoke-static {v1, v0, v2, v4}, La/e;->g(IIII)I

    move-result v5

    const-wide/16 v6, 0x30

    .line 102
    rem-long v11, v17, v9

    add-long/2addr v11, v6

    long-to-int v4, v11

    int-to-char v4, v4

    aput-char v4, p2, v5

    .line 103
    div-long v17, v17, v9

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_56
    if-lt v2, v0, :cond_59

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v0, :cond_57

    const/4 v4, 0x1

    .line 104
    invoke-static {v1, v0, v3, v4}, La/e;->g(IIII)I

    move-result v5

    const-wide/16 v6, 0x30

    .line 105
    rem-long v11, v17, v9

    add-long/2addr v11, v6

    long-to-int v4, v11

    int-to-char v4, v4

    aput-char v4, p2, v5

    .line 106
    div-long v17, v17, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_57
    add-int/2addr v1, v0

    :goto_2f
    if-ge v0, v2, :cond_58

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x30

    .line 107
    aput-char v4, p2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2f

    :cond_58
    const/16 v4, 0x30

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2e

    .line 108
    aput-char v2, p2, v1

    add-int/lit8 v3, v1, 0x2

    .line 109
    aput-char v4, p2, v0

    goto :goto_32

    :cond_59
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v0, :cond_5b

    sub-int v4, v0, v3

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v4, v5, :cond_5a

    .line 110
    invoke-static {v2, v0, v3, v6}, La/e;->g(IIII)I

    move-result v4

    const/16 v7, 0x2e

    .line 111
    aput-char v7, p2, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    :cond_5a
    const/16 v7, 0x2e

    .line 112
    :goto_31
    invoke-static {v2, v0, v3, v6}, La/e;->g(IIII)I

    move-result v4

    const-wide/16 v11, 0x30

    .line 113
    rem-long v13, v17, v9

    add-long/2addr v13, v11

    long-to-int v8, v13

    int-to-char v8, v8

    aput-char v8, p2, v4

    .line 114
    div-long v17, v17, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_5b
    const/4 v6, 0x1

    add-int/2addr v0, v6

    add-int v3, v0, v1

    :cond_5c
    :goto_32
    sub-int v3, v3, p3

    return v3

    :cond_5d
    move/from16 v27, v2

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    .line 116
    invoke-static {v2, v1}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x18

    .line 1
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result p0

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
