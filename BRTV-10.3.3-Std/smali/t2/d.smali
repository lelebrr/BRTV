.class public final Lt2/d;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:La7/f;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public final j:[I

.field public k:I

.field public l:Lt2/b;

.field public m:Landroid/graphics/Bitmap;

.field public final n:Z

.field public o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(La7/f;Lt2/b;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lt2/d;->b:[I

    .line 9
    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    iput-object v0, p0, Lt2/d;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-object p1, p0, Lt2/d;->c:La7/f;

    .line 15
    .line 16
    new-instance p1, Lt2/b;

    .line 17
    .line 18
    invoke-direct {p1}, Lt2/b;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lt2/d;->l:Lt2/b;

    .line 22
    .line 23
    const-string p1, "Sample size must be >=0, not: "

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    if-lez p4, :cond_4

    .line 27
    .line 28
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p4, 0x0

    .line 33
    iput p4, p0, Lt2/d;->o:I

    .line 34
    .line 35
    iput-object p2, p0, Lt2/d;->l:Lt2/b;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lt2/d;->k:I

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iput-boolean p4, p0, Lt2/d;->n:Z

    .line 57
    .line 58
    iget-object p3, p2, Lt2/b;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-eqz p4, :cond_1

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    check-cast p4, Lt2/a;

    .line 75
    .line 76
    iget p4, p4, Lt2/a;->g:I

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    if-ne p4, v0, :cond_0

    .line 80
    .line 81
    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, Lt2/d;->n:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_3

    .line 87
    :cond_1
    :goto_0
    iput p1, p0, Lt2/d;->p:I

    .line 88
    .line 89
    iget p3, p2, Lt2/b;->f:I

    .line 90
    .line 91
    div-int p4, p3, p1

    .line 92
    .line 93
    iput p4, p0, Lt2/d;->r:I

    .line 94
    .line 95
    iget p2, p2, Lt2/b;->g:I

    .line 96
    .line 97
    div-int p1, p2, p1

    .line 98
    .line 99
    iput p1, p0, Lt2/d;->q:I

    .line 100
    .line 101
    iget-object p1, p0, Lt2/d;->c:La7/f;

    .line 102
    .line 103
    mul-int p3, p3, p2

    .line 104
    .line 105
    iget-object p1, p1, La7/f;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Ly2/f;

    .line 108
    .line 109
    if-nez p1, :cond_2

    .line 110
    .line 111
    new-array p1, p3, [B

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const-class p2, [B

    .line 115
    .line 116
    invoke-virtual {p1, p3, p2}, Ly2/f;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, [B

    .line 121
    .line 122
    :goto_1
    iput-object p1, p0, Lt2/d;->i:[B

    .line 123
    .line 124
    iget-object p1, p0, Lt2/d;->c:La7/f;

    .line 125
    .line 126
    iget p2, p0, Lt2/d;->r:I

    .line 127
    .line 128
    iget p3, p0, Lt2/d;->q:I

    .line 129
    .line 130
    mul-int p2, p2, p3

    .line 131
    .line 132
    iget-object p1, p1, La7/f;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Ly2/f;

    .line 135
    .line 136
    if-nez p1, :cond_3

    .line 137
    .line 138
    new-array p1, p2, [I

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    const-class p3, [I

    .line 142
    .line 143
    invoke-virtual {p1, p2, p3}, Ly2/f;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, [I

    .line 148
    .line 149
    :goto_2
    iput-object p1, p0, Lt2/d;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 153
    :cond_4
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p2

    .line 171
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p1
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lt2/d;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_1
    iget v1, p0, Lt2/d;->r:I

    .line 18
    .line 19
    iget v2, p0, Lt2/d;->q:I

    .line 20
    .line 21
    iget-object v3, p0, Lt2/d;->c:La7/f;

    .line 22
    .line 23
    iget-object v3, v3, La7/f;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ly2/a;

    .line 26
    .line 27
    invoke-interface {v3, v1, v2, v0}, Ly2/a;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Unable to decode frame, status="

    .line 2
    .line 3
    const-string v1, "No valid color table found for frame #"

    .line 4
    .line 5
    const-string v2, "Unable to decode frame, frameCount="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lt2/d;->l:Lt2/b;

    .line 9
    .line 10
    iget v3, v3, Lt2/b;->c:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lt2/d;->k:I

    .line 17
    .line 18
    if-gez v3, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    :goto_0
    const-string v3, "d"

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const-string v3, "d"

    .line 33
    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lt2/d;->l:Lt2/b;

    .line 40
    .line 41
    iget v2, v2, Lt2/b;->c:I

    .line 42
    .line 43
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", framePointer="

    .line 47
    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lt2/d;->k:I

    .line 52
    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    iput v5, p0, Lt2/d;->o:I

    .line 64
    .line 65
    :cond_2
    iget v2, p0, Lt2/d;->o:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    if-eq v2, v5, :cond_b

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    if-ne v2, v6, :cond_3

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lt2/d;->o:I

    .line 77
    .line 78
    iget-object v2, p0, Lt2/d;->e:[B

    .line 79
    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget-object v2, p0, Lt2/d;->c:La7/f;

    .line 83
    .line 84
    iget-object v2, v2, La7/f;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Ly2/f;

    .line 87
    .line 88
    const/16 v7, 0xff

    .line 89
    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    new-array v2, v7, [B

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const-class v8, [B

    .line 96
    .line 97
    invoke-virtual {v2, v7, v8}, Ly2/f;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, [B

    .line 102
    .line 103
    :goto_1
    iput-object v2, p0, Lt2/d;->e:[B

    .line 104
    .line 105
    :cond_5
    iget-object v2, p0, Lt2/d;->l:Lt2/b;

    .line 106
    .line 107
    iget-object v2, v2, Lt2/b;->e:Ljava/util/ArrayList;

    .line 108
    .line 109
    iget v7, p0, Lt2/d;->k:I

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lt2/a;

    .line 116
    .line 117
    iget v7, p0, Lt2/d;->k:I

    .line 118
    .line 119
    sub-int/2addr v7, v5

    .line 120
    if-ltz v7, :cond_6

    .line 121
    .line 122
    iget-object v8, p0, Lt2/d;->l:Lt2/b;

    .line 123
    .line 124
    iget-object v8, v8, Lt2/b;->e:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Lt2/a;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    move-object v7, v3

    .line 134
    :goto_2
    iget-object v8, v2, Lt2/a;->k:[I

    .line 135
    .line 136
    if-eqz v8, :cond_7

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    iget-object v8, p0, Lt2/d;->l:Lt2/b;

    .line 140
    .line 141
    iget-object v8, v8, Lt2/b;->a:[I

    .line 142
    .line 143
    :goto_3
    iput-object v8, p0, Lt2/d;->a:[I

    .line 144
    .line 145
    if-nez v8, :cond_9

    .line 146
    .line 147
    const-string v0, "d"

    .line 148
    .line 149
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    const-string v0, "d"

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lt2/d;->k:I

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :cond_8
    iput v5, p0, Lt2/d;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    monitor-exit p0

    .line 177
    return-object v3

    .line 178
    :cond_9
    :try_start_1
    iget-boolean v1, v2, Lt2/a;->f:Z

    .line 179
    .line 180
    if-eqz v1, :cond_a

    .line 181
    .line 182
    iget-object v1, p0, Lt2/d;->b:[I

    .line 183
    .line 184
    array-length v3, v8

    .line 185
    invoke-static {v8, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lt2/d;->b:[I

    .line 189
    .line 190
    iput-object v1, p0, Lt2/d;->a:[I

    .line 191
    .line 192
    iget v3, v2, Lt2/a;->h:I

    .line 193
    .line 194
    aput v0, v1, v3

    .line 195
    .line 196
    iget v0, v2, Lt2/a;->g:I

    .line 197
    .line 198
    if-ne v0, v6, :cond_a

    .line 199
    .line 200
    iget v0, p0, Lt2/d;->k:I

    .line 201
    .line 202
    if-nez v0, :cond_a

    .line 203
    .line 204
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    iput-object v0, p0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 207
    .line 208
    :cond_a
    invoke-virtual {p0, v2, v7}, Lt2/d;->d(Lt2/a;Lt2/a;)Landroid/graphics/Bitmap;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit p0

    .line 213
    return-object v0

    .line 214
    :cond_b
    :goto_4
    :try_start_2
    const-string v1, "d"

    .line 215
    .line 216
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_c

    .line 221
    .line 222
    const-string v1, "d"

    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget v0, p0, Lt2/d;->o:I

    .line 230
    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    .line 240
    .line 241
    :cond_c
    monitor-exit p0

    .line 242
    return-object v3

    .line 243
    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    throw v0
.end method

.method public final c(Landroid/graphics/Bitmap$Config;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Unsupported format: "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", must be one of "

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " or "

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2

    .line 46
    :cond_1
    :goto_0
    iput-object p1, p0, Lt2/d;->t:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    return-void
.end method

.method public final d(Lt2/a;Lt2/a;)Landroid/graphics/Bitmap;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v10, v0, Lt2/d;->j:[I

    .line 8
    .line 9
    iget-object v11, v0, Lt2/d;->c:La7/f;

    .line 10
    .line 11
    const/4 v12, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v4, v11, La7/f;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Ly2/a;

    .line 21
    .line 22
    invoke-interface {v4, v3}, Ly2/a;->e(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    iput-object v3, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v13, 0x3

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget v3, v2, Lt2/a;->g:I

    .line 35
    .line 36
    if-ne v3, v13, :cond_2

    .line 37
    .line 38
    iget-object v3, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const/4 v14, 0x2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    iget v3, v2, Lt2/a;->g:I

    .line 49
    .line 50
    if-lez v3, :cond_7

    .line 51
    .line 52
    if-ne v3, v14, :cond_6

    .line 53
    .line 54
    iget-boolean v3, v1, Lt2/a;->f:Z

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    iget-object v3, v0, Lt2/d;->l:Lt2/b;

    .line 59
    .line 60
    iget v4, v3, Lt2/b;->k:I

    .line 61
    .line 62
    iget-object v5, v1, Lt2/a;->k:[I

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    iget v3, v3, Lt2/b;->j:I

    .line 67
    .line 68
    iget v5, v1, Lt2/a;->h:I

    .line 69
    .line 70
    if-ne v3, v5, :cond_4

    .line 71
    .line 72
    :cond_3
    const/4 v4, 0x0

    .line 73
    :cond_4
    iget v3, v2, Lt2/a;->d:I

    .line 74
    .line 75
    iget v5, v0, Lt2/d;->p:I

    .line 76
    .line 77
    div-int/2addr v3, v5

    .line 78
    iget v6, v2, Lt2/a;->b:I

    .line 79
    .line 80
    div-int/2addr v6, v5

    .line 81
    iget v7, v2, Lt2/a;->c:I

    .line 82
    .line 83
    div-int/2addr v7, v5

    .line 84
    iget v2, v2, Lt2/a;->a:I

    .line 85
    .line 86
    div-int/2addr v2, v5

    .line 87
    iget v5, v0, Lt2/d;->r:I

    .line 88
    .line 89
    mul-int v6, v6, v5

    .line 90
    .line 91
    add-int/2addr v6, v2

    .line 92
    mul-int v3, v3, v5

    .line 93
    .line 94
    add-int/2addr v3, v6

    .line 95
    :goto_0
    if-ge v6, v3, :cond_7

    .line 96
    .line 97
    add-int v2, v6, v7

    .line 98
    .line 99
    move v5, v6

    .line 100
    :goto_1
    if-ge v5, v2, :cond_5

    .line 101
    .line 102
    aput v4, v10, v5

    .line 103
    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget v2, v0, Lt2/d;->r:I

    .line 108
    .line 109
    add-int/2addr v6, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    if-ne v3, v13, :cond_7

    .line 112
    .line 113
    iget-object v2, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    iget v8, v0, Lt2/d;->r:I

    .line 118
    .line 119
    iget v9, v0, Lt2/d;->q:I

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    move-object v3, v10

    .line 125
    move v5, v8

    .line 126
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v2, v0, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    iget v3, v1, Lt2/a;->j:I

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    .line 135
    .line 136
    iget v2, v1, Lt2/a;->c:I

    .line 137
    .line 138
    iget v3, v1, Lt2/a;->d:I

    .line 139
    .line 140
    mul-int v2, v2, v3

    .line 141
    .line 142
    iget-object v3, v0, Lt2/d;->i:[B

    .line 143
    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    array-length v3, v3

    .line 147
    if-ge v3, v2, :cond_a

    .line 148
    .line 149
    :cond_8
    iget-object v3, v11, La7/f;->c:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v3, Ly2/f;

    .line 152
    .line 153
    if-nez v3, :cond_9

    .line 154
    .line 155
    new-array v3, v2, [B

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_9
    const-class v4, [B

    .line 159
    .line 160
    invoke-virtual {v3, v2, v4}, Ly2/f;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, [B

    .line 165
    .line 166
    :goto_2
    iput-object v3, v0, Lt2/d;->i:[B

    .line 167
    .line 168
    :cond_a
    iget-object v3, v0, Lt2/d;->i:[B

    .line 169
    .line 170
    iget-object v4, v0, Lt2/d;->f:[S

    .line 171
    .line 172
    const/16 v5, 0x1000

    .line 173
    .line 174
    if-nez v4, :cond_b

    .line 175
    .line 176
    new-array v4, v5, [S

    .line 177
    .line 178
    iput-object v4, v0, Lt2/d;->f:[S

    .line 179
    .line 180
    :cond_b
    iget-object v4, v0, Lt2/d;->f:[S

    .line 181
    .line 182
    iget-object v6, v0, Lt2/d;->g:[B

    .line 183
    .line 184
    if-nez v6, :cond_c

    .line 185
    .line 186
    new-array v6, v5, [B

    .line 187
    .line 188
    iput-object v6, v0, Lt2/d;->g:[B

    .line 189
    .line 190
    :cond_c
    iget-object v6, v0, Lt2/d;->g:[B

    .line 191
    .line 192
    iget-object v7, v0, Lt2/d;->h:[B

    .line 193
    .line 194
    if-nez v7, :cond_d

    .line 195
    .line 196
    const/16 v7, 0x1001

    .line 197
    .line 198
    new-array v7, v7, [B

    .line 199
    .line 200
    iput-object v7, v0, Lt2/d;->h:[B

    .line 201
    .line 202
    :cond_d
    iget-object v7, v0, Lt2/d;->h:[B

    .line 203
    .line 204
    iget-object v8, v0, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    and-int/lit16 v8, v8, 0xff

    .line 211
    .line 212
    const/4 v9, 0x1

    .line 213
    shl-int v11, v9, v8

    .line 214
    .line 215
    add-int/lit8 v15, v11, 0x1

    .line 216
    .line 217
    add-int/lit8 v16, v11, 0x2

    .line 218
    .line 219
    add-int/2addr v8, v9

    .line 220
    shl-int v17, v9, v8

    .line 221
    .line 222
    add-int/lit8 v17, v17, -0x1

    .line 223
    .line 224
    const/4 v14, 0x0

    .line 225
    :goto_3
    if-ge v14, v11, :cond_e

    .line 226
    .line 227
    aput-short v12, v4, v14

    .line 228
    .line 229
    int-to-byte v5, v14

    .line 230
    aput-byte v5, v6, v14

    .line 231
    .line 232
    add-int/lit8 v14, v14, 0x1

    .line 233
    .line 234
    const/16 v5, 0x1000

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_e
    iget-object v5, v0, Lt2/d;->e:[B

    .line 238
    .line 239
    move/from16 v27, v8

    .line 240
    .line 241
    move/from16 v25, v16

    .line 242
    .line 243
    move/from16 v26, v17

    .line 244
    .line 245
    const/4 v14, 0x0

    .line 246
    const/16 v19, -0x1

    .line 247
    .line 248
    const/16 v20, 0x0

    .line 249
    .line 250
    const/16 v21, 0x0

    .line 251
    .line 252
    const/16 v22, 0x0

    .line 253
    .line 254
    const/16 v23, 0x0

    .line 255
    .line 256
    const/16 v24, 0x0

    .line 257
    .line 258
    const/16 v28, 0x0

    .line 259
    .line 260
    const/16 v29, 0x0

    .line 261
    .line 262
    :goto_4
    const/16 v30, 0x8

    .line 263
    .line 264
    if-ge v14, v2, :cond_10

    .line 265
    .line 266
    if-nez v20, :cond_12

    .line 267
    .line 268
    iget-object v9, v0, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 269
    .line 270
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    and-int/lit16 v9, v9, 0xff

    .line 275
    .line 276
    if-gtz v9, :cond_f

    .line 277
    .line 278
    move/from16 v31, v8

    .line 279
    .line 280
    move/from16 v32, v14

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_f
    iget-object v13, v0, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 284
    .line 285
    iget-object v12, v0, Lt2/d;->e:[B

    .line 286
    .line 287
    move/from16 v31, v8

    .line 288
    .line 289
    invoke-virtual {v13}, Ljava/nio/Buffer;->remaining()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    move/from16 v32, v14

    .line 298
    .line 299
    const/4 v14, 0x0

    .line 300
    invoke-virtual {v13, v12, v14, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 301
    .line 302
    .line 303
    :goto_5
    if-gtz v9, :cond_11

    .line 304
    .line 305
    const/4 v8, 0x3

    .line 306
    iput v8, v0, Lt2/d;->o:I

    .line 307
    .line 308
    :cond_10
    move-object/from16 v22, v10

    .line 309
    .line 310
    move/from16 v12, v24

    .line 311
    .line 312
    const/4 v14, 0x0

    .line 313
    goto/16 :goto_a

    .line 314
    .line 315
    :cond_11
    move/from16 v20, v9

    .line 316
    .line 317
    const/16 v21, 0x0

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_12
    move/from16 v31, v8

    .line 321
    .line 322
    move/from16 v32, v14

    .line 323
    .line 324
    :goto_6
    aget-byte v8, v5, v21

    .line 325
    .line 326
    and-int/lit16 v8, v8, 0xff

    .line 327
    .line 328
    shl-int v8, v8, v22

    .line 329
    .line 330
    add-int v23, v23, v8

    .line 331
    .line 332
    add-int/lit8 v22, v22, 0x8

    .line 333
    .line 334
    const/4 v8, 0x1

    .line 335
    add-int/lit8 v21, v21, 0x1

    .line 336
    .line 337
    const/4 v8, -0x1

    .line 338
    add-int/lit8 v20, v20, -0x1

    .line 339
    .line 340
    move/from16 v9, v19

    .line 341
    .line 342
    move/from16 v12, v22

    .line 343
    .line 344
    move/from16 v13, v25

    .line 345
    .line 346
    move/from16 v8, v27

    .line 347
    .line 348
    move/from16 v14, v32

    .line 349
    .line 350
    move-object/from16 v19, v5

    .line 351
    .line 352
    move/from16 v5, v28

    .line 353
    .line 354
    :goto_7
    if-lt v12, v8, :cond_1a

    .line 355
    .line 356
    move-object/from16 v22, v10

    .line 357
    .line 358
    and-int v10, v23, v26

    .line 359
    .line 360
    shr-int v23, v23, v8

    .line 361
    .line 362
    sub-int/2addr v12, v8

    .line 363
    if-ne v10, v11, :cond_13

    .line 364
    .line 365
    move/from16 v13, v16

    .line 366
    .line 367
    move/from16 v26, v17

    .line 368
    .line 369
    move-object/from16 v10, v22

    .line 370
    .line 371
    move/from16 v8, v31

    .line 372
    .line 373
    const/4 v9, -0x1

    .line 374
    goto :goto_7

    .line 375
    :cond_13
    if-ne v10, v15, :cond_14

    .line 376
    .line 377
    move/from16 v28, v5

    .line 378
    .line 379
    move/from16 v27, v8

    .line 380
    .line 381
    move/from16 v25, v13

    .line 382
    .line 383
    move-object/from16 v5, v19

    .line 384
    .line 385
    move-object/from16 v10, v22

    .line 386
    .line 387
    move/from16 v8, v31

    .line 388
    .line 389
    const/4 v13, 0x3

    .line 390
    move/from16 v19, v9

    .line 391
    .line 392
    move/from16 v22, v12

    .line 393
    .line 394
    const/4 v9, 0x1

    .line 395
    const/4 v12, 0x0

    .line 396
    goto/16 :goto_4

    .line 397
    .line 398
    :cond_14
    move/from16 v25, v12

    .line 399
    .line 400
    const/4 v12, -0x1

    .line 401
    if-ne v9, v12, :cond_15

    .line 402
    .line 403
    aget-byte v5, v6, v10

    .line 404
    .line 405
    aput-byte v5, v3, v24

    .line 406
    .line 407
    add-int/lit8 v24, v24, 0x1

    .line 408
    .line 409
    add-int/lit8 v14, v14, 0x1

    .line 410
    .line 411
    move v5, v10

    .line 412
    move v9, v5

    .line 413
    move-object/from16 v10, v22

    .line 414
    .line 415
    move/from16 v12, v25

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_15
    if-lt v10, v13, :cond_16

    .line 419
    .line 420
    int-to-byte v5, v5

    .line 421
    aput-byte v5, v7, v29

    .line 422
    .line 423
    add-int/lit8 v29, v29, 0x1

    .line 424
    .line 425
    move v5, v9

    .line 426
    goto :goto_8

    .line 427
    :cond_16
    move v5, v10

    .line 428
    :goto_8
    if-lt v5, v11, :cond_17

    .line 429
    .line 430
    aget-byte v12, v6, v5

    .line 431
    .line 432
    aput-byte v12, v7, v29

    .line 433
    .line 434
    add-int/lit8 v29, v29, 0x1

    .line 435
    .line 436
    aget-short v5, v4, v5

    .line 437
    .line 438
    goto :goto_8

    .line 439
    :cond_17
    aget-byte v5, v6, v5

    .line 440
    .line 441
    and-int/lit16 v5, v5, 0xff

    .line 442
    .line 443
    int-to-byte v12, v5

    .line 444
    aput-byte v12, v3, v24

    .line 445
    .line 446
    :goto_9
    add-int/lit8 v24, v24, 0x1

    .line 447
    .line 448
    add-int/lit8 v14, v14, 0x1

    .line 449
    .line 450
    if-lez v29, :cond_18

    .line 451
    .line 452
    add-int/lit8 v29, v29, -0x1

    .line 453
    .line 454
    aget-byte v27, v7, v29

    .line 455
    .line 456
    aput-byte v27, v3, v24

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_18
    move/from16 v27, v5

    .line 460
    .line 461
    const/16 v5, 0x1000

    .line 462
    .line 463
    if-ge v13, v5, :cond_19

    .line 464
    .line 465
    int-to-short v9, v9

    .line 466
    aput-short v9, v4, v13

    .line 467
    .line 468
    aput-byte v12, v6, v13

    .line 469
    .line 470
    add-int/lit8 v13, v13, 0x1

    .line 471
    .line 472
    and-int v9, v13, v26

    .line 473
    .line 474
    if-nez v9, :cond_19

    .line 475
    .line 476
    if-ge v13, v5, :cond_19

    .line 477
    .line 478
    add-int/lit8 v8, v8, 0x1

    .line 479
    .line 480
    add-int v26, v26, v13

    .line 481
    .line 482
    :cond_19
    move v9, v10

    .line 483
    move-object/from16 v10, v22

    .line 484
    .line 485
    move/from16 v12, v25

    .line 486
    .line 487
    move/from16 v5, v27

    .line 488
    .line 489
    goto/16 :goto_7

    .line 490
    .line 491
    :cond_1a
    move/from16 v28, v5

    .line 492
    .line 493
    move/from16 v27, v8

    .line 494
    .line 495
    move/from16 v22, v12

    .line 496
    .line 497
    move/from16 v25, v13

    .line 498
    .line 499
    move-object/from16 v5, v19

    .line 500
    .line 501
    move/from16 v8, v31

    .line 502
    .line 503
    const/4 v12, 0x0

    .line 504
    const/4 v13, 0x3

    .line 505
    move/from16 v19, v9

    .line 506
    .line 507
    const/4 v9, 0x1

    .line 508
    goto/16 :goto_4

    .line 509
    .line 510
    :goto_a
    invoke-static {v3, v12, v2, v14}, Ljava/util/Arrays;->fill([BIIB)V

    .line 511
    .line 512
    .line 513
    iget-boolean v2, v1, Lt2/a;->e:Z

    .line 514
    .line 515
    if-nez v2, :cond_25

    .line 516
    .line 517
    iget v2, v0, Lt2/d;->p:I

    .line 518
    .line 519
    const/4 v3, 0x1

    .line 520
    if-eq v2, v3, :cond_1b

    .line 521
    .line 522
    goto/16 :goto_10

    .line 523
    .line 524
    :cond_1b
    iget-object v2, v0, Lt2/d;->j:[I

    .line 525
    .line 526
    iget v3, v1, Lt2/a;->d:I

    .line 527
    .line 528
    iget v4, v1, Lt2/a;->b:I

    .line 529
    .line 530
    iget v5, v1, Lt2/a;->c:I

    .line 531
    .line 532
    iget v6, v1, Lt2/a;->a:I

    .line 533
    .line 534
    iget v7, v0, Lt2/d;->k:I

    .line 535
    .line 536
    if-nez v7, :cond_1c

    .line 537
    .line 538
    const/4 v7, 0x1

    .line 539
    goto :goto_b

    .line 540
    :cond_1c
    const/4 v7, 0x0

    .line 541
    :goto_b
    iget v8, v0, Lt2/d;->r:I

    .line 542
    .line 543
    iget-object v9, v0, Lt2/d;->i:[B

    .line 544
    .line 545
    iget-object v10, v0, Lt2/d;->a:[I

    .line 546
    .line 547
    const/4 v11, -0x1

    .line 548
    const/4 v12, 0x0

    .line 549
    :goto_c
    if-ge v12, v3, :cond_21

    .line 550
    .line 551
    add-int v13, v12, v4

    .line 552
    .line 553
    mul-int v13, v13, v8

    .line 554
    .line 555
    add-int v15, v13, v6

    .line 556
    .line 557
    add-int v14, v15, v5

    .line 558
    .line 559
    add-int/2addr v13, v8

    .line 560
    if-ge v13, v14, :cond_1d

    .line 561
    .line 562
    move v14, v13

    .line 563
    :cond_1d
    iget v13, v1, Lt2/a;->c:I

    .line 564
    .line 565
    mul-int v13, v13, v12

    .line 566
    .line 567
    :goto_d
    if-ge v15, v14, :cond_20

    .line 568
    .line 569
    move/from16 v16, v3

    .line 570
    .line 571
    aget-byte v3, v9, v13

    .line 572
    .line 573
    move/from16 v17, v4

    .line 574
    .line 575
    and-int/lit16 v4, v3, 0xff

    .line 576
    .line 577
    if-eq v4, v11, :cond_1f

    .line 578
    .line 579
    aget v4, v10, v4

    .line 580
    .line 581
    if-eqz v4, :cond_1e

    .line 582
    .line 583
    aput v4, v2, v15

    .line 584
    .line 585
    goto :goto_e

    .line 586
    :cond_1e
    move v11, v3

    .line 587
    :cond_1f
    :goto_e
    add-int/lit8 v13, v13, 0x1

    .line 588
    .line 589
    add-int/lit8 v15, v15, 0x1

    .line 590
    .line 591
    move/from16 v3, v16

    .line 592
    .line 593
    move/from16 v4, v17

    .line 594
    .line 595
    goto :goto_d

    .line 596
    :cond_20
    move/from16 v16, v3

    .line 597
    .line 598
    move/from16 v17, v4

    .line 599
    .line 600
    add-int/lit8 v12, v12, 0x1

    .line 601
    .line 602
    const/4 v14, 0x0

    .line 603
    goto :goto_c

    .line 604
    :cond_21
    iget-object v2, v0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 605
    .line 606
    if-eqz v2, :cond_22

    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-nez v2, :cond_23

    .line 613
    .line 614
    :cond_22
    iget-object v2, v0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 615
    .line 616
    if-nez v2, :cond_24

    .line 617
    .line 618
    if-eqz v7, :cond_24

    .line 619
    .line 620
    const/4 v2, -0x1

    .line 621
    if-eq v11, v2, :cond_24

    .line 622
    .line 623
    :cond_23
    const/4 v12, 0x1

    .line 624
    goto :goto_f

    .line 625
    :cond_24
    const/4 v12, 0x0

    .line 626
    :goto_f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    iput-object v2, v0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 631
    .line 632
    goto/16 :goto_1f

    .line 633
    .line 634
    :cond_25
    :goto_10
    iget-object v2, v0, Lt2/d;->j:[I

    .line 635
    .line 636
    iget v3, v1, Lt2/a;->d:I

    .line 637
    .line 638
    iget v4, v0, Lt2/d;->p:I

    .line 639
    .line 640
    div-int/2addr v3, v4

    .line 641
    iget v5, v1, Lt2/a;->b:I

    .line 642
    .line 643
    div-int/2addr v5, v4

    .line 644
    iget v6, v1, Lt2/a;->c:I

    .line 645
    .line 646
    div-int/2addr v6, v4

    .line 647
    iget v7, v1, Lt2/a;->a:I

    .line 648
    .line 649
    div-int/2addr v7, v4

    .line 650
    iget v8, v0, Lt2/d;->k:I

    .line 651
    .line 652
    if-nez v8, :cond_26

    .line 653
    .line 654
    const/4 v14, 0x1

    .line 655
    goto :goto_11

    .line 656
    :cond_26
    const/4 v14, 0x0

    .line 657
    :goto_11
    iget v8, v0, Lt2/d;->r:I

    .line 658
    .line 659
    iget v9, v0, Lt2/d;->q:I

    .line 660
    .line 661
    iget-object v10, v0, Lt2/d;->i:[B

    .line 662
    .line 663
    iget-object v11, v0, Lt2/d;->a:[I

    .line 664
    .line 665
    iget-object v12, v0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 666
    .line 667
    const/4 v13, 0x0

    .line 668
    const/4 v15, 0x0

    .line 669
    const/16 v16, 0x1

    .line 670
    .line 671
    const/16 v17, 0x8

    .line 672
    .line 673
    :goto_12
    if-ge v13, v3, :cond_3c

    .line 674
    .line 675
    move-object/from16 p2, v12

    .line 676
    .line 677
    iget-boolean v12, v1, Lt2/a;->e:Z

    .line 678
    .line 679
    if-eqz v12, :cond_2b

    .line 680
    .line 681
    if-lt v15, v3, :cond_2a

    .line 682
    .line 683
    add-int/lit8 v12, v16, 0x1

    .line 684
    .line 685
    move/from16 v18, v3

    .line 686
    .line 687
    const/4 v3, 0x2

    .line 688
    if-eq v12, v3, :cond_29

    .line 689
    .line 690
    const/4 v3, 0x3

    .line 691
    if-eq v12, v3, :cond_28

    .line 692
    .line 693
    const/4 v3, 0x4

    .line 694
    if-eq v12, v3, :cond_27

    .line 695
    .line 696
    move/from16 v16, v12

    .line 697
    .line 698
    goto :goto_13

    .line 699
    :cond_27
    move/from16 v16, v12

    .line 700
    .line 701
    const/4 v15, 0x1

    .line 702
    const/16 v17, 0x2

    .line 703
    .line 704
    goto :goto_13

    .line 705
    :cond_28
    const/4 v3, 0x4

    .line 706
    move/from16 v16, v12

    .line 707
    .line 708
    const/4 v15, 0x2

    .line 709
    const/16 v17, 0x4

    .line 710
    .line 711
    goto :goto_13

    .line 712
    :cond_29
    const/4 v3, 0x4

    .line 713
    move/from16 v16, v12

    .line 714
    .line 715
    const/4 v15, 0x4

    .line 716
    goto :goto_13

    .line 717
    :cond_2a
    move/from16 v18, v3

    .line 718
    .line 719
    :goto_13
    add-int v3, v15, v17

    .line 720
    .line 721
    goto :goto_14

    .line 722
    :cond_2b
    move/from16 v18, v3

    .line 723
    .line 724
    move v3, v15

    .line 725
    move v15, v13

    .line 726
    :goto_14
    add-int/2addr v15, v5

    .line 727
    const/4 v12, 0x1

    .line 728
    if-ne v4, v12, :cond_2c

    .line 729
    .line 730
    const/4 v12, 0x1

    .line 731
    goto :goto_15

    .line 732
    :cond_2c
    const/4 v12, 0x0

    .line 733
    :goto_15
    if-ge v15, v9, :cond_3b

    .line 734
    .line 735
    mul-int v15, v15, v8

    .line 736
    .line 737
    add-int v19, v15, v7

    .line 738
    .line 739
    move/from16 v20, v3

    .line 740
    .line 741
    add-int v3, v19, v6

    .line 742
    .line 743
    add-int/2addr v15, v8

    .line 744
    if-ge v15, v3, :cond_2d

    .line 745
    .line 746
    move v3, v15

    .line 747
    :cond_2d
    mul-int v15, v13, v4

    .line 748
    .line 749
    move/from16 v21, v5

    .line 750
    .line 751
    iget v5, v1, Lt2/a;->c:I

    .line 752
    .line 753
    mul-int v15, v15, v5

    .line 754
    .line 755
    if-eqz v12, :cond_32

    .line 756
    .line 757
    move-object/from16 v12, p2

    .line 758
    .line 759
    move/from16 v5, v19

    .line 760
    .line 761
    :goto_16
    if-ge v5, v3, :cond_30

    .line 762
    .line 763
    move/from16 v23, v6

    .line 764
    .line 765
    aget-byte v6, v10, v15

    .line 766
    .line 767
    and-int/lit16 v6, v6, 0xff

    .line 768
    .line 769
    aget v6, v11, v6

    .line 770
    .line 771
    if-eqz v6, :cond_2e

    .line 772
    .line 773
    aput v6, v2, v5

    .line 774
    .line 775
    goto :goto_17

    .line 776
    :cond_2e
    if-eqz v14, :cond_2f

    .line 777
    .line 778
    if-nez v12, :cond_2f

    .line 779
    .line 780
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 781
    .line 782
    move-object v12, v6

    .line 783
    :cond_2f
    :goto_17
    add-int/2addr v15, v4

    .line 784
    add-int/lit8 v5, v5, 0x1

    .line 785
    .line 786
    move/from16 v6, v23

    .line 787
    .line 788
    goto :goto_16

    .line 789
    :cond_30
    move/from16 v23, v6

    .line 790
    .line 791
    :cond_31
    move/from16 v29, v7

    .line 792
    .line 793
    move/from16 v31, v8

    .line 794
    .line 795
    move/from16 v32, v9

    .line 796
    .line 797
    goto/16 :goto_1d

    .line 798
    .line 799
    :cond_32
    move/from16 v23, v6

    .line 800
    .line 801
    sub-int v5, v3, v19

    .line 802
    .line 803
    mul-int v5, v5, v4

    .line 804
    .line 805
    add-int/2addr v5, v15

    .line 806
    move-object/from16 v12, p2

    .line 807
    .line 808
    move/from16 v6, v19

    .line 809
    .line 810
    :goto_18
    if-ge v6, v3, :cond_31

    .line 811
    .line 812
    move/from16 v19, v3

    .line 813
    .line 814
    iget v3, v1, Lt2/a;->c:I

    .line 815
    .line 816
    move/from16 v29, v7

    .line 817
    .line 818
    move/from16 v31, v8

    .line 819
    .line 820
    move v7, v15

    .line 821
    const/16 v24, 0x0

    .line 822
    .line 823
    const/16 v25, 0x0

    .line 824
    .line 825
    const/16 v26, 0x0

    .line 826
    .line 827
    const/16 v27, 0x0

    .line 828
    .line 829
    const/16 v28, 0x0

    .line 830
    .line 831
    :goto_19
    iget v8, v0, Lt2/d;->p:I

    .line 832
    .line 833
    add-int/2addr v8, v15

    .line 834
    if-ge v7, v8, :cond_34

    .line 835
    .line 836
    iget-object v8, v0, Lt2/d;->i:[B

    .line 837
    .line 838
    move/from16 v32, v9

    .line 839
    .line 840
    array-length v9, v8

    .line 841
    if-ge v7, v9, :cond_35

    .line 842
    .line 843
    if-ge v7, v5, :cond_35

    .line 844
    .line 845
    aget-byte v8, v8, v7

    .line 846
    .line 847
    and-int/lit16 v8, v8, 0xff

    .line 848
    .line 849
    iget-object v9, v0, Lt2/d;->a:[I

    .line 850
    .line 851
    aget v8, v9, v8

    .line 852
    .line 853
    if-eqz v8, :cond_33

    .line 854
    .line 855
    shr-int/lit8 v9, v8, 0x18

    .line 856
    .line 857
    and-int/lit16 v9, v9, 0xff

    .line 858
    .line 859
    add-int v24, v24, v9

    .line 860
    .line 861
    shr-int/lit8 v9, v8, 0x10

    .line 862
    .line 863
    and-int/lit16 v9, v9, 0xff

    .line 864
    .line 865
    add-int v25, v25, v9

    .line 866
    .line 867
    shr-int/lit8 v9, v8, 0x8

    .line 868
    .line 869
    and-int/lit16 v9, v9, 0xff

    .line 870
    .line 871
    add-int v26, v26, v9

    .line 872
    .line 873
    and-int/lit16 v8, v8, 0xff

    .line 874
    .line 875
    add-int v27, v27, v8

    .line 876
    .line 877
    add-int/lit8 v28, v28, 0x1

    .line 878
    .line 879
    :cond_33
    add-int/lit8 v7, v7, 0x1

    .line 880
    .line 881
    move/from16 v9, v32

    .line 882
    .line 883
    goto :goto_19

    .line 884
    :cond_34
    move/from16 v32, v9

    .line 885
    .line 886
    :cond_35
    add-int/2addr v3, v15

    .line 887
    move v7, v3

    .line 888
    :goto_1a
    iget v8, v0, Lt2/d;->p:I

    .line 889
    .line 890
    add-int/2addr v8, v3

    .line 891
    if-ge v7, v8, :cond_37

    .line 892
    .line 893
    iget-object v8, v0, Lt2/d;->i:[B

    .line 894
    .line 895
    array-length v9, v8

    .line 896
    if-ge v7, v9, :cond_37

    .line 897
    .line 898
    if-ge v7, v5, :cond_37

    .line 899
    .line 900
    aget-byte v8, v8, v7

    .line 901
    .line 902
    and-int/lit16 v8, v8, 0xff

    .line 903
    .line 904
    iget-object v9, v0, Lt2/d;->a:[I

    .line 905
    .line 906
    aget v8, v9, v8

    .line 907
    .line 908
    if-eqz v8, :cond_36

    .line 909
    .line 910
    shr-int/lit8 v9, v8, 0x18

    .line 911
    .line 912
    and-int/lit16 v9, v9, 0xff

    .line 913
    .line 914
    add-int v24, v24, v9

    .line 915
    .line 916
    shr-int/lit8 v9, v8, 0x10

    .line 917
    .line 918
    and-int/lit16 v9, v9, 0xff

    .line 919
    .line 920
    add-int v25, v25, v9

    .line 921
    .line 922
    shr-int/lit8 v9, v8, 0x8

    .line 923
    .line 924
    and-int/lit16 v9, v9, 0xff

    .line 925
    .line 926
    add-int v26, v26, v9

    .line 927
    .line 928
    and-int/lit16 v8, v8, 0xff

    .line 929
    .line 930
    add-int v27, v27, v8

    .line 931
    .line 932
    add-int/lit8 v28, v28, 0x1

    .line 933
    .line 934
    :cond_36
    add-int/lit8 v7, v7, 0x1

    .line 935
    .line 936
    goto :goto_1a

    .line 937
    :cond_37
    if-nez v28, :cond_38

    .line 938
    .line 939
    const/4 v3, 0x0

    .line 940
    goto :goto_1b

    .line 941
    :cond_38
    div-int v24, v24, v28

    .line 942
    .line 943
    shl-int/lit8 v3, v24, 0x18

    .line 944
    .line 945
    div-int v25, v25, v28

    .line 946
    .line 947
    shl-int/lit8 v7, v25, 0x10

    .line 948
    .line 949
    or-int/2addr v3, v7

    .line 950
    div-int v26, v26, v28

    .line 951
    .line 952
    shl-int/lit8 v7, v26, 0x8

    .line 953
    .line 954
    or-int/2addr v3, v7

    .line 955
    div-int v27, v27, v28

    .line 956
    .line 957
    or-int v3, v3, v27

    .line 958
    .line 959
    :goto_1b
    if-eqz v3, :cond_39

    .line 960
    .line 961
    aput v3, v2, v6

    .line 962
    .line 963
    goto :goto_1c

    .line 964
    :cond_39
    if-eqz v14, :cond_3a

    .line 965
    .line 966
    if-nez v12, :cond_3a

    .line 967
    .line 968
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 969
    .line 970
    move-object v12, v3

    .line 971
    :cond_3a
    :goto_1c
    add-int/2addr v15, v4

    .line 972
    add-int/lit8 v6, v6, 0x1

    .line 973
    .line 974
    move/from16 v3, v19

    .line 975
    .line 976
    move/from16 v7, v29

    .line 977
    .line 978
    move/from16 v8, v31

    .line 979
    .line 980
    move/from16 v9, v32

    .line 981
    .line 982
    goto/16 :goto_18

    .line 983
    .line 984
    :cond_3b
    move/from16 v20, v3

    .line 985
    .line 986
    move/from16 v21, v5

    .line 987
    .line 988
    move/from16 v23, v6

    .line 989
    .line 990
    move/from16 v29, v7

    .line 991
    .line 992
    move/from16 v31, v8

    .line 993
    .line 994
    move/from16 v32, v9

    .line 995
    .line 996
    move-object/from16 v12, p2

    .line 997
    .line 998
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    .line 999
    .line 1000
    move/from16 v3, v18

    .line 1001
    .line 1002
    move/from16 v15, v20

    .line 1003
    .line 1004
    move/from16 v5, v21

    .line 1005
    .line 1006
    move/from16 v6, v23

    .line 1007
    .line 1008
    move/from16 v7, v29

    .line 1009
    .line 1010
    move/from16 v8, v31

    .line 1011
    .line 1012
    move/from16 v9, v32

    .line 1013
    .line 1014
    goto/16 :goto_12

    .line 1015
    .line 1016
    :cond_3c
    move-object/from16 p2, v12

    .line 1017
    .line 1018
    iget-object v2, v0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 1019
    .line 1020
    if-nez v2, :cond_3e

    .line 1021
    .line 1022
    if-nez p2, :cond_3d

    .line 1023
    .line 1024
    const/4 v12, 0x0

    .line 1025
    goto :goto_1e

    .line 1026
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v12

    .line 1030
    :goto_1e
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v2

    .line 1034
    iput-object v2, v0, Lt2/d;->s:Ljava/lang/Boolean;

    .line 1035
    .line 1036
    :cond_3e
    :goto_1f
    iget-boolean v2, v0, Lt2/d;->n:Z

    .line 1037
    .line 1038
    if-eqz v2, :cond_41

    .line 1039
    .line 1040
    iget v1, v1, Lt2/a;->g:I

    .line 1041
    .line 1042
    if-eqz v1, :cond_3f

    .line 1043
    .line 1044
    const/4 v2, 0x1

    .line 1045
    if-ne v1, v2, :cond_41

    .line 1046
    .line 1047
    :cond_3f
    iget-object v1, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 1048
    .line 1049
    if-nez v1, :cond_40

    .line 1050
    .line 1051
    invoke-virtual/range {p0 .. p0}, Lt2/d;->a()Landroid/graphics/Bitmap;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    iput-object v1, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 1056
    .line 1057
    :cond_40
    iget-object v1, v0, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 1058
    .line 1059
    iget v7, v0, Lt2/d;->r:I

    .line 1060
    .line 1061
    iget v8, v0, Lt2/d;->q:I

    .line 1062
    .line 1063
    const/4 v3, 0x0

    .line 1064
    const/4 v5, 0x0

    .line 1065
    const/4 v6, 0x0

    .line 1066
    move-object/from16 v2, v22

    .line 1067
    .line 1068
    move v4, v7

    .line 1069
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1070
    .line 1071
    .line 1072
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lt2/d;->a()Landroid/graphics/Bitmap;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v9

    .line 1076
    iget v7, v0, Lt2/d;->r:I

    .line 1077
    .line 1078
    iget v8, v0, Lt2/d;->q:I

    .line 1079
    .line 1080
    const/4 v3, 0x0

    .line 1081
    const/4 v5, 0x0

    .line 1082
    const/4 v6, 0x0

    .line 1083
    move-object v1, v9

    .line 1084
    move-object/from16 v2, v22

    .line 1085
    .line 1086
    move v4, v7

    .line 1087
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1088
    .line 1089
    .line 1090
    return-object v9
.end method
