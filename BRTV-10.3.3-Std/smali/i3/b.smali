.class public final Li3/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lv2/j;


# static fields
.field public static final f:Lu6/e;

.field public static final g:Li3/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Li3/a;

.field public final d:Lu6/e;

.field public final e:La7/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu6/e;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Li3/b;->f:Lu6/e;

    .line 9
    .line 10
    new-instance v0, Li3/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Li3/a;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Li3/b;->g:Li3/a;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ly2/a;Ly2/f;)V
    .locals 1

    .line 1
    sget-object v0, Li3/b;->f:Lu6/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Li3/b;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Li3/b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Li3/b;->d:Lu6/e;

    .line 15
    .line 16
    new-instance p1, La7/f;

    .line 17
    .line 18
    const/16 p2, 0x16

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, p2, p3, p4, v0}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Li3/b;->e:La7/f;

    .line 25
    .line 26
    sget-object p1, Li3/b;->g:Li3/a;

    .line 27
    .line 28
    iput-object p1, p0, Li3/b;->c:Li3/a;

    .line 29
    .line 30
    return-void
.end method

.method public static d(Lt2/b;II)I
    .locals 5

    .line 1
    iget v0, p0, Lt2/b;->g:I

    .line 2
    .line 3
    div-int/2addr v0, p2

    .line 4
    iget v1, p0, Lt2/b;->f:I

    .line 5
    .line 6
    div-int/2addr v1, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    const/4 v1, 0x1

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v2, "BufferGifDecoder"

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    if-le v0, v1, :cond_1

    .line 34
    .line 35
    const-string v1, "Downsampling GIF, sampleSize: "

    .line 36
    .line 37
    const-string v3, ", target dimens: ["

    .line 38
    .line 39
    const-string v4, "x"

    .line 40
    .line 41
    invoke-static {v1, v0, v3, p1, v4}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, "], actual dimens: ["

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget p2, p0, Lt2/b;->f:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lt2/b;->g:I

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "]"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILv2/h;)Lx2/x;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object p1, p0, Li3/b;->c:Li3/a;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p1, Li3/a;->a:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lt2/c;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lt2/c;

    .line 18
    .line 19
    invoke-direct {v0}, Lt2/c;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    move-object v6, v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p2

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, v6, Lt2/c;->b:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    iget-object v0, v6, Lt2/c;->a:[B

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lt2/b;

    .line 36
    .line 37
    invoke-direct {v0}, Lt2/b;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, v6, Lt2/c;->c:Lt2/b;

    .line 41
    .line 42
    iput v2, v6, Lt2/c;->d:I

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, v6, Lt2/c;->b:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    iget-object v0, v6, Lt2/c;->b:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    move-object v0, p0

    .line 62
    move v2, p2

    .line 63
    move v3, p3

    .line 64
    move-object v4, v6

    .line 65
    move-object v5, p4

    .line 66
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Li3/b;->c(Ljava/nio/ByteBuffer;IILt2/c;Lv2/h;)Lg3/c;

    .line 67
    .line 68
    .line 69
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    iget-object p2, p0, Li3/b;->c:Li3/a;

    .line 71
    .line 72
    invoke-virtual {p2, v6}, Li3/a;->c(Lt2/c;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    iget-object p2, p0, Li3/b;->c:Li3/a;

    .line 78
    .line 79
    invoke-virtual {p2, v6}, Li3/a;->c(Lt2/c;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p2
.end method

.method public final b(Ljava/lang/Object;Lv2/h;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v0, Li3/j;->b:Lv2/g;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Li3/b;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p2, p1}, Lu7/d;->q(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 24
    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public final c(Ljava/nio/ByteBuffer;IILt2/c;Lv2/h;)Lg3/c;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v2, "Decoded GIF from stream in "

    .line 5
    .line 6
    const-string v3, "BufferGifDecoder"

    .line 7
    .line 8
    sget v4, Lr3/h;->b:I

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    const/4 v6, 0x2

    .line 15
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lt2/c;->b()Lt2/b;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget v8, v7, Lt2/b;->c:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    if-lez v8, :cond_5

    .line 23
    .line 24
    iget v8, v7, Lt2/b;->b:I

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    sget-object v8, Li3/j;->a:Lv2/g;

    .line 31
    .line 32
    move-object/from16 v10, p5

    .line 33
    .line 34
    invoke-virtual {v10, v8}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    sget-object v10, Lv2/a;->b:Lv2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    if-ne v8, v10, :cond_1

    .line 41
    .line 42
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    :goto_0
    move/from16 v13, p2

    .line 45
    .line 46
    move/from16 v14, p3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_1
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    invoke-static {v7, v13, v14}, Li3/b;->d(Lt2/b;II)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    iget-object v11, v1, Li3/b;->d:Lu6/e;

    .line 60
    .line 61
    iget-object v12, v1, Li3/b;->e:La7/f;

    .line 62
    .line 63
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v15, Lt2/d;

    .line 67
    .line 68
    move-object/from16 v11, p1

    .line 69
    .line 70
    invoke-direct {v15, v12, v7, v11, v10}, Lt2/d;-><init>(La7/f;Lt2/b;Ljava/nio/ByteBuffer;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v8}, Lt2/d;->c(Landroid/graphics/Bitmap$Config;)V

    .line 74
    .line 75
    .line 76
    iget v7, v15, Lt2/d;->k:I

    .line 77
    .line 78
    add-int/2addr v7, v0

    .line 79
    iget-object v8, v15, Lt2/d;->l:Lt2/b;

    .line 80
    .line 81
    iget v8, v8, Lt2/b;->c:I

    .line 82
    .line 83
    rem-int/2addr v7, v8

    .line 84
    iput v7, v15, Lt2/d;->k:I

    .line 85
    .line 86
    invoke-virtual {v15}, Lt2/d;->b()Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    if-nez v7, :cond_3

    .line 91
    .line 92
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5}, Lr3/h;->a(J)D

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_2
    return-object v9

    .line 118
    :cond_3
    :try_start_3
    new-instance v8, Li3/d;

    .line 119
    .line 120
    iget-object v9, v1, Li3/b;->a:Landroid/content/Context;

    .line 121
    .line 122
    new-instance v12, Li3/c;

    .line 123
    .line 124
    new-instance v11, Li3/i;

    .line 125
    .line 126
    invoke-static {v9}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    move-object v10, v11

    .line 131
    move-object v6, v11

    .line 132
    move-object v11, v9

    .line 133
    move-object v9, v12

    .line 134
    move-object v12, v15

    .line 135
    move/from16 v13, p2

    .line 136
    .line 137
    move/from16 v14, p3

    .line 138
    .line 139
    move-object v15, v7

    .line 140
    invoke-direct/range {v10 .. v15}, Li3/i;-><init>(Lcom/bumptech/glide/b;Lt2/d;IILandroid/graphics/Bitmap;)V

    .line 141
    .line 142
    .line 143
    const/4 v7, 0x0

    .line 144
    invoke-direct {v9, v7, v6}, Li3/c;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v8, v9}, Li3/d;-><init>(Li3/c;)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Lg3/c;

    .line 151
    .line 152
    invoke-direct {v6, v8, v0}, Lg3/c;-><init>(Landroid/graphics/drawable/Drawable;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    .line 154
    .line 155
    const/4 v7, 0x2

    .line 156
    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v4, v5}, Lr3/h;->a(J)D

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_4
    return-object v6

    .line 182
    :goto_2
    const/4 v6, 0x2

    .line 183
    goto :goto_4

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    goto :goto_2

    .line 186
    :cond_5
    :goto_3
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v4, v5}, Lr3/h;->a(J)D

    .line 198
    .line 199
    .line 200
    move-result-wide v4

    .line 201
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_6
    return-object v9

    .line 212
    :goto_4
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_7

    .line 217
    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v4, v5}, Lr3/h;->a(J)D

    .line 224
    .line 225
    .line 226
    move-result-wide v4

    .line 227
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_7
    throw v0
.end method
