.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "MyApplication"


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 12

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    mul-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    const-string v3, "copyOf(...)"

    .line 20
    .line 21
    if-ge v2, v1, :cond_7

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x80

    .line 28
    .line 29
    invoke-static {v4, v5}, Lj9/i;->h(II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    move v4, v2

    .line 40
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-static {v6, v5}, Lj9/i;->h(II)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-gez v7, :cond_1

    .line 51
    .line 52
    int-to-byte v6, v6

    .line 53
    add-int/lit8 v7, v4, 0x1

    .line 54
    .line 55
    aput-byte v6, v0, v4

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    :goto_2
    move v4, v7

    .line 60
    if-ge v2, v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-static {v6, v5}, Lj9/i;->h(II)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-gez v6, :cond_0

    .line 71
    .line 72
    add-int/lit8 v6, v2, 0x1

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-byte v2, v2

    .line 79
    add-int/lit8 v7, v4, 0x1

    .line 80
    .line 81
    aput-byte v2, v0, v4

    .line 82
    .line 83
    move v2, v6

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    const/16 v7, 0x800

    .line 86
    .line 87
    invoke-static {v6, v7}, Lj9/i;->h(II)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-gez v7, :cond_2

    .line 92
    .line 93
    shr-int/lit8 v7, v6, 0x6

    .line 94
    .line 95
    or-int/lit16 v7, v7, 0xc0

    .line 96
    .line 97
    int-to-byte v7, v7

    .line 98
    add-int/lit8 v8, v4, 0x1

    .line 99
    .line 100
    aput-byte v7, v0, v4

    .line 101
    .line 102
    and-int/lit8 v6, v6, 0x3f

    .line 103
    .line 104
    or-int/2addr v6, v5

    .line 105
    int-to-byte v6, v6

    .line 106
    add-int/lit8 v4, v4, 0x2

    .line 107
    .line 108
    aput-byte v6, v0, v8

    .line 109
    .line 110
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const v7, 0xd800

    .line 114
    .line 115
    .line 116
    const/16 v8, 0x3f

    .line 117
    .line 118
    if-gt v7, v6, :cond_4

    .line 119
    .line 120
    const v7, 0xe000

    .line 121
    .line 122
    .line 123
    if-ge v6, v7, :cond_4

    .line 124
    .line 125
    const v9, 0xdbff

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v9}, Lj9/i;->h(II)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-gtz v9, :cond_3

    .line 133
    .line 134
    add-int/lit8 v9, v2, 0x1

    .line 135
    .line 136
    if-le v1, v9, :cond_3

    .line 137
    .line 138
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    const v11, 0xdc00

    .line 143
    .line 144
    .line 145
    if-gt v11, v10, :cond_3

    .line 146
    .line 147
    if-ge v10, v7, :cond_3

    .line 148
    .line 149
    shl-int/lit8 v6, v6, 0xa

    .line 150
    .line 151
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    add-int/2addr v7, v6

    .line 156
    const v6, -0x35fdc00

    .line 157
    .line 158
    .line 159
    add-int/2addr v7, v6

    .line 160
    shr-int/lit8 v6, v7, 0x12

    .line 161
    .line 162
    or-int/lit16 v6, v6, 0xf0

    .line 163
    .line 164
    int-to-byte v6, v6

    .line 165
    add-int/lit8 v9, v4, 0x1

    .line 166
    .line 167
    aput-byte v6, v0, v4

    .line 168
    .line 169
    shr-int/lit8 v6, v7, 0xc

    .line 170
    .line 171
    and-int/2addr v6, v8

    .line 172
    or-int/2addr v6, v5

    .line 173
    int-to-byte v6, v6

    .line 174
    add-int/lit8 v10, v4, 0x2

    .line 175
    .line 176
    aput-byte v6, v0, v9

    .line 177
    .line 178
    shr-int/lit8 v6, v7, 0x6

    .line 179
    .line 180
    and-int/2addr v6, v8

    .line 181
    or-int/2addr v6, v5

    .line 182
    int-to-byte v6, v6

    .line 183
    add-int/lit8 v9, v4, 0x3

    .line 184
    .line 185
    aput-byte v6, v0, v10

    .line 186
    .line 187
    and-int/lit8 v6, v7, 0x3f

    .line 188
    .line 189
    or-int/2addr v6, v5

    .line 190
    int-to-byte v6, v6

    .line 191
    add-int/lit8 v4, v4, 0x4

    .line 192
    .line 193
    aput-byte v6, v0, v9

    .line 194
    .line 195
    add-int/lit8 v2, v2, 0x2

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 200
    .line 201
    aput-byte v8, v0, v4

    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    move v4, v6

    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_4
    shr-int/lit8 v7, v6, 0xc

    .line 209
    .line 210
    or-int/lit16 v7, v7, 0xe0

    .line 211
    .line 212
    int-to-byte v7, v7

    .line 213
    add-int/lit8 v9, v4, 0x1

    .line 214
    .line 215
    aput-byte v7, v0, v4

    .line 216
    .line 217
    shr-int/lit8 v7, v6, 0x6

    .line 218
    .line 219
    and-int/2addr v7, v8

    .line 220
    or-int/2addr v7, v5

    .line 221
    int-to-byte v7, v7

    .line 222
    add-int/lit8 v8, v4, 0x2

    .line 223
    .line 224
    aput-byte v7, v0, v9

    .line 225
    .line 226
    and-int/lit8 v6, v6, 0x3f

    .line 227
    .line 228
    or-int/2addr v6, v5

    .line 229
    int-to-byte v6, v6

    .line 230
    add-int/lit8 v4, v4, 0x3

    .line 231
    .line 232
    aput-byte v6, v0, v8

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_5
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-static {p0, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-object p0

    .line 243
    :cond_6
    int-to-byte v3, v4

    .line 244
    aput-byte v3, v0, v2

    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {p0, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "<this>"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-ltz v1, :cond_19

    .line 13
    .line 14
    array-length v3, v0

    .line 15
    if-gt v2, v3, :cond_19

    .line 16
    .line 17
    if-gt v1, v2, :cond_19

    .line 18
    .line 19
    sub-int v3, v2, v1

    .line 20
    .line 21
    new-array v3, v3, [C

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_18

    .line 26
    .line 27
    aget-byte v6, v0, v1

    .line 28
    .line 29
    if-ltz v6, :cond_1

    .line 30
    .line 31
    int-to-char v6, v6

    .line 32
    add-int/lit8 v7, v5, 0x1

    .line 33
    .line 34
    aput-char v6, v3, v5

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    :goto_1
    move v5, v7

    .line 39
    if-ge v1, v2, :cond_0

    .line 40
    .line 41
    aget-byte v6, v0, v1

    .line 42
    .line 43
    if-ltz v6, :cond_0

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    int-to-char v6, v6

    .line 48
    add-int/lit8 v7, v5, 0x1

    .line 49
    .line 50
    aput-char v6, v3, v5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    shr-int/lit8 v7, v6, 0x5

    .line 54
    .line 55
    const/4 v8, -0x2

    .line 56
    const/16 v10, 0x80

    .line 57
    .line 58
    const v11, 0xfffd

    .line 59
    .line 60
    .line 61
    const/4 v12, 0x1

    .line 62
    if-ne v7, v8, :cond_6

    .line 63
    .line 64
    add-int/lit8 v7, v1, 0x1

    .line 65
    .line 66
    if-gt v2, v7, :cond_3

    .line 67
    .line 68
    int-to-char v6, v11

    .line 69
    add-int/lit8 v7, v5, 0x1

    .line 70
    .line 71
    aput-char v6, v3, v5

    .line 72
    .line 73
    :cond_2
    :goto_2
    move v5, v7

    .line 74
    :goto_3
    const/4 v9, 0x1

    .line 75
    goto :goto_6

    .line 76
    :cond_3
    aget-byte v7, v0, v7

    .line 77
    .line 78
    and-int/lit16 v8, v7, 0xc0

    .line 79
    .line 80
    if-ne v8, v10, :cond_5

    .line 81
    .line 82
    xor-int/lit16 v7, v7, 0xf80

    .line 83
    .line 84
    shl-int/lit8 v6, v6, 0x6

    .line 85
    .line 86
    xor-int/2addr v6, v7

    .line 87
    if-ge v6, v10, :cond_4

    .line 88
    .line 89
    int-to-char v6, v11

    .line 90
    add-int/lit8 v7, v5, 0x1

    .line 91
    .line 92
    aput-char v6, v3, v5

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    int-to-char v6, v6

    .line 96
    add-int/lit8 v7, v5, 0x1

    .line 97
    .line 98
    aput-char v6, v3, v5

    .line 99
    .line 100
    :goto_4
    move v5, v7

    .line 101
    :goto_5
    const/4 v9, 0x2

    .line 102
    goto :goto_6

    .line 103
    :cond_5
    int-to-char v6, v11

    .line 104
    add-int/lit8 v7, v5, 0x1

    .line 105
    .line 106
    aput-char v6, v3, v5

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_6
    add-int/2addr v1, v9

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    shr-int/lit8 v7, v6, 0x4

    .line 112
    .line 113
    const v13, 0xe000

    .line 114
    .line 115
    .line 116
    const v14, 0xd800

    .line 117
    .line 118
    .line 119
    const/4 v15, 0x3

    .line 120
    if-ne v7, v8, :cond_c

    .line 121
    .line 122
    add-int/lit8 v7, v1, 0x2

    .line 123
    .line 124
    if-gt v2, v7, :cond_7

    .line 125
    .line 126
    int-to-char v6, v11

    .line 127
    add-int/lit8 v7, v5, 0x1

    .line 128
    .line 129
    aput-char v6, v3, v5

    .line 130
    .line 131
    add-int/lit8 v5, v1, 0x1

    .line 132
    .line 133
    if-le v2, v5, :cond_2

    .line 134
    .line 135
    aget-byte v5, v0, v5

    .line 136
    .line 137
    and-int/lit16 v5, v5, 0xc0

    .line 138
    .line 139
    if-ne v5, v10, :cond_2

    .line 140
    .line 141
    :goto_7
    goto :goto_4

    .line 142
    :cond_7
    add-int/lit8 v8, v1, 0x1

    .line 143
    .line 144
    aget-byte v8, v0, v8

    .line 145
    .line 146
    and-int/lit16 v9, v8, 0xc0

    .line 147
    .line 148
    if-ne v9, v10, :cond_b

    .line 149
    .line 150
    aget-byte v7, v0, v7

    .line 151
    .line 152
    and-int/lit16 v9, v7, 0xc0

    .line 153
    .line 154
    if-ne v9, v10, :cond_a

    .line 155
    .line 156
    const v9, -0x1e080

    .line 157
    .line 158
    .line 159
    xor-int/2addr v7, v9

    .line 160
    shl-int/lit8 v8, v8, 0x6

    .line 161
    .line 162
    xor-int/2addr v7, v8

    .line 163
    shl-int/lit8 v6, v6, 0xc

    .line 164
    .line 165
    xor-int/2addr v6, v7

    .line 166
    const/16 v7, 0x800

    .line 167
    .line 168
    if-ge v6, v7, :cond_8

    .line 169
    .line 170
    int-to-char v6, v11

    .line 171
    add-int/lit8 v7, v5, 0x1

    .line 172
    .line 173
    aput-char v6, v3, v5

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_8
    if-gt v14, v6, :cond_9

    .line 177
    .line 178
    if-ge v6, v13, :cond_9

    .line 179
    .line 180
    int-to-char v6, v11

    .line 181
    add-int/lit8 v7, v5, 0x1

    .line 182
    .line 183
    aput-char v6, v3, v5

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_9
    int-to-char v6, v6

    .line 187
    add-int/lit8 v7, v5, 0x1

    .line 188
    .line 189
    aput-char v6, v3, v5

    .line 190
    .line 191
    :goto_8
    move v5, v7

    .line 192
    :goto_9
    const/4 v9, 0x3

    .line 193
    goto :goto_6

    .line 194
    :cond_a
    int-to-char v6, v11

    .line 195
    add-int/lit8 v7, v5, 0x1

    .line 196
    .line 197
    aput-char v6, v3, v5

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_b
    int-to-char v6, v11

    .line 201
    add-int/lit8 v7, v5, 0x1

    .line 202
    .line 203
    aput-char v6, v3, v5

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_c
    shr-int/lit8 v7, v6, 0x3

    .line 208
    .line 209
    if-ne v7, v8, :cond_17

    .line 210
    .line 211
    add-int/lit8 v7, v1, 0x3

    .line 212
    .line 213
    if-gt v2, v7, :cond_f

    .line 214
    .line 215
    add-int/lit8 v6, v5, 0x1

    .line 216
    .line 217
    aput-char v11, v3, v5

    .line 218
    .line 219
    add-int/lit8 v5, v1, 0x1

    .line 220
    .line 221
    if-le v2, v5, :cond_e

    .line 222
    .line 223
    aget-byte v5, v0, v5

    .line 224
    .line 225
    and-int/lit16 v5, v5, 0xc0

    .line 226
    .line 227
    if-ne v5, v10, :cond_e

    .line 228
    .line 229
    add-int/lit8 v5, v1, 0x2

    .line 230
    .line 231
    if-le v2, v5, :cond_d

    .line 232
    .line 233
    aget-byte v5, v0, v5

    .line 234
    .line 235
    and-int/lit16 v5, v5, 0xc0

    .line 236
    .line 237
    if-ne v5, v10, :cond_d

    .line 238
    .line 239
    :goto_a
    move v5, v6

    .line 240
    goto :goto_9

    .line 241
    :cond_d
    :goto_b
    move v5, v6

    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :cond_e
    :goto_c
    move v5, v6

    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_f
    add-int/lit8 v8, v1, 0x1

    .line 248
    .line 249
    aget-byte v8, v0, v8

    .line 250
    .line 251
    and-int/lit16 v9, v8, 0xc0

    .line 252
    .line 253
    if-ne v9, v10, :cond_16

    .line 254
    .line 255
    add-int/lit8 v9, v1, 0x2

    .line 256
    .line 257
    aget-byte v9, v0, v9

    .line 258
    .line 259
    and-int/lit16 v12, v9, 0xc0

    .line 260
    .line 261
    if-ne v12, v10, :cond_15

    .line 262
    .line 263
    aget-byte v7, v0, v7

    .line 264
    .line 265
    and-int/lit16 v12, v7, 0xc0

    .line 266
    .line 267
    if-ne v12, v10, :cond_14

    .line 268
    .line 269
    const v10, 0x381f80

    .line 270
    .line 271
    .line 272
    xor-int/2addr v7, v10

    .line 273
    shl-int/lit8 v9, v9, 0x6

    .line 274
    .line 275
    xor-int/2addr v7, v9

    .line 276
    shl-int/lit8 v8, v8, 0xc

    .line 277
    .line 278
    xor-int/2addr v7, v8

    .line 279
    shl-int/lit8 v6, v6, 0x12

    .line 280
    .line 281
    xor-int/2addr v6, v7

    .line 282
    const v7, 0x10ffff

    .line 283
    .line 284
    .line 285
    if-le v6, v7, :cond_10

    .line 286
    .line 287
    add-int/lit8 v6, v5, 0x1

    .line 288
    .line 289
    aput-char v11, v3, v5

    .line 290
    .line 291
    goto :goto_d

    .line 292
    :cond_10
    if-gt v14, v6, :cond_11

    .line 293
    .line 294
    if-ge v6, v13, :cond_11

    .line 295
    .line 296
    add-int/lit8 v6, v5, 0x1

    .line 297
    .line 298
    aput-char v11, v3, v5

    .line 299
    .line 300
    goto :goto_d

    .line 301
    :cond_11
    const/high16 v7, 0x10000

    .line 302
    .line 303
    if-ge v6, v7, :cond_12

    .line 304
    .line 305
    add-int/lit8 v6, v5, 0x1

    .line 306
    .line 307
    aput-char v11, v3, v5

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_12
    if-eq v6, v11, :cond_13

    .line 311
    .line 312
    ushr-int/lit8 v7, v6, 0xa

    .line 313
    .line 314
    const v8, 0xd7c0

    .line 315
    .line 316
    .line 317
    add-int/2addr v7, v8

    .line 318
    int-to-char v7, v7

    .line 319
    add-int/lit8 v8, v5, 0x1

    .line 320
    .line 321
    aput-char v7, v3, v5

    .line 322
    .line 323
    and-int/lit16 v6, v6, 0x3ff

    .line 324
    .line 325
    const v7, 0xdc00

    .line 326
    .line 327
    .line 328
    add-int/2addr v6, v7

    .line 329
    int-to-char v6, v6

    .line 330
    add-int/lit8 v5, v5, 0x2

    .line 331
    .line 332
    aput-char v6, v3, v8

    .line 333
    .line 334
    move v6, v5

    .line 335
    goto :goto_d

    .line 336
    :cond_13
    add-int/lit8 v6, v5, 0x1

    .line 337
    .line 338
    aput-char v11, v3, v5

    .line 339
    .line 340
    :goto_d
    const/4 v9, 0x4

    .line 341
    move v5, v6

    .line 342
    goto/16 :goto_6

    .line 343
    .line 344
    :cond_14
    add-int/lit8 v6, v5, 0x1

    .line 345
    .line 346
    aput-char v11, v3, v5

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_15
    add-int/lit8 v6, v5, 0x1

    .line 350
    .line 351
    aput-char v11, v3, v5

    .line 352
    .line 353
    goto :goto_b

    .line 354
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .line 355
    .line 356
    aput-char v11, v3, v5

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_17
    add-int/lit8 v6, v5, 0x1

    .line 360
    .line 361
    aput-char v11, v3, v5

    .line 362
    .line 363
    add-int/lit8 v1, v1, 0x1

    .line 364
    .line 365
    move v5, v6

    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_18
    invoke-static {v3, v4, v5}, Lr9/n;->N([CII)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    return-object v0

    .line 373
    :cond_19
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 374
    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v5, "size="

    .line 378
    .line 379
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    array-length v0, v0

    .line 383
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v0, " beginIndex="

    .line 387
    .line 388
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v0, " endIndex="

    .line 395
    .line 396
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    array-length p2, p0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
