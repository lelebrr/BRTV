.class public abstract Lw3/a;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lw3/a;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    mul-int/lit8 v1, v0, 0x3

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    div-int/2addr v1, v2

    .line 10
    new-array v3, v1, [B

    .line 11
    .line 12
    sget-object v4, Lw3/a;->a:[I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    :goto_0
    const/4 v10, 0x3

    .line 20
    const/4 v11, 0x2

    .line 21
    const/4 v12, 0x1

    .line 22
    if-ge v6, v0, :cond_f

    .line 23
    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    :goto_1
    add-int/lit8 v13, v6, 0x4

    .line 27
    .line 28
    if-gt v13, v0, :cond_0

    .line 29
    .line 30
    aget-byte v8, p0, v6

    .line 31
    .line 32
    and-int/lit16 v8, v8, 0xff

    .line 33
    .line 34
    aget v8, v4, v8

    .line 35
    .line 36
    shl-int/lit8 v8, v8, 0x12

    .line 37
    .line 38
    add-int/lit8 v14, v6, 0x1

    .line 39
    .line 40
    aget-byte v14, p0, v14

    .line 41
    .line 42
    and-int/lit16 v14, v14, 0xff

    .line 43
    .line 44
    aget v14, v4, v14

    .line 45
    .line 46
    shl-int/lit8 v14, v14, 0xc

    .line 47
    .line 48
    or-int/2addr v8, v14

    .line 49
    add-int/lit8 v14, v6, 0x2

    .line 50
    .line 51
    aget-byte v14, p0, v14

    .line 52
    .line 53
    and-int/lit16 v14, v14, 0xff

    .line 54
    .line 55
    aget v14, v4, v14

    .line 56
    .line 57
    shl-int/lit8 v14, v14, 0x6

    .line 58
    .line 59
    or-int/2addr v8, v14

    .line 60
    add-int/lit8 v14, v6, 0x3

    .line 61
    .line 62
    aget-byte v14, p0, v14

    .line 63
    .line 64
    and-int/lit16 v14, v14, 0xff

    .line 65
    .line 66
    aget v14, v4, v14

    .line 67
    .line 68
    or-int/2addr v8, v14

    .line 69
    if-ltz v8, :cond_0

    .line 70
    .line 71
    add-int/lit8 v6, v9, 0x2

    .line 72
    .line 73
    int-to-byte v14, v8

    .line 74
    aput-byte v14, v3, v6

    .line 75
    .line 76
    add-int/lit8 v6, v9, 0x1

    .line 77
    .line 78
    shr-int/lit8 v14, v8, 0x8

    .line 79
    .line 80
    int-to-byte v14, v14

    .line 81
    aput-byte v14, v3, v6

    .line 82
    .line 83
    shr-int/lit8 v6, v8, 0x10

    .line 84
    .line 85
    int-to-byte v6, v6

    .line 86
    aput-byte v6, v3, v9

    .line 87
    .line 88
    add-int/lit8 v9, v9, 0x3

    .line 89
    .line 90
    move v6, v13

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    if-lt v6, v0, :cond_1

    .line 93
    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_1
    add-int/lit8 v13, v6, 0x1

    .line 97
    .line 98
    aget-byte v6, p0, v6

    .line 99
    .line 100
    and-int/lit16 v6, v6, 0xff

    .line 101
    .line 102
    aget v6, v4, v6

    .line 103
    .line 104
    const/4 v14, -0x1

    .line 105
    if-eqz v7, :cond_d

    .line 106
    .line 107
    if-eq v7, v12, :cond_b

    .line 108
    .line 109
    const/4 v12, -0x2

    .line 110
    if-eq v7, v11, :cond_8

    .line 111
    .line 112
    const/4 v11, 0x5

    .line 113
    if-eq v7, v10, :cond_5

    .line 114
    .line 115
    if-eq v7, v2, :cond_3

    .line 116
    .line 117
    if-eq v7, v11, :cond_2

    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_2
    if-ne v6, v14, :cond_13

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_3
    if-ne v6, v12, :cond_4

    .line 126
    .line 127
    add-int/lit8 v7, v7, 0x1

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    if-ne v6, v14, :cond_13

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    if-ltz v6, :cond_6

    .line 134
    .line 135
    shl-int/lit8 v7, v8, 0x6

    .line 136
    .line 137
    or-int/2addr v6, v7

    .line 138
    add-int/lit8 v7, v9, 0x2

    .line 139
    .line 140
    int-to-byte v8, v6

    .line 141
    aput-byte v8, v3, v7

    .line 142
    .line 143
    add-int/lit8 v7, v9, 0x1

    .line 144
    .line 145
    shr-int/lit8 v8, v6, 0x8

    .line 146
    .line 147
    int-to-byte v8, v8

    .line 148
    aput-byte v8, v3, v7

    .line 149
    .line 150
    shr-int/lit8 v7, v6, 0x10

    .line 151
    .line 152
    int-to-byte v7, v7

    .line 153
    aput-byte v7, v3, v9

    .line 154
    .line 155
    add-int/lit8 v9, v9, 0x3

    .line 156
    .line 157
    move v8, v6

    .line 158
    const/4 v7, 0x0

    .line 159
    goto :goto_4

    .line 160
    :cond_6
    if-ne v6, v12, :cond_7

    .line 161
    .line 162
    add-int/lit8 v6, v9, 0x1

    .line 163
    .line 164
    shr-int/lit8 v7, v8, 0x2

    .line 165
    .line 166
    int-to-byte v7, v7

    .line 167
    aput-byte v7, v3, v6

    .line 168
    .line 169
    shr-int/lit8 v6, v8, 0xa

    .line 170
    .line 171
    int-to-byte v6, v6

    .line 172
    aput-byte v6, v3, v9

    .line 173
    .line 174
    add-int/lit8 v9, v9, 0x2

    .line 175
    .line 176
    const/4 v7, 0x5

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    if-ne v6, v14, :cond_13

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    if-ltz v6, :cond_9

    .line 182
    .line 183
    :goto_2
    shl-int/lit8 v8, v8, 0x6

    .line 184
    .line 185
    or-int/2addr v6, v8

    .line 186
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 187
    .line 188
    move v8, v6

    .line 189
    goto :goto_4

    .line 190
    :cond_9
    if-ne v6, v12, :cond_a

    .line 191
    .line 192
    add-int/lit8 v6, v9, 0x1

    .line 193
    .line 194
    shr-int/lit8 v7, v8, 0x4

    .line 195
    .line 196
    int-to-byte v7, v7

    .line 197
    aput-byte v7, v3, v9

    .line 198
    .line 199
    move v9, v6

    .line 200
    const/4 v7, 0x4

    .line 201
    goto :goto_4

    .line 202
    :cond_a
    if-ne v6, v14, :cond_13

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    if-ltz v6, :cond_c

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_c
    if-ne v6, v14, :cond_13

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_d
    if-ltz v6, :cond_e

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_e
    if-ne v6, v14, :cond_13

    .line 215
    .line 216
    :goto_4
    move v6, v13

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_f
    :goto_5
    if-eq v7, v12, :cond_13

    .line 220
    .line 221
    if-eq v7, v11, :cond_11

    .line 222
    .line 223
    if-eq v7, v10, :cond_10

    .line 224
    .line 225
    if-eq v7, v2, :cond_13

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_10
    add-int/lit8 p0, v9, 0x1

    .line 229
    .line 230
    shr-int/lit8 v0, v8, 0xa

    .line 231
    .line 232
    int-to-byte v0, v0

    .line 233
    aput-byte v0, v3, v9

    .line 234
    .line 235
    add-int/lit8 v9, v9, 0x2

    .line 236
    .line 237
    shr-int/lit8 v0, v8, 0x2

    .line 238
    .line 239
    int-to-byte v0, v0

    .line 240
    aput-byte v0, v3, p0

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_11
    add-int/lit8 p0, v9, 0x1

    .line 244
    .line 245
    shr-int/lit8 v0, v8, 0x4

    .line 246
    .line 247
    int-to-byte v0, v0

    .line 248
    aput-byte v0, v3, v9

    .line 249
    .line 250
    move v9, p0

    .line 251
    :goto_6
    if-ne v9, v1, :cond_12

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_12
    new-array p0, v9, [B

    .line 255
    .line 256
    invoke-static {v3, v5, p0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    move-object v3, p0

    .line 260
    :goto_7
    return-object v3

    .line 261
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 262
    .line 263
    const-string v0, "bad base-64"

    .line 264
    .line 265
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0
.end method
