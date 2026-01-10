.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "responseHeaders"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    :goto_0
    if-ge v4, v1, :cond_14

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v12, "Sec-WebSocket-Extensions"

    .line 27
    .line 28
    invoke-static {v5, v12}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto/16 :goto_8

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v15, 0x0

    .line 41
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    if-ge v15, v12, :cond_13

    .line 46
    .line 47
    const/16 v13, 0x2c

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const/16 v17, 0x4

    .line 52
    .line 53
    const/16 v18, 0x0

    .line 54
    .line 55
    move-object v12, v5

    .line 56
    move v14, v15

    .line 57
    move v3, v15

    .line 58
    move/from16 v15, v16

    .line 59
    .line 60
    move/from16 v16, v17

    .line 61
    .line 62
    move-object/from16 v17, v18

    .line 63
    .line 64
    invoke-static/range {v12 .. v17}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const/16 v13, 0x3b

    .line 69
    .line 70
    invoke-static {v5, v13, v3, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    invoke-static {v5, v3, v14}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v15, 0x1

    .line 79
    add-int/2addr v14, v15

    .line 80
    const-string v15, "permessage-deflate"

    .line 81
    .line 82
    invoke-static {v3, v15}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_12

    .line 87
    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    const/4 v11, 0x1

    .line 91
    :cond_1
    move v15, v14

    .line 92
    :goto_2
    if-ge v15, v12, :cond_11

    .line 93
    .line 94
    invoke-static {v5, v13, v15, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/16 v6, 0x3d

    .line 99
    .line 100
    invoke-static {v5, v6, v15, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-static {v5, v15, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-ge v6, v3, :cond_3

    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    invoke-static {v5, v6, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v15, "<this>"

    .line 117
    .line 118
    invoke-static {v6, v15}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    const/4 v13, 0x2

    .line 126
    if-lt v15, v13, :cond_2

    .line 127
    .line 128
    const-string v13, "\""

    .line 129
    .line 130
    invoke-static {v6, v13}, Lr9/f;->i0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-eqz v15, :cond_2

    .line 135
    .line 136
    invoke-static {v6, v13, v2}, Lr9/n;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-eqz v13, :cond_2

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    const/4 v15, 0x1

    .line 147
    sub-int/2addr v13, v15

    .line 148
    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    const-string v13, "substring(...)"

    .line 153
    .line 154
    invoke-static {v6, v13}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_2
    const/4 v15, 0x1

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    const/4 v15, 0x1

    .line 161
    const/4 v6, 0x0

    .line 162
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 163
    .line 164
    const-string v13, "client_max_window_bits"

    .line 165
    .line 166
    invoke-static {v14, v13}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eqz v13, :cond_8

    .line 171
    .line 172
    if-eqz v7, :cond_4

    .line 173
    .line 174
    const/4 v11, 0x1

    .line 175
    :cond_4
    if-eqz v6, :cond_5

    .line 176
    .line 177
    invoke-static {v6}, Lr9/m;->L(Ljava/lang/String;)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    move-object v7, v6

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    const/4 v7, 0x0

    .line 184
    :goto_4
    if-nez v7, :cond_7

    .line 185
    .line 186
    :cond_6
    :goto_5
    move v15, v3

    .line 187
    const/4 v11, 0x1

    .line 188
    :goto_6
    const/16 v13, 0x3b

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_7
    move v15, v3

    .line 192
    goto :goto_6

    .line 193
    :cond_8
    const-string v13, "client_no_context_takeover"

    .line 194
    .line 195
    invoke-static {v14, v13}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-eqz v13, :cond_b

    .line 200
    .line 201
    if-eqz v8, :cond_9

    .line 202
    .line 203
    const/4 v11, 0x1

    .line 204
    :cond_9
    if-eqz v6, :cond_a

    .line 205
    .line 206
    const/4 v11, 0x1

    .line 207
    :cond_a
    move v15, v3

    .line 208
    const/4 v8, 0x1

    .line 209
    goto :goto_6

    .line 210
    :cond_b
    const-string v13, "server_max_window_bits"

    .line 211
    .line 212
    invoke-static {v14, v13}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    if-eqz v13, :cond_e

    .line 217
    .line 218
    if-eqz v9, :cond_c

    .line 219
    .line 220
    const/4 v11, 0x1

    .line 221
    :cond_c
    if-eqz v6, :cond_d

    .line 222
    .line 223
    invoke-static {v6}, Lr9/m;->L(Ljava/lang/String;)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    move-object v9, v6

    .line 228
    goto :goto_7

    .line 229
    :cond_d
    const/4 v9, 0x0

    .line 230
    :goto_7
    if-nez v9, :cond_7

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_e
    const-string v13, "server_no_context_takeover"

    .line 234
    .line 235
    invoke-static {v14, v13}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-eqz v13, :cond_6

    .line 240
    .line 241
    if-eqz v10, :cond_f

    .line 242
    .line 243
    const/4 v11, 0x1

    .line 244
    :cond_f
    if-eqz v6, :cond_10

    .line 245
    .line 246
    const/4 v11, 0x1

    .line 247
    :cond_10
    move v15, v3

    .line 248
    const/4 v10, 0x1

    .line 249
    goto :goto_6

    .line 250
    :cond_11
    const/4 v3, 0x1

    .line 251
    const/4 v6, 0x1

    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_12
    const/4 v3, 0x1

    .line 255
    move v15, v14

    .line 256
    const/4 v11, 0x1

    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_14
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 264
    .line 265
    move-object v5, v0

    .line 266
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 267
    .line 268
    .line 269
    return-object v0
.end method
