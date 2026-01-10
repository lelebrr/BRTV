.class public final Landroidx/media3/exoplayer/audio/PcmAudioUtil;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static rampUpVolume(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-ge p3, p4, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/PcmAudioUtil;->readAs32BitIntPcm(Ljava/nio/ByteBuffer;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-long v2, v2

    .line 34
    int-to-long v4, p3

    .line 35
    mul-long v2, v2, v4

    .line 36
    .line 37
    int-to-long v4, p4

    .line 38
    div-long/2addr v2, v4

    .line 39
    long-to-int v3, v2

    .line 40
    invoke-static {v0, v3, p1}, Landroidx/media3/exoplayer/audio/PcmAudioUtil;->write32BitIntPcm(Ljava/nio/ByteBuffer;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int v3, v1, p2

    .line 48
    .line 49
    if-ne v2, v3, :cond_0

    .line 50
    .line 51
    add-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public static readAs32BitIntPcm(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_8

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_7

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const/16 v0, 0x15

    .line 11
    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x16

    .line 15
    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    .line 18
    const/high16 v0, 0x10000000

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/high16 v0, 0x50000000

    .line 23
    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    const/high16 v0, 0x60000000

    .line 27
    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    and-int/lit16 p1, p1, 0xff

    .line 35
    .line 36
    shl-int/lit8 p1, p1, 0x18

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/lit16 v0, v0, 0xff

    .line 43
    .line 44
    shl-int/lit8 v0, v0, 0x10

    .line 45
    .line 46
    or-int/2addr p1, v0

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    and-int/lit16 v0, v0, 0xff

    .line 52
    .line 53
    shl-int/lit8 v0, v0, 0x8

    .line 54
    .line 55
    or-int/2addr p1, v0

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    and-int/lit16 p0, p0, 0xff

    .line 61
    .line 62
    or-int/2addr p0, p1

    .line 63
    return p0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    and-int/lit16 p1, p1, 0xff

    .line 75
    .line 76
    shl-int/lit8 p1, p1, 0x18

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    and-int/lit16 v0, v0, 0xff

    .line 83
    .line 84
    shl-int/lit8 v0, v0, 0x10

    .line 85
    .line 86
    or-int/2addr p1, v0

    .line 87
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    and-int/lit16 p0, p0, 0xff

    .line 92
    .line 93
    shl-int/lit8 p0, p0, 0x8

    .line 94
    .line 95
    or-int/2addr p0, p1

    .line 96
    return p0

    .line 97
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    and-int/lit16 p1, p1, 0xff

    .line 102
    .line 103
    shl-int/lit8 p1, p1, 0x18

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    and-int/lit16 p0, p0, 0xff

    .line 110
    .line 111
    shl-int/lit8 p0, p0, 0x10

    .line 112
    .line 113
    or-int/2addr p0, p1

    .line 114
    return p0

    .line 115
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    and-int/lit16 p1, p1, 0xff

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    and-int/lit16 v0, v0, 0xff

    .line 126
    .line 127
    shl-int/lit8 v0, v0, 0x8

    .line 128
    .line 129
    or-int/2addr p1, v0

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    and-int/lit16 v0, v0, 0xff

    .line 135
    .line 136
    shl-int/lit8 v0, v0, 0x10

    .line 137
    .line 138
    or-int/2addr p1, v0

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    and-int/lit16 p0, p0, 0xff

    .line 144
    .line 145
    shl-int/lit8 p0, p0, 0x18

    .line 146
    .line 147
    or-int/2addr p0, p1

    .line 148
    return p0

    .line 149
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    and-int/lit16 p1, p1, 0xff

    .line 154
    .line 155
    shl-int/lit8 p1, p1, 0x8

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    and-int/lit16 v0, v0, 0xff

    .line 162
    .line 163
    shl-int/lit8 v0, v0, 0x10

    .line 164
    .line 165
    or-int/2addr p1, v0

    .line 166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    and-int/lit16 p0, p0, 0xff

    .line 171
    .line 172
    shl-int/lit8 p0, p0, 0x18

    .line 173
    .line 174
    or-int/2addr p0, p1

    .line 175
    return p0

    .line 176
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    const/high16 p1, -0x40800000    # -1.0f

    .line 181
    .line 182
    const/high16 v0, 0x3f800000    # 1.0f

    .line 183
    .line 184
    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    const/4 p1, 0x0

    .line 189
    cmpg-float p1, p0, p1

    .line 190
    .line 191
    if-gez p1, :cond_6

    .line 192
    .line 193
    neg-float p0, p0

    .line 194
    const/high16 p1, -0x31000000

    .line 195
    .line 196
    mul-float p0, p0, p1

    .line 197
    .line 198
    float-to-int p0, p0

    .line 199
    return p0

    .line 200
    :cond_6
    const/high16 p1, 0x4f000000

    .line 201
    .line 202
    mul-float p0, p0, p1

    .line 203
    .line 204
    float-to-int p0, p0

    .line 205
    return p0

    .line 206
    :cond_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    and-int/lit16 p0, p0, 0xff

    .line 211
    .line 212
    shl-int/lit8 p0, p0, 0x18

    .line 213
    .line 214
    return p0

    .line 215
    :cond_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    and-int/lit16 p1, p1, 0xff

    .line 220
    .line 221
    shl-int/lit8 p1, p1, 0x10

    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    and-int/lit16 p0, p0, 0xff

    .line 228
    .line 229
    shl-int/lit8 p0, p0, 0x18

    .line 230
    .line 231
    or-int/2addr p0, p1

    .line 232
    return p0
.end method

.method public static write32BitIntPcm(Ljava/nio/ByteBuffer;II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p2, v0, :cond_8

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p2, v0, :cond_7

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p2, v0, :cond_5

    .line 9
    .line 10
    const/16 v0, 0x15

    .line 11
    .line 12
    if-eq p2, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x16

    .line 15
    .line 16
    if-eq p2, v0, :cond_3

    .line 17
    .line 18
    const/high16 v0, 0x10000000

    .line 19
    .line 20
    if-eq p2, v0, :cond_2

    .line 21
    .line 22
    const/high16 v0, 0x50000000

    .line 23
    .line 24
    if-eq p2, v0, :cond_1

    .line 25
    .line 26
    const/high16 v0, 0x60000000

    .line 27
    .line 28
    if-ne p2, v0, :cond_0

    .line 29
    .line 30
    shr-int/lit8 p2, p1, 0x18

    .line 31
    .line 32
    int-to-byte p2, p2

    .line 33
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    shr-int/lit8 p2, p1, 0x10

    .line 37
    .line 38
    int-to-byte p2, p2

    .line 39
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    shr-int/lit8 p2, p1, 0x8

    .line 43
    .line 44
    int-to-byte p2, p2

    .line 45
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    int-to-byte p1, p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    shr-int/lit8 p2, p1, 0x18

    .line 60
    .line 61
    int-to-byte p2, p2

    .line 62
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    shr-int/lit8 p2, p1, 0x10

    .line 66
    .line 67
    int-to-byte p2, p2

    .line 68
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    shr-int/lit8 p1, p1, 0x8

    .line 72
    .line 73
    int-to-byte p1, p1

    .line 74
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    shr-int/lit8 p2, p1, 0x18

    .line 79
    .line 80
    int-to-byte p2, p2

    .line 81
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    shr-int/lit8 p1, p1, 0x10

    .line 85
    .line 86
    int-to-byte p1, p1

    .line 87
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    int-to-byte p2, p1

    .line 92
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    shr-int/lit8 p2, p1, 0x8

    .line 96
    .line 97
    int-to-byte p2, p2

    .line 98
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    shr-int/lit8 p2, p1, 0x10

    .line 102
    .line 103
    int-to-byte p2, p2

    .line 104
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    shr-int/lit8 p1, p1, 0x18

    .line 108
    .line 109
    int-to-byte p1, p1

    .line 110
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    shr-int/lit8 p2, p1, 0x8

    .line 115
    .line 116
    int-to-byte p2, p2

    .line 117
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    shr-int/lit8 p2, p1, 0x10

    .line 121
    .line 122
    int-to-byte p2, p2

    .line 123
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    shr-int/lit8 p1, p1, 0x18

    .line 127
    .line 128
    int-to-byte p1, p1

    .line 129
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    if-gez p1, :cond_6

    .line 134
    .line 135
    int-to-float p1, p1

    .line 136
    neg-float p1, p1

    .line 137
    const/high16 p2, -0x31000000

    .line 138
    .line 139
    div-float/2addr p1, p2

    .line 140
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    int-to-float p1, p1

    .line 145
    const/high16 p2, 0x4f000000

    .line 146
    .line 147
    div-float/2addr p1, p2

    .line 148
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    :goto_0
    return-void

    .line 152
    :cond_7
    shr-int/lit8 p1, p1, 0x18

    .line 153
    .line 154
    int-to-byte p1, p1

    .line 155
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_8
    shr-int/lit8 p2, p1, 0x10

    .line 160
    .line 161
    int-to-byte p2, p2

    .line 162
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    .line 164
    .line 165
    shr-int/lit8 p1, p1, 0x18

    .line 166
    .line 167
    int-to-byte p1, p1

    .line 168
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    .line 171
    return-void
.end method
