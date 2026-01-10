.class public abstract Lt1/d;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lq/b;

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lq/b;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v1, v2}, Lq/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lt1/d;->a:Lq/b;

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v1, Lt1/d;->b:[B

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    fill-array-data v1, :array_1

    .line 20
    .line 21
    .line 22
    sput-object v1, Lt1/d;->c:[B

    .line 23
    .line 24
    new-array v1, v0, [B

    .line 25
    .line 26
    fill-array-data v1, :array_2

    .line 27
    .line 28
    .line 29
    sput-object v1, Lt1/d;->d:[B

    .line 30
    .line 31
    new-array v1, v0, [B

    .line 32
    .line 33
    fill-array-data v1, :array_3

    .line 34
    .line 35
    .line 36
    sput-object v1, Lt1/d;->e:[B

    .line 37
    .line 38
    new-array v1, v0, [B

    .line 39
    .line 40
    fill-array-data v1, :array_4

    .line 41
    .line 42
    .line 43
    sput-object v1, Lt1/d;->f:[B

    .line 44
    .line 45
    new-array v1, v0, [B

    .line 46
    .line 47
    fill-array-data v1, :array_5

    .line 48
    .line 49
    .line 50
    sput-object v1, Lt1/d;->g:[B

    .line 51
    .line 52
    new-array v1, v0, [B

    .line 53
    .line 54
    fill-array-data v1, :array_6

    .line 55
    .line 56
    .line 57
    sput-object v1, Lt1/d;->h:[B

    .line 58
    .line 59
    new-array v1, v0, [B

    .line 60
    .line 61
    fill-array-data v1, :array_7

    .line 62
    .line 63
    .line 64
    sput-object v1, Lt1/d;->i:[B

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    fill-array-data v0, :array_8

    .line 69
    .line 70
    .line 71
    sput-object v0, Lt1/d;->j:[B

    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    .line 76
    :array_1
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public static a([B)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/util/zip/Deflater;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    .line 13
    .line 14
    invoke-direct {v2, v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_2
    move-exception v1

    .line 39
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public static b([Lt1/b;[B)[B
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    iget-object v5, v4, Lt1/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v4, Lt1/b;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v5, v6}, Lt1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    array-length v5, v5

    .line 24
    add-int/lit8 v5, v5, 0x10

    .line 25
    .line 26
    iget v6, v4, Lt1/b;->e:I

    .line 27
    .line 28
    mul-int/lit8 v6, v6, 0x2

    .line 29
    .line 30
    add-int/2addr v6, v5

    .line 31
    iget v5, v4, Lt1/b;->f:I

    .line 32
    .line 33
    add-int/2addr v6, v5

    .line 34
    iget v4, v4, Lt1/b;->g:I

    .line 35
    .line 36
    mul-int/lit8 v4, v4, 0x2

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x7

    .line 39
    .line 40
    and-int/lit8 v4, v4, -0x8

    .line 41
    .line 42
    div-int/lit8 v4, v4, 0x8

    .line 43
    .line 44
    add-int/2addr v4, v6

    .line 45
    add-int/2addr v3, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lt1/d;->f:[B

    .line 55
    .line 56
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    array-length v2, p0

    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_1
    if-ge v4, v2, :cond_5

    .line 65
    .line 66
    aget-object v5, p0, v4

    .line 67
    .line 68
    iget-object v6, v5, Lt1/b;->a:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v7, v5, Lt1/b;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1, v6, v7}, Lt1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v0, v5, v6}, Lt1/d;->p(Ljava/io/ByteArrayOutputStream;Lt1/b;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v5}, Lt1/d;->r(Ljava/io/ByteArrayOutputStream;Lt1/b;)V

    .line 80
    .line 81
    .line 82
    iget-object v6, v5, Lt1/b;->h:[I

    .line 83
    .line 84
    array-length v7, v6

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    :goto_2
    if-ge v8, v7, :cond_1

    .line 88
    .line 89
    aget v10, v6, v8

    .line 90
    .line 91
    sub-int v9, v10, v9

    .line 92
    .line 93
    invoke-static {v0, v9}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v8, v8, 0x1

    .line 97
    .line 98
    move v9, v10

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    invoke-static {v0, v5}, Lt1/d;->q(Ljava/io/ByteArrayOutputStream;Lt1/b;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    array-length v2, p0

    .line 107
    const/4 v4, 0x0

    .line 108
    :goto_3
    if-ge v4, v2, :cond_3

    .line 109
    .line 110
    aget-object v5, p0, v4

    .line 111
    .line 112
    iget-object v6, v5, Lt1/b;->a:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v7, v5, Lt1/b;->b:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p1, v6, v7}, Lt1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v0, v5, v6}, Lt1/d;->p(Ljava/io/ByteArrayOutputStream;Lt1/b;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_3
    array-length p1, p0

    .line 127
    const/4 v2, 0x0

    .line 128
    :goto_4
    if-ge v2, p1, :cond_5

    .line 129
    .line 130
    aget-object v4, p0, v2

    .line 131
    .line 132
    invoke-static {v0, v4}, Lt1/d;->r(Ljava/io/ByteArrayOutputStream;Lt1/b;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, v4, Lt1/b;->h:[I

    .line 136
    .line 137
    array-length v6, v5

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    :goto_5
    if-ge v7, v6, :cond_4

    .line 141
    .line 142
    aget v9, v5, v7

    .line 143
    .line 144
    sub-int v8, v9, v8

    .line 145
    .line 146
    invoke-static {v0, v8}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v7, v7, 0x1

    .line 150
    .line 151
    move v8, v9

    .line 152
    goto :goto_5

    .line 153
    :cond_4
    invoke-static {v0, v4}, Lt1/d;->q(Ljava/io/ByteArrayOutputStream;Lt1/b;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-ne p0, v3, :cond_6

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string p1, "The bytes saved do not match expectation. actual="

    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p1, " expected="

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
.end method

.method public static c(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget-object v5, p0, v3

    .line 22
    .line 23
    invoke-static {v5}, Lt1/d;->c(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v4

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public static d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lt1/d;->h:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lt1/d;->g:[B

    .line 8
    .line 9
    const-string v3, "!"

    .line 10
    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :goto_0
    move-object v1, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v3

    .line 25
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-gtz v5, :cond_4

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    :cond_3
    :goto_2
    return-object p2

    .line 53
    :cond_4
    const-string v5, "classes.dex"

    .line 54
    .line 55
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_a

    .line 67
    .line 68
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    const-string v1, ".apk"

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_7
    invoke-static {p1}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    :goto_3
    move-object v3, v4

    .line 95
    goto :goto_4

    .line 96
    :cond_8
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_9

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_9
    :goto_4
    invoke-static {p1, v3, p2}, La/e;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_a
    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_b

    .line 113
    .line 114
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    goto :goto_6

    .line 119
    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_c

    .line 124
    .line 125
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    :cond_c
    :goto_6
    return-object p2
.end method

.method public static e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    :goto_1
    return-void
.end method

.method public static f(Ljava/io/InputStream;I)[B
    .locals 3

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p1, :cond_1

    .line 5
    .line 6
    sub-int v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "Not enough bytes to read: "

    .line 17
    .line 18
    invoke-static {p1, p0}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    return-object v0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;I)[I
    .locals 5

    .line 1
    new-array v0, p1, [I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {p0, v3}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    long-to-int v4, v3

    .line 13
    add-int/2addr v2, v4

    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static h(Ljava/io/FileInputStream;II)[B
    .locals 8

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-array v1, p2, [B

    .line 7
    .line 8
    const/16 v2, 0x800

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_1

    .line 26
    .line 27
    if-ge v4, p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v6}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    sub-int v7, p2, v5

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v0, v1, v5, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 41
    .line 42
    .line 43
    move-result v7
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    add-int/2addr v5, v7

    .line 45
    add-int/2addr v4, v6

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p2, "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " bytes"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    if-ne v4, p1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 91
    .line 92
    .line 93
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_2
    :try_start_3
    const-string p0, "Inflater did not finish"

    .line 101
    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p2, "Didn\'t read enough bytes during decompression. expected="

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " actual="

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public static i(Ljava/io/FileInputStream;[B[B[Lt1/b;)[Lt1/b;
    .locals 6

    .line 1
    sget-object v0, Lt1/d;->i:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Unsupported meta version"

    .line 8
    .line 9
    const-string v3, "Content found after the end of file"

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    sget-object v1, Lt1/d;->d:[B

    .line 15
    .line 16
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-static {p0, p1}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    long-to-int p2, p1

    .line 34
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    long-to-int p1, v4

    .line 43
    long-to-int v1, v0

    .line 44
    invoke-static {p0, p1, v1}, Lt1/d;->h(Ljava/io/FileInputStream;II)[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-gtz p0, :cond_0

    .line 53
    .line 54
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-static {p0, p2, p3}, Lt1/d;->j(Ljava/io/ByteArrayInputStream;I[Lt1/b;)[Lt1/b;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    throw p1

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string p1, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_3
    sget-object v0, Lt1/d;->j:[B

    .line 98
    .line 99
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    invoke-static {p0, p1}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    long-to-int p1, v0

    .line 111
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    long-to-int v2, v4

    .line 120
    long-to-int v1, v0

    .line 121
    invoke-static {p0, v2, v1}, Lt1/d;->h(Ljava/io/FileInputStream;II)[B

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-gtz p0, :cond_4

    .line 130
    .line 131
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 132
    .line 133
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    .line 135
    .line 136
    :try_start_2
    invoke-static {p0, p2, p1, p3}, Lt1/d;->k(Ljava/io/ByteArrayInputStream;[BI[Lt1/b;)[Lt1/b;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 141
    .line 142
    .line 143
    return-object p1

    .line 144
    :catchall_2
    move-exception p1

    .line 145
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_3
    move-exception p0

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    throw p1

    .line 154
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public static j(Ljava/io/ByteArrayInputStream;I[Lt1/b;)[Lt1/b;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Lt1/b;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p2

    .line 12
    if-ne p1, v0, :cond_4

    .line 13
    .line 14
    new-array v0, p1, [Ljava/lang/String;

    .line 15
    .line 16
    new-array v2, p1, [I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, p1, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    long-to-int v6, v5

    .line 27
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    long-to-int v5, v4

    .line 32
    aput v5, v2, v3

    .line 33
    .line 34
    new-instance v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, v6}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    aput-object v4, v0, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 51
    .line 52
    aget-object v3, p2, v1

    .line 53
    .line 54
    iget-object v4, v3, Lt1/b;->b:Ljava/lang/String;

    .line 55
    .line 56
    aget-object v5, v0, v1

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    aget v4, v2, v1

    .line 65
    .line 66
    iput v4, v3, Lt1/b;->e:I

    .line 67
    .line 68
    invoke-static {p0, v4}, Lt1/d;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v3, Lt1/b;->h:[I

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p1, "Order of dexfiles in metadata did not match baseline"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    return-object p2

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p1, "Mismatched number of dex files found in metadata"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static k(Ljava/io/ByteArrayInputStream;[BI[Lt1/b;)[Lt1/b;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Lt1/b;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p3

    .line 12
    if-ne p2, v0, :cond_9

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p2, :cond_8

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {p0, v2}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v2}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    long-to-int v4, v3

    .line 26
    new-instance v3, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, v4}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x4

    .line 38
    invoke-static {p0, v4}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {p0, v2}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    long-to-int v2, v6

    .line 47
    array-length v6, p3

    .line 48
    const/4 v7, 0x0

    .line 49
    if-gtz v6, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    const-string v6, "!"

    .line 53
    .line 54
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-gez v6, :cond_2

    .line 59
    .line 60
    const-string v6, ":"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    :cond_2
    if-lez v6, :cond_3

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v6, v3

    .line 76
    :goto_1
    const/4 v8, 0x0

    .line 77
    :goto_2
    array-length v9, p3

    .line 78
    if-ge v8, v9, :cond_5

    .line 79
    .line 80
    aget-object v9, p3, v8

    .line 81
    .line 82
    iget-object v9, v9, Lt1/b;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    aget-object v7, p3, v8

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_3
    if-eqz v7, :cond_7

    .line 97
    .line 98
    iput-wide v4, v7, Lt1/b;->d:J

    .line 99
    .line 100
    invoke-static {p0, v2}, Lt1/d;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v4, Lt1/d;->h:[B

    .line 105
    .line 106
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_6

    .line 111
    .line 112
    iput v2, v7, Lt1/b;->e:I

    .line 113
    .line 114
    iput-object v3, v7, Lt1/b;->h:[I

    .line 115
    .line 116
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const-string p0, "Missing profile key: "

    .line 120
    .line 121
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_8
    return-object p3

    .line 132
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string p1, "Mismatched number of dex files found in metadata"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static l(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lt1/b;
    .locals 5

    .line 1
    sget-object v0, Lt1/d;->e:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p0, p1}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    long-to-int p1, v0

    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-static {p0, v0}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {p0, v0}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    long-to-int v0, v3

    .line 25
    long-to-int v2, v1

    .line 26
    invoke-static {p0, v0, v2}, Lt1/d;->h(Ljava/io/FileInputStream;II)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-gtz p0, :cond_0

    .line 35
    .line 36
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-static {p0, p2, p1}, Lt1/d;->n(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lt1/b;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "Content found after the end of file"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p1, "Unsupported version"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static m(Ljava/io/InputStream;I)J
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-long v3, v3

    .line 15
    mul-int/lit8 v5, v2, 0x8

    .line 16
    .line 17
    shl-long/2addr v3, v5

    .line 18
    add-long/2addr v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v0
.end method

.method public static n(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lt1/b;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-array v0, v3, [Lt1/b;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-array v2, v1, [Lt1/b;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, 0x2

    .line 19
    if-ge v4, v1, :cond_1

    .line 20
    .line 21
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    long-to-int v7, v6

    .line 26
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    long-to-int v13, v5

    .line 31
    const/4 v5, 0x4

    .line 32
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v11

    .line 40
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    new-instance v18, Lt1/b;

    .line 45
    .line 46
    new-instance v10, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v7}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v10, v7, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    long-to-int v14, v8

    .line 58
    long-to-int v15, v5

    .line 59
    new-array v5, v13, [I

    .line 60
    .line 61
    new-instance v17, Ljava/util/TreeMap;

    .line 62
    .line 63
    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    .line 64
    .line 65
    .line 66
    move-object/from16 v8, v18

    .line 67
    .line 68
    move-object/from16 v9, p1

    .line 69
    .line 70
    move-object/from16 v16, v5

    .line 71
    .line 72
    invoke-direct/range {v8 .. v17}, Lt1/b;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    .line 73
    .line 74
    .line 75
    aput-object v18, v2, v4

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v4, 0x0

    .line 81
    :goto_1
    if-ge v4, v1, :cond_e

    .line 82
    .line 83
    aget-object v6, v2, v4

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    iget v8, v6, Lt1/b;->f:I

    .line 90
    .line 91
    sub-int/2addr v7, v8

    .line 92
    const/4 v8, 0x0

    .line 93
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    iget-object v10, v6, Lt1/b;->i:Ljava/util/TreeMap;

    .line 98
    .line 99
    const/4 v11, 0x7

    .line 100
    if-le v9, v7, :cond_7

    .line 101
    .line 102
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v12

    .line 106
    long-to-int v9, v12

    .line 107
    add-int/2addr v8, v9

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const/4 v12, 0x1

    .line 113
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v10, v9, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    long-to-int v10, v9

    .line 125
    :goto_2
    if-lez v10, :cond_2

    .line 126
    .line 127
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v12}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v13

    .line 134
    long-to-int v9, v13

    .line 135
    const/4 v13, 0x6

    .line 136
    if-ne v9, v13, :cond_3

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_3
    if-ne v9, v11, :cond_4

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_4
    :goto_3
    if-lez v9, :cond_6

    .line 143
    .line 144
    invoke-static {v0, v12}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v12}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 148
    .line 149
    .line 150
    move-result-wide v13

    .line 151
    long-to-int v14, v13

    .line 152
    :goto_4
    if-lez v14, :cond_5

    .line 153
    .line 154
    invoke-static {v0, v5}, Lt1/d;->m(Ljava/io/InputStream;I)J

    .line 155
    .line 156
    .line 157
    add-int/lit8 v14, v14, -0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_5
    add-int/lit8 v9, v9, -0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, -0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-ne v8, v7, :cond_d

    .line 171
    .line 172
    iget v7, v6, Lt1/b;->e:I

    .line 173
    .line 174
    invoke-static {v0, v7}, Lt1/d;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    iput-object v7, v6, Lt1/b;->h:[I

    .line 179
    .line 180
    iget v6, v6, Lt1/b;->g:I

    .line 181
    .line 182
    mul-int/lit8 v7, v6, 0x2

    .line 183
    .line 184
    add-int/2addr v7, v11

    .line 185
    and-int/lit8 v7, v7, -0x8

    .line 186
    .line 187
    div-int/lit8 v7, v7, 0x8

    .line 188
    .line 189
    invoke-static {v0, v7}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-static {v7}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    const/4 v8, 0x0

    .line 198
    :goto_6
    if-ge v8, v6, :cond_c

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_8

    .line 205
    .line 206
    const/4 v9, 0x2

    .line 207
    goto :goto_7

    .line 208
    :cond_8
    const/4 v9, 0x0

    .line 209
    :goto_7
    add-int v11, v8, v6

    .line 210
    .line 211
    invoke-virtual {v7, v11}, Ljava/util/BitSet;->get(I)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_9

    .line 216
    .line 217
    or-int/lit8 v9, v9, 0x4

    .line 218
    .line 219
    :cond_9
    if-eqz v9, :cond_b

    .line 220
    .line 221
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    check-cast v11, Ljava/lang/Integer;

    .line 230
    .line 231
    if-nez v11, :cond_a

    .line 232
    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    or-int/2addr v9, v11

    .line 246
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    invoke-virtual {v10, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    const-string v1, "Read too much data during profile line parse"

    .line 263
    .line 264
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v0

    .line 268
    :cond_e
    return-object v2
.end method

.method public static o(Ljava/io/ByteArrayOutputStream;[B[Lt1/b;)Z
    .locals 18

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
    sget-object v3, Lt1/d;->d:[B

    .line 8
    .line 9
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v4, :cond_10

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v8, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 30
    .line 31
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    array-length v10, v2

    .line 35
    invoke-static {v9, v10}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 36
    .line 37
    .line 38
    const/4 v10, 0x2

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x2

    .line 41
    :goto_0
    array-length v13, v2

    .line 42
    if-ge v11, v13, :cond_0

    .line 43
    .line 44
    aget-object v13, v2, v11

    .line 45
    .line 46
    iget-wide v14, v13, Lt1/b;->c:J

    .line 47
    .line 48
    invoke-static {v9, v14, v15, v5}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 49
    .line 50
    .line 51
    iget-wide v14, v13, Lt1/b;->d:J

    .line 52
    .line 53
    invoke-static {v9, v14, v15, v5}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 54
    .line 55
    .line 56
    iget v14, v13, Lt1/b;->g:I

    .line 57
    .line 58
    int-to-long v14, v14

    .line 59
    invoke-static {v9, v14, v15, v5}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 60
    .line 61
    .line 62
    iget-object v14, v13, Lt1/b;->a:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v13, v13, Lt1/b;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, v14, v13}, Lt1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    add-int/lit8 v12, v12, 0xe

    .line 71
    .line 72
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    array-length v15, v15

    .line 79
    invoke-static {v9, v15}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 80
    .line 81
    .line 82
    add-int/2addr v12, v15

    .line 83
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v11, v11, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :goto_1
    move-object v1, v0

    .line 94
    goto/16 :goto_13

    .line 95
    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    array-length v11, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-string v13, ", does not match actual size "

    .line 104
    .line 105
    const-string v14, "Expected size "

    .line 106
    .line 107
    if-ne v12, v11, :cond_f

    .line 108
    .line 109
    :try_start_1
    new-instance v11, Lt1/k;

    .line 110
    .line 111
    invoke-direct {v11, v3, v7, v6}, Lt1/k;-><init>([BIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .line 124
    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    :goto_2
    :try_start_2
    array-length v12, v2

    .line 128
    if-ge v9, v12, :cond_2

    .line 129
    .line 130
    aget-object v12, v2, v9

    .line 131
    .line 132
    invoke-static {v3, v9}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v11, v11, 0x4

    .line 136
    .line 137
    iget v15, v12, Lt1/b;->e:I

    .line 138
    .line 139
    invoke-static {v3, v15}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 140
    .line 141
    .line 142
    iget v15, v12, Lt1/b;->e:I

    .line 143
    .line 144
    mul-int/lit8 v15, v15, 0x2

    .line 145
    .line 146
    add-int/2addr v11, v15

    .line 147
    iget-object v12, v12, Lt1/b;->h:[I

    .line 148
    .line 149
    array-length v15, v12

    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    :goto_3
    if-ge v6, v15, :cond_1

    .line 153
    .line 154
    aget v17, v12, v6

    .line 155
    .line 156
    sub-int v5, v17, v16

    .line 157
    .line 158
    invoke-static {v3, v5}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    move/from16 v16, v17

    .line 164
    .line 165
    const/4 v5, 0x4

    .line 166
    goto :goto_3

    .line 167
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 168
    .line 169
    const/4 v5, 0x4

    .line 170
    const/4 v6, 0x0

    .line 171
    goto :goto_2

    .line 172
    :goto_4
    move-object v1, v0

    .line 173
    goto/16 :goto_11

    .line 174
    .line 175
    :catchall_1
    move-exception v0

    .line 176
    goto :goto_4

    .line 177
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    array-length v6, v5

    .line 182
    if-ne v11, v6, :cond_e

    .line 183
    .line 184
    new-instance v6, Lt1/k;

    .line 185
    .line 186
    invoke-direct {v6, v5, v4, v7}, Lt1/k;-><init>([BIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .line 199
    .line 200
    const/4 v4, 0x0

    .line 201
    const/4 v5, 0x0

    .line 202
    :goto_5
    :try_start_3
    array-length v6, v2

    .line 203
    if-ge v4, v6, :cond_4

    .line 204
    .line 205
    aget-object v6, v2, v4

    .line 206
    .line 207
    iget-object v9, v6, Lt1/b;->i:Ljava/util/TreeMap;

    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    const/4 v11, 0x0

    .line 218
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_3

    .line 223
    .line 224
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    check-cast v12, Ljava/util/Map$Entry;

    .line 229
    .line 230
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    check-cast v12, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    or-int/2addr v11, v12

    .line 241
    goto :goto_6

    .line 242
    :cond_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 243
    .line 244
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 245
    .line 246
    .line 247
    :try_start_4
    invoke-static {v9, v6}, Lt1/d;->q(Ljava/io/ByteArrayOutputStream;Lt1/b;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 251
    .line 252
    .line 253
    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 254
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 255
    .line 256
    .line 257
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 258
    .line 259
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 260
    .line 261
    .line 262
    :try_start_6
    invoke-static {v9, v6}, Lt1/d;->r(Ljava/io/ByteArrayOutputStream;Lt1/b;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 266
    .line 267
    .line 268
    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 269
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 270
    .line 271
    .line 272
    invoke-static {v3, v4}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 273
    .line 274
    .line 275
    array-length v9, v12

    .line 276
    add-int/2addr v9, v10

    .line 277
    array-length v15, v6

    .line 278
    add-int/2addr v9, v15

    .line 279
    add-int/lit8 v5, v5, 0x6

    .line 280
    .line 281
    move-object/from16 p1, v8

    .line 282
    .line 283
    int-to-long v7, v9

    .line 284
    const/4 v10, 0x4

    .line 285
    invoke-static {v3, v7, v8, v10}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 286
    .line 287
    .line 288
    invoke-static {v3, v11}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 295
    .line 296
    .line 297
    add-int/2addr v5, v9

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 299
    .line 300
    move-object/from16 v8, p1

    .line 301
    .line 302
    const/4 v7, 0x1

    .line 303
    const/4 v10, 0x2

    .line 304
    goto :goto_5

    .line 305
    :catchall_2
    move-exception v0

    .line 306
    move-object v1, v0

    .line 307
    goto/16 :goto_f

    .line 308
    .line 309
    :catchall_3
    move-exception v0

    .line 310
    move-object v1, v0

    .line 311
    :try_start_8
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catchall_4
    move-exception v0

    .line 316
    move-object v2, v0

    .line 317
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    :goto_7
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 321
    :catchall_5
    move-exception v0

    .line 322
    move-object v1, v0

    .line 323
    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 324
    .line 325
    .line 326
    goto :goto_8

    .line 327
    :catchall_6
    move-exception v0

    .line 328
    move-object v2, v0

    .line 329
    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    :goto_8
    throw v1

    .line 333
    :cond_4
    move-object/from16 p1, v8

    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    array-length v4, v2

    .line 340
    if-ne v5, v4, :cond_d

    .line 341
    .line 342
    new-instance v4, Lt1/k;

    .line 343
    .line 344
    const/4 v5, 0x4

    .line 345
    const/4 v6, 0x1

    .line 346
    invoke-direct {v4, v2, v5, v6}, Lt1/k;-><init>([BIZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    int-to-long v2, v5

    .line 356
    add-long/2addr v2, v2

    .line 357
    const-wide/16 v4, 0x4

    .line 358
    .line 359
    add-long/2addr v2, v4

    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    mul-int/lit8 v4, v4, 0x10

    .line 365
    .line 366
    int-to-long v4, v4

    .line 367
    add-long/2addr v2, v4

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    int-to-long v4, v4

    .line 373
    const/4 v6, 0x4

    .line 374
    invoke-static {v0, v4, v5, v6}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 375
    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-ge v4, v5, :cond_b

    .line 383
    .line 384
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    check-cast v5, Lt1/k;

    .line 389
    .line 390
    iget v6, v5, Lt1/k;->a:I

    .line 391
    .line 392
    const/4 v7, 0x1

    .line 393
    if-eq v6, v7, :cond_9

    .line 394
    .line 395
    const/4 v7, 0x2

    .line 396
    if-eq v6, v7, :cond_8

    .line 397
    .line 398
    const/4 v7, 0x3

    .line 399
    if-eq v6, v7, :cond_7

    .line 400
    .line 401
    const/4 v7, 0x4

    .line 402
    if-eq v6, v7, :cond_6

    .line 403
    .line 404
    const/4 v7, 0x5

    .line 405
    if-ne v6, v7, :cond_5

    .line 406
    .line 407
    const-wide/16 v6, 0x4

    .line 408
    .line 409
    :goto_a
    const/4 v8, 0x4

    .line 410
    goto :goto_b

    .line 411
    :cond_5
    const/4 v0, 0x0

    .line 412
    throw v0

    .line 413
    :cond_6
    const-wide/16 v6, 0x3

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_7
    const-wide/16 v6, 0x2

    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_8
    const-wide/16 v6, 0x1

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_9
    const-wide/16 v6, 0x0

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :goto_b
    invoke-static {v0, v6, v7, v8}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v2, v3, v8}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 429
    .line 430
    .line 431
    iget-object v6, v5, Lt1/k;->b:[B

    .line 432
    .line 433
    iget-boolean v5, v5, Lt1/k;->c:Z

    .line 434
    .line 435
    if-eqz v5, :cond_a

    .line 436
    .line 437
    array-length v5, v6

    .line 438
    int-to-long v7, v5

    .line 439
    invoke-static {v6}, Lt1/d;->a([B)[B

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    move-object/from16 v9, p1

    .line 444
    .line 445
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    array-length v6, v5

    .line 449
    int-to-long v10, v6

    .line 450
    const/4 v12, 0x4

    .line 451
    invoke-static {v0, v10, v11, v12}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 452
    .line 453
    .line 454
    invoke-static {v0, v7, v8, v12}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 455
    .line 456
    .line 457
    array-length v5, v5

    .line 458
    :goto_c
    int-to-long v5, v5

    .line 459
    add-long/2addr v2, v5

    .line 460
    goto :goto_d

    .line 461
    :cond_a
    move-object/from16 v9, p1

    .line 462
    .line 463
    const/4 v12, 0x4

    .line 464
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    array-length v5, v6

    .line 468
    int-to-long v7, v5

    .line 469
    invoke-static {v0, v7, v8, v12}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 470
    .line 471
    .line 472
    const-wide/16 v7, 0x0

    .line 473
    .line 474
    invoke-static {v0, v7, v8, v12}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 475
    .line 476
    .line 477
    array-length v5, v6

    .line 478
    goto :goto_c

    .line 479
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 480
    .line 481
    move-object/from16 p1, v9

    .line 482
    .line 483
    goto :goto_9

    .line 484
    :cond_b
    move-object/from16 v9, p1

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-ge v6, v1, :cond_c

    .line 492
    .line 493
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, [B

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 500
    .line 501
    .line 502
    add-int/lit8 v6, v6, 0x1

    .line 503
    .line 504
    goto :goto_e

    .line 505
    :cond_c
    const/4 v1, 0x1

    .line 506
    return v1

    .line 507
    :cond_d
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    array-length v1, v2

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 530
    .line 531
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 535
    :goto_f
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 536
    .line 537
    .line 538
    goto :goto_10

    .line 539
    :catchall_7
    move-exception v0

    .line 540
    move-object v2, v0

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 542
    .line 543
    .line 544
    :goto_10
    throw v1

    .line 545
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    array-length v1, v5

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 568
    .line 569
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 573
    :goto_11
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 574
    .line 575
    .line 576
    goto :goto_12

    .line 577
    :catchall_8
    move-exception v0

    .line 578
    move-object v2, v0

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 580
    .line 581
    .line 582
    :goto_12
    throw v1

    .line 583
    :cond_f
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    array-length v1, v3

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 606
    .line 607
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 611
    :goto_13
    :try_start_11
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 612
    .line 613
    .line 614
    goto :goto_14

    .line 615
    :catchall_9
    move-exception v0

    .line 616
    move-object v2, v0

    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 618
    .line 619
    .line 620
    :goto_14
    throw v1

    .line 621
    :cond_10
    sget-object v3, Lt1/d;->e:[B

    .line 622
    .line 623
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-eqz v4, :cond_11

    .line 628
    .line 629
    invoke-static {v2, v3}, Lt1/d;->b([Lt1/b;[B)[B

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    array-length v2, v2

    .line 634
    int-to-long v2, v2

    .line 635
    const/4 v4, 0x1

    .line 636
    invoke-static {v0, v2, v3, v4}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 637
    .line 638
    .line 639
    array-length v2, v1

    .line 640
    int-to-long v2, v2

    .line 641
    const/4 v4, 0x4

    .line 642
    invoke-static {v0, v2, v3, v4}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 643
    .line 644
    .line 645
    invoke-static {v1}, Lt1/d;->a([B)[B

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    array-length v2, v1

    .line 650
    int-to-long v2, v2

    .line 651
    invoke-static {v0, v2, v3, v4}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 655
    .line 656
    .line 657
    const/4 v3, 0x1

    .line 658
    return v3

    .line 659
    :cond_11
    const/4 v3, 0x1

    .line 660
    sget-object v4, Lt1/d;->g:[B

    .line 661
    .line 662
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 663
    .line 664
    .line 665
    move-result v5

    .line 666
    if-eqz v5, :cond_15

    .line 667
    .line 668
    array-length v1, v2

    .line 669
    int-to-long v5, v1

    .line 670
    invoke-static {v0, v5, v6, v3}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 671
    .line 672
    .line 673
    array-length v1, v2

    .line 674
    const/4 v3, 0x0

    .line 675
    :goto_15
    if-ge v3, v1, :cond_14

    .line 676
    .line 677
    aget-object v5, v2, v3

    .line 678
    .line 679
    iget-object v6, v5, Lt1/b;->i:Ljava/util/TreeMap;

    .line 680
    .line 681
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    const/4 v7, 0x4

    .line 686
    mul-int/lit8 v6, v6, 0x4

    .line 687
    .line 688
    iget-object v7, v5, Lt1/b;->b:Ljava/lang/String;

    .line 689
    .line 690
    iget-object v8, v5, Lt1/b;->a:Ljava/lang/String;

    .line 691
    .line 692
    invoke-static {v4, v8, v7}, Lt1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 697
    .line 698
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 699
    .line 700
    .line 701
    move-result-object v9

    .line 702
    array-length v9, v9

    .line 703
    invoke-static {v0, v9}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 704
    .line 705
    .line 706
    iget-object v9, v5, Lt1/b;->h:[I

    .line 707
    .line 708
    array-length v9, v9

    .line 709
    invoke-static {v0, v9}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 710
    .line 711
    .line 712
    int-to-long v9, v6

    .line 713
    const/4 v6, 0x4

    .line 714
    invoke-static {v0, v9, v10, v6}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 715
    .line 716
    .line 717
    iget-wide v9, v5, Lt1/b;->c:J

    .line 718
    .line 719
    invoke-static {v0, v9, v10, v6}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 727
    .line 728
    .line 729
    iget-object v6, v5, Lt1/b;->i:Ljava/util/TreeMap;

    .line 730
    .line 731
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 732
    .line 733
    .line 734
    move-result-object v6

    .line 735
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v6

    .line 739
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v7

    .line 743
    if-eqz v7, :cond_12

    .line 744
    .line 745
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v7

    .line 749
    check-cast v7, Ljava/lang/Integer;

    .line 750
    .line 751
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 752
    .line 753
    .line 754
    move-result v7

    .line 755
    invoke-static {v0, v7}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 756
    .line 757
    .line 758
    const/4 v7, 0x0

    .line 759
    invoke-static {v0, v7}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 760
    .line 761
    .line 762
    goto :goto_16

    .line 763
    :cond_12
    iget-object v5, v5, Lt1/b;->h:[I

    .line 764
    .line 765
    array-length v6, v5

    .line 766
    const/4 v7, 0x0

    .line 767
    :goto_17
    if-ge v7, v6, :cond_13

    .line 768
    .line 769
    aget v8, v5, v7

    .line 770
    .line 771
    invoke-static {v0, v8}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 772
    .line 773
    .line 774
    add-int/lit8 v7, v7, 0x1

    .line 775
    .line 776
    goto :goto_17

    .line 777
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 778
    .line 779
    goto :goto_15

    .line 780
    :cond_14
    const/4 v3, 0x1

    .line 781
    return v3

    .line 782
    :cond_15
    sget-object v4, Lt1/d;->f:[B

    .line 783
    .line 784
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    if-eqz v5, :cond_16

    .line 789
    .line 790
    invoke-static {v2, v4}, Lt1/d;->b([Lt1/b;[B)[B

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    array-length v2, v2

    .line 795
    int-to-long v4, v2

    .line 796
    invoke-static {v0, v4, v5, v3}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 797
    .line 798
    .line 799
    array-length v2, v1

    .line 800
    int-to-long v2, v2

    .line 801
    const/4 v4, 0x4

    .line 802
    invoke-static {v0, v2, v3, v4}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 803
    .line 804
    .line 805
    invoke-static {v1}, Lt1/d;->a([B)[B

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    array-length v2, v1

    .line 810
    int-to-long v2, v2

    .line 811
    invoke-static {v0, v2, v3, v4}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 815
    .line 816
    .line 817
    const/4 v0, 0x1

    .line 818
    return v0

    .line 819
    :cond_16
    sget-object v3, Lt1/d;->h:[B

    .line 820
    .line 821
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    if-eqz v1, :cond_1a

    .line 826
    .line 827
    array-length v1, v2

    .line 828
    invoke-static {v0, v1}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 829
    .line 830
    .line 831
    array-length v1, v2

    .line 832
    const/4 v7, 0x0

    .line 833
    :goto_18
    if-ge v7, v1, :cond_19

    .line 834
    .line 835
    aget-object v4, v2, v7

    .line 836
    .line 837
    iget-object v5, v4, Lt1/b;->a:Ljava/lang/String;

    .line 838
    .line 839
    iget-object v6, v4, Lt1/b;->b:Ljava/lang/String;

    .line 840
    .line 841
    invoke-static {v3, v5, v6}, Lt1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 846
    .line 847
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 848
    .line 849
    .line 850
    move-result-object v8

    .line 851
    array-length v8, v8

    .line 852
    invoke-static {v0, v8}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 853
    .line 854
    .line 855
    iget-object v8, v4, Lt1/b;->i:Ljava/util/TreeMap;

    .line 856
    .line 857
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    .line 858
    .line 859
    .line 860
    move-result v9

    .line 861
    invoke-static {v0, v9}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 862
    .line 863
    .line 864
    iget-object v9, v4, Lt1/b;->h:[I

    .line 865
    .line 866
    array-length v9, v9

    .line 867
    invoke-static {v0, v9}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 868
    .line 869
    .line 870
    iget-wide v9, v4, Lt1/b;->c:J

    .line 871
    .line 872
    const/4 v11, 0x4

    .line 873
    invoke-static {v0, v9, v10, v11}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 877
    .line 878
    .line 879
    move-result-object v5

    .line 880
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 884
    .line 885
    .line 886
    move-result-object v5

    .line 887
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 888
    .line 889
    .line 890
    move-result-object v5

    .line 891
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 892
    .line 893
    .line 894
    move-result v6

    .line 895
    if-eqz v6, :cond_17

    .line 896
    .line 897
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v6

    .line 901
    check-cast v6, Ljava/lang/Integer;

    .line 902
    .line 903
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 904
    .line 905
    .line 906
    move-result v6

    .line 907
    invoke-static {v0, v6}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 908
    .line 909
    .line 910
    goto :goto_19

    .line 911
    :cond_17
    iget-object v4, v4, Lt1/b;->h:[I

    .line 912
    .line 913
    array-length v5, v4

    .line 914
    const/4 v6, 0x0

    .line 915
    :goto_1a
    if-ge v6, v5, :cond_18

    .line 916
    .line 917
    aget v8, v4, v6

    .line 918
    .line 919
    invoke-static {v0, v8}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 920
    .line 921
    .line 922
    add-int/lit8 v6, v6, 0x1

    .line 923
    .line 924
    goto :goto_1a

    .line 925
    :cond_18
    add-int/lit8 v7, v7, 0x1

    .line 926
    .line 927
    goto :goto_18

    .line 928
    :cond_19
    const/4 v4, 0x1

    .line 929
    return v4

    .line 930
    :cond_1a
    const/4 v0, 0x0

    .line 931
    return v0
.end method

.method public static p(Ljava/io/ByteArrayOutputStream;Lt1/b;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    invoke-static {p0, v1}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Lt1/b;->e:I

    .line 12
    .line 13
    invoke-static {p0, v1}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 14
    .line 15
    .line 16
    iget v1, p1, Lt1/b;->f:I

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-static {p0, v1, v2, v3}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p1, Lt1/b;->c:J

    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 26
    .line 27
    .line 28
    iget p1, p1, Lt1/b;->g:I

    .line 29
    .line 30
    int-to-long v1, p1

    .line 31
    invoke-static {p0, v1, v2, v3}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static q(Ljava/io/ByteArrayOutputStream;Lt1/b;)V
    .locals 8

    .line 1
    iget v0, p1, Lt1/b;->g:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x8

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    iget-object v1, p1, Lt1/b;->i:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    and-int/lit8 v4, v2, 0x2

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    div-int/lit8 v4, v3, 0x8

    .line 61
    .line 62
    aget-byte v6, v0, v4

    .line 63
    .line 64
    rem-int/lit8 v7, v3, 0x8

    .line 65
    .line 66
    shl-int v7, v5, v7

    .line 67
    .line 68
    or-int/2addr v6, v7

    .line 69
    int-to-byte v6, v6

    .line 70
    aput-byte v6, v0, v4

    .line 71
    .line 72
    :cond_1
    and-int/lit8 v2, v2, 0x4

    .line 73
    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    iget v2, p1, Lt1/b;->g:I

    .line 77
    .line 78
    add-int/2addr v3, v2

    .line 79
    div-int/lit8 v2, v3, 0x8

    .line 80
    .line 81
    aget-byte v4, v0, v2

    .line 82
    .line 83
    rem-int/lit8 v3, v3, 0x8

    .line 84
    .line 85
    shl-int v3, v5, v3

    .line 86
    .line 87
    or-int/2addr v3, v4

    .line 88
    int-to-byte v3, v3

    .line 89
    aput-byte v3, v0, v2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static r(Ljava/io/ByteArrayOutputStream;Lt1/b;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lt1/b;->i:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    and-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sub-int v1, v3, v1

    .line 51
    .line 52
    invoke-static {p0, v1}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lt1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 56
    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/util/concurrent/Executor;Lt1/c;Z)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v11, 0x0

    .line 37
    :try_start_0
    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_13

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    const-string v3, "ProfileInstaller"

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    const/4 v15, 0x1

    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v4, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 54
    .line 55
    invoke-direct {v0, v13, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    :goto_0
    const/4 v0, 0x0

    .line 65
    goto :goto_3

    .line 66
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    .line 67
    .line 68
    new-instance v5, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    iget-wide v4, v12, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 84
    .line 85
    cmp-long v0, v16, v4

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    :goto_1
    if-eqz v0, :cond_2

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    invoke-interface {v8, v4, v14}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_0
    nop

    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object v5, v0

    .line 103
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object v4, v0

    .line 109
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 113
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "Skipping profile installation for "

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v11}, Lt1/j;->c(Landroid/content/Context;Z)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_33

    .line 141
    .line 142
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "Installing profile for "

    .line 145
    .line 146
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    new-instance v7, Ljava/io/File;

    .line 166
    .line 167
    new-instance v3, Ljava/io/File;

    .line 168
    .line 169
    const-string v4, "/data/misc/profiles/cur/0"

    .line 170
    .line 171
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v2, "primary.prof"

    .line 175
    .line 176
    invoke-direct {v7, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v5, Lt1/a;

    .line 180
    .line 181
    const-string v4, "dexopt/baseline.prof"

    .line 182
    .line 183
    move-object v2, v5

    .line 184
    move-object v3, v9

    .line 185
    move-object v11, v4

    .line 186
    move-object/from16 v4, p1

    .line 187
    .line 188
    move-object v10, v5

    .line 189
    move-object/from16 v5, p2

    .line 190
    .line 191
    move-object/from16 v18, v7

    .line 192
    .line 193
    invoke-direct/range {v2 .. v7}, Lt1/a;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Lt1/c;Ljava/lang/String;Ljava/io/File;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, v10, Lt1/a;->c:[B

    .line 197
    .line 198
    if-nez v2, :cond_5

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const/4 v2, 0x3

    .line 205
    invoke-virtual {v10, v2, v0}, Lt1/a;->b(ILjava/io/Serializable;)V

    .line 206
    .line 207
    .line 208
    :goto_5
    const/4 v6, 0x1

    .line 209
    goto/16 :goto_30

    .line 210
    .line 211
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const/4 v3, 0x4

    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canWrite()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_7

    .line 223
    .line 224
    invoke-virtual {v10, v3, v14}, Lt1/a;->b(ILjava/io/Serializable;)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_6
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12

    .line 229
    .line 230
    .line 231
    :cond_7
    iput-boolean v15, v10, Lt1/a;->f:Z

    .line 232
    .line 233
    sget-object v4, Lt1/d;->b:[B

    .line 234
    .line 235
    const/4 v5, 0x6

    .line 236
    :try_start_7
    invoke-virtual {v10, v9, v11}, Lt1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 237
    .line 238
    .line 239
    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 240
    move-object v6, v0

    .line 241
    goto :goto_7

    .line 242
    :catch_1
    move-exception v0

    .line 243
    move-object v6, v0

    .line 244
    const/4 v7, 0x7

    .line 245
    invoke-interface {v8, v7, v6}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catch_2
    move-exception v0

    .line 250
    move-object v6, v0

    .line 251
    invoke-interface {v8, v5, v6}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 252
    .line 253
    .line 254
    :goto_6
    move-object v6, v14

    .line 255
    :goto_7
    const-string v7, "Invalid magic"

    .line 256
    .line 257
    const/16 v11, 0x8

    .line 258
    .line 259
    if-eqz v6, :cond_9

    .line 260
    .line 261
    :try_start_8
    invoke-static {v6, v3}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_8

    .line 270
    .line 271
    invoke-static {v6, v3}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v5, v10, Lt1/a;->e:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v6, v0, v5}, Lt1/d;->l(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lt1/b;

    .line 278
    .line 279
    .line 280
    move-result-object v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 281
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 282
    .line 283
    .line 284
    goto :goto_e

    .line 285
    :catch_3
    move-exception v0

    .line 286
    move-object v6, v0

    .line 287
    const/4 v15, 0x7

    .line 288
    invoke-interface {v8, v15, v6}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 289
    .line 290
    .line 291
    goto :goto_e

    .line 292
    :goto_8
    move-object v1, v0

    .line 293
    goto :goto_f

    .line 294
    :goto_9
    const/4 v15, 0x7

    .line 295
    goto :goto_c

    .line 296
    :catchall_2
    move-exception v0

    .line 297
    goto :goto_8

    .line 298
    :catch_4
    move-exception v0

    .line 299
    goto :goto_a

    .line 300
    :catch_5
    move-exception v0

    .line 301
    goto :goto_9

    .line 302
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 308
    :goto_a
    :try_start_b
    invoke-interface {v8, v11, v0}, Lt1/c;->b(ILjava/io/Serializable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 309
    .line 310
    .line 311
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 312
    .line 313
    .line 314
    goto :goto_d

    .line 315
    :catch_6
    move-exception v0

    .line 316
    move-object v5, v0

    .line 317
    const/4 v15, 0x7

    .line 318
    :goto_b
    invoke-interface {v8, v15, v5}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 319
    .line 320
    .line 321
    goto :goto_d

    .line 322
    :catchall_3
    move-exception v0

    .line 323
    const/4 v15, 0x7

    .line 324
    goto :goto_8

    .line 325
    :goto_c
    :try_start_d
    invoke-interface {v8, v15, v0}, Lt1/c;->b(ILjava/io/Serializable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 326
    .line 327
    .line 328
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 329
    .line 330
    .line 331
    goto :goto_d

    .line 332
    :catch_7
    move-exception v0

    .line 333
    move-object v5, v0

    .line 334
    goto :goto_b

    .line 335
    :goto_d
    move-object v5, v14

    .line 336
    :goto_e
    iput-object v5, v10, Lt1/a;->g:[Lt1/b;

    .line 337
    .line 338
    goto :goto_11

    .line 339
    :goto_f
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 340
    .line 341
    .line 342
    goto :goto_10

    .line 343
    :catch_8
    move-exception v0

    .line 344
    move-object v2, v0

    .line 345
    const/4 v3, 0x7

    .line 346
    invoke-interface {v8, v3, v2}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 347
    .line 348
    .line 349
    :goto_10
    throw v1

    .line 350
    :cond_9
    :goto_11
    iget-object v0, v10, Lt1/a;->g:[Lt1/b;

    .line 351
    .line 352
    if-eqz v0, :cond_f

    .line 353
    .line 354
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 355
    .line 356
    const/16 v6, 0x18

    .line 357
    .line 358
    if-lt v5, v6, :cond_f

    .line 359
    .line 360
    const/16 v15, 0x22

    .line 361
    .line 362
    if-le v5, v15, :cond_a

    .line 363
    .line 364
    goto/16 :goto_19

    .line 365
    .line 366
    :cond_a
    if-eq v5, v6, :cond_b

    .line 367
    .line 368
    const/16 v6, 0x19

    .line 369
    .line 370
    if-eq v5, v6, :cond_b

    .line 371
    .line 372
    packed-switch v5, :pswitch_data_0

    .line 373
    .line 374
    .line 375
    goto :goto_19

    .line 376
    :cond_b
    :pswitch_0
    :try_start_10
    const-string v5, "dexopt/baseline.profm"

    .line 377
    .line 378
    invoke-virtual {v10, v9, v5}, Lt1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 379
    .line 380
    .line 381
    move-result-object v5
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_9

    .line 382
    if-eqz v5, :cond_d

    .line 383
    .line 384
    :try_start_11
    sget-object v6, Lt1/d;->c:[B

    .line 385
    .line 386
    invoke-static {v5, v3}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-eqz v6, :cond_c

    .line 395
    .line 396
    invoke-static {v5, v3}, Lt1/d;->f(Ljava/io/InputStream;I)[B

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-static {v5, v3, v2, v0}, Lt1/d;->i(Ljava/io/FileInputStream;[B[B[Lt1/b;)[Lt1/b;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v0, v10, Lt1/a;->g:[Lt1/b;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 405
    .line 406
    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_9

    .line 407
    .line 408
    .line 409
    move-object v5, v10

    .line 410
    goto :goto_18

    .line 411
    :catch_9
    move-exception v0

    .line 412
    goto :goto_14

    .line 413
    :catch_a
    move-exception v0

    .line 414
    const/4 v2, 0x7

    .line 415
    goto :goto_15

    .line 416
    :catch_b
    move-exception v0

    .line 417
    goto :goto_16

    .line 418
    :catchall_4
    move-exception v0

    .line 419
    move-object v2, v0

    .line 420
    goto :goto_12

    .line 421
    :cond_c
    :try_start_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 422
    .line 423
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 427
    :goto_12
    :try_start_14
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 428
    .line 429
    .line 430
    goto :goto_13

    .line 431
    :catchall_5
    move-exception v0

    .line 432
    move-object v3, v0

    .line 433
    :try_start_15
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 434
    .line 435
    .line 436
    :goto_13
    throw v2

    .line 437
    :cond_d
    if-eqz v5, :cond_e

    .line 438
    .line 439
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_9

    .line 440
    .line 441
    .line 442
    goto :goto_17

    .line 443
    :goto_14
    iput-object v14, v10, Lt1/a;->g:[Lt1/b;

    .line 444
    .line 445
    invoke-interface {v8, v11, v0}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 446
    .line 447
    .line 448
    goto :goto_17

    .line 449
    :goto_15
    invoke-interface {v8, v2, v0}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 450
    .line 451
    .line 452
    goto :goto_17

    .line 453
    :goto_16
    const/16 v2, 0x9

    .line 454
    .line 455
    invoke-interface {v8, v2, v0}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 456
    .line 457
    .line 458
    :cond_e
    :goto_17
    move-object v5, v14

    .line 459
    :goto_18
    if-eqz v5, :cond_f

    .line 460
    .line 461
    goto :goto_1a

    .line 462
    :cond_f
    :goto_19
    move-object v5, v10

    .line 463
    :goto_1a
    iget-object v2, v5, Lt1/a;->b:Lt1/c;

    .line 464
    .line 465
    iget-object v0, v5, Lt1/a;->g:[Lt1/b;

    .line 466
    .line 467
    const-string v3, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 468
    .line 469
    if-eqz v0, :cond_13

    .line 470
    .line 471
    iget-object v6, v5, Lt1/a;->c:[B

    .line 472
    .line 473
    if-nez v6, :cond_10

    .line 474
    .line 475
    goto :goto_20

    .line 476
    :cond_10
    iget-boolean v7, v5, Lt1/a;->f:Z

    .line 477
    .line 478
    if-eqz v7, :cond_12

    .line 479
    .line 480
    :try_start_16
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 481
    .line 482
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_c

    .line 483
    .line 484
    .line 485
    :try_start_17
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 489
    .line 490
    .line 491
    invoke-static {v7, v6, v0}, Lt1/d;->o(Ljava/io/ByteArrayOutputStream;[B[Lt1/b;)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-nez v0, :cond_11

    .line 496
    .line 497
    const/4 v0, 0x5

    .line 498
    invoke-interface {v2, v0, v14}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 499
    .line 500
    .line 501
    iput-object v14, v5, Lt1/a;->g:[Lt1/b;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 502
    .line 503
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_c

    .line 504
    .line 505
    .line 506
    goto :goto_20

    .line 507
    :catch_c
    move-exception v0

    .line 508
    goto :goto_1d

    .line 509
    :catch_d
    move-exception v0

    .line 510
    const/4 v4, 0x7

    .line 511
    goto :goto_1e

    .line 512
    :catchall_6
    move-exception v0

    .line 513
    move-object v4, v0

    .line 514
    goto :goto_1b

    .line 515
    :cond_11
    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    iput-object v0, v5, Lt1/a;->h:[B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 520
    .line 521
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_c

    .line 522
    .line 523
    .line 524
    goto :goto_1f

    .line 525
    :goto_1b
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 526
    .line 527
    .line 528
    goto :goto_1c

    .line 529
    :catchall_7
    move-exception v0

    .line 530
    move-object v6, v0

    .line 531
    :try_start_1c
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 532
    .line 533
    .line 534
    :goto_1c
    throw v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_c

    .line 535
    :goto_1d
    invoke-interface {v2, v11, v0}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 536
    .line 537
    .line 538
    goto :goto_1f

    .line 539
    :goto_1e
    invoke-interface {v2, v4, v0}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 540
    .line 541
    .line 542
    :goto_1f
    iput-object v14, v5, Lt1/a;->g:[Lt1/b;

    .line 543
    .line 544
    goto :goto_20

    .line 545
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 546
    .line 547
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v0

    .line 551
    :cond_13
    :goto_20
    iget-object v0, v5, Lt1/a;->h:[B

    .line 552
    .line 553
    if-nez v0, :cond_14

    .line 554
    .line 555
    const/4 v0, 0x0

    .line 556
    const/4 v6, 0x1

    .line 557
    goto/16 :goto_2e

    .line 558
    .line 559
    :cond_14
    iget-boolean v2, v5, Lt1/a;->f:Z

    .line 560
    .line 561
    if-eqz v2, :cond_16

    .line 562
    .line 563
    :try_start_1d
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 564
    .line 565
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 566
    .line 567
    .line 568
    :try_start_1e
    new-instance v3, Ljava/io/FileOutputStream;

    .line 569
    .line 570
    iget-object v0, v5, Lt1/a;->d:Ljava/io/File;

    .line 571
    .line 572
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 573
    .line 574
    .line 575
    const/16 v0, 0x200

    .line 576
    .line 577
    :try_start_1f
    new-array v0, v0, [B

    .line 578
    .line 579
    :goto_21
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-lez v4, :cond_15

    .line 584
    .line 585
    const/4 v6, 0x0

    .line 586
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 587
    .line 588
    .line 589
    goto :goto_21

    .line 590
    :cond_15
    const/4 v6, 0x1

    .line 591
    :try_start_20
    invoke-virtual {v5, v6, v14}, Lt1/a;->b(ILjava/io/Serializable;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 592
    .line 593
    .line 594
    :try_start_21
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 595
    .line 596
    .line 597
    :try_start_22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 598
    .line 599
    .line 600
    iput-object v14, v5, Lt1/a;->h:[B

    .line 601
    .line 602
    iput-object v14, v5, Lt1/a;->g:[Lt1/b;

    .line 603
    .line 604
    const/4 v0, 0x1

    .line 605
    goto :goto_2e

    .line 606
    :catchall_8
    move-exception v0

    .line 607
    goto :goto_2f

    .line 608
    :catch_e
    move-exception v0

    .line 609
    :goto_22
    const/4 v2, 0x7

    .line 610
    goto :goto_2a

    .line 611
    :catch_f
    move-exception v0

    .line 612
    :goto_23
    const/4 v2, 0x6

    .line 613
    goto :goto_2c

    .line 614
    :catchall_9
    move-exception v0

    .line 615
    :goto_24
    move-object v3, v0

    .line 616
    goto :goto_28

    .line 617
    :catchall_a
    move-exception v0

    .line 618
    :goto_25
    move-object v4, v0

    .line 619
    goto :goto_26

    .line 620
    :catchall_b
    move-exception v0

    .line 621
    const/4 v6, 0x1

    .line 622
    goto :goto_25

    .line 623
    :goto_26
    :try_start_23
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 624
    .line 625
    .line 626
    goto :goto_27

    .line 627
    :catchall_c
    move-exception v0

    .line 628
    move-object v3, v0

    .line 629
    :try_start_24
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 630
    .line 631
    .line 632
    :goto_27
    throw v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 633
    :catchall_d
    move-exception v0

    .line 634
    const/4 v6, 0x1

    .line 635
    goto :goto_24

    .line 636
    :goto_28
    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 637
    .line 638
    .line 639
    goto :goto_29

    .line 640
    :catchall_e
    move-exception v0

    .line 641
    move-object v2, v0

    .line 642
    :try_start_26
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 643
    .line 644
    .line 645
    :goto_29
    throw v3
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    .line 646
    :catch_10
    move-exception v0

    .line 647
    const/4 v6, 0x1

    .line 648
    goto :goto_22

    .line 649
    :catch_11
    move-exception v0

    .line 650
    const/4 v6, 0x1

    .line 651
    goto :goto_23

    .line 652
    :goto_2a
    :try_start_27
    invoke-virtual {v5, v2, v0}, Lt1/a;->b(ILjava/io/Serializable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    .line 653
    .line 654
    .line 655
    :goto_2b
    iput-object v14, v5, Lt1/a;->h:[B

    .line 656
    .line 657
    iput-object v14, v5, Lt1/a;->g:[Lt1/b;

    .line 658
    .line 659
    goto :goto_2d

    .line 660
    :goto_2c
    :try_start_28
    invoke-virtual {v5, v2, v0}, Lt1/a;->b(ILjava/io/Serializable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    .line 661
    .line 662
    .line 663
    goto :goto_2b

    .line 664
    :goto_2d
    const/4 v0, 0x0

    .line 665
    :goto_2e
    if-eqz v0, :cond_17

    .line 666
    .line 667
    invoke-static {v12, v13}, Lt1/d;->e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 668
    .line 669
    .line 670
    goto :goto_31

    .line 671
    :goto_2f
    iput-object v14, v5, Lt1/a;->h:[B

    .line 672
    .line 673
    iput-object v14, v5, Lt1/a;->g:[Lt1/b;

    .line 674
    .line 675
    throw v0

    .line 676
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 677
    .line 678
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    throw v0

    .line 682
    :catch_12
    const/4 v6, 0x1

    .line 683
    invoke-virtual {v10, v3, v14}, Lt1/a;->b(ILjava/io/Serializable;)V

    .line 684
    .line 685
    .line 686
    :goto_30
    const/4 v0, 0x0

    .line 687
    :cond_17
    :goto_31
    if-eqz v0, :cond_18

    .line 688
    .line 689
    if-eqz p3, :cond_18

    .line 690
    .line 691
    const/4 v11, 0x1

    .line 692
    goto :goto_32

    .line 693
    :cond_18
    const/4 v11, 0x0

    .line 694
    :goto_32
    invoke-static {v1, v11}, Lt1/j;->c(Landroid/content/Context;Z)V

    .line 695
    .line 696
    .line 697
    :goto_33
    return-void

    .line 698
    :catch_13
    move-exception v0

    .line 699
    move-object v2, v0

    .line 700
    const/4 v3, 0x7

    .line 701
    invoke-interface {v8, v3, v2}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 702
    .line 703
    .line 704
    const/4 v2, 0x0

    .line 705
    invoke-static {v1, v2}, Lt1/j;->c(Landroid/content/Context;Z)V

    .line 706
    .line 707
    .line 708
    return-void

    .line 709
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 6

    .line 1
    new-array v0, p3, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p3, :cond_0

    .line 5
    .line 6
    mul-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    shr-long v2, p1, v2

    .line 9
    .line 10
    const-wide/16 v4, 0xff

    .line 11
    .line 12
    and-long/2addr v2, v4

    .line 13
    long-to-int v3, v2

    .line 14
    int-to-byte v2, v3

    .line 15
    aput-byte v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static u(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    const/4 p1, 0x2

    .line 3
    invoke-static {p0, v0, v1, p1}, Lt1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
