.class public final Lv7/f;
.super Lv7/a;
.source "MyApplication"


# instance fields
.field public final e:J

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Lv7/b;

.field public final i:[B

.field public final j:I

.field public final k:I

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILv7/b;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv7/a;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_5

    .line 5
    .line 6
    array-length v0, p4

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iput-object p1, p0, Lv7/f;->g:Ljava/lang/String;

    .line 10
    .line 11
    iput p2, p0, Lv7/f;->f:I

    .line 12
    .line 13
    iput-object p3, p0, Lv7/f;->h:Lv7/b;

    .line 14
    .line 15
    iput-object p4, p0, Lv7/f;->i:[B

    .line 16
    .line 17
    new-instance p1, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    const-wide/16 v0, 0x3e8

    .line 27
    .line 28
    div-long/2addr p1, v0

    .line 29
    iput-wide p1, p0, Lv7/f;->e:J

    .line 30
    .line 31
    array-length p1, p4

    .line 32
    const/16 p2, 0xc

    .line 33
    .line 34
    if-lt p1, p2, :cond_4

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lv7/f;->c(I)S

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-short p1, p0, Lv7/a;->a:S

    .line 42
    .line 43
    iget-short p3, p3, Lv7/a;->a:S

    .line 44
    .line 45
    if-ne p1, p3, :cond_3

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    invoke-virtual {p0, p1}, Lv7/f;->d(I)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-virtual {p0, p1}, Lv7/f;->d(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    and-int/lit16 p1, p1, 0x80

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    shr-int/lit8 p1, p3, 0x3

    .line 61
    .line 62
    and-int/lit8 p1, p1, 0x7

    .line 63
    .line 64
    iput p1, p0, Lv7/a;->b:I

    .line 65
    .line 66
    shr-int/lit8 p1, p3, 0x2

    .line 67
    .line 68
    and-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    iput p1, p0, Lv7/f;->j:I

    .line 71
    .line 72
    and-int/lit8 p1, p3, 0x1

    .line 73
    .line 74
    iput p1, p0, Lv7/a;->c:I

    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    invoke-virtual {p0, p1}, Lv7/f;->d(I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    shr-int/lit8 p3, p1, 0x7

    .line 82
    .line 83
    and-int/lit8 p3, p3, 0x1

    .line 84
    .line 85
    iput p3, p0, Lv7/a;->d:I

    .line 86
    .line 87
    and-int/lit8 p1, p1, 0xf

    .line 88
    .line 89
    iput p1, p0, Lv7/f;->k:I

    .line 90
    .line 91
    const/4 p1, 0x4

    .line 92
    invoke-virtual {p0, p1}, Lv7/f;->c(I)S

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    :goto_0
    if-lez p3, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0, p2}, Lv7/f;->a(I)Lq1/p1;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    if-eqz p4, :cond_0

    .line 103
    .line 104
    iget p4, p4, Lq1/p1;->a:I

    .line 105
    .line 106
    add-int/2addr p4, p1

    .line 107
    add-int/2addr p2, p4

    .line 108
    add-int/lit8 p3, p3, -0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 112
    .line 113
    const-string p2, "read Question error"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_1
    new-instance p1, Lv7/e;

    .line 120
    .line 121
    const/4 p3, 0x6

    .line 122
    invoke-virtual {p0, p3}, Lv7/f;->c(I)S

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    const-string p4, "answer"

    .line 127
    .line 128
    invoke-direct {p1, p4, p3, p2}, Lv7/e;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lv7/f;->b(Lv7/e;)V

    .line 132
    .line 133
    .line 134
    iget-object p3, p1, Lv7/e;->e:Ljava/util/ArrayList;

    .line 135
    .line 136
    iput-object p3, p0, Lv7/f;->l:Ljava/util/ArrayList;

    .line 137
    .line 138
    iget p1, p1, Lv7/e;->d:I

    .line 139
    .line 140
    add-int/2addr p2, p1

    .line 141
    new-instance p1, Lv7/e;

    .line 142
    .line 143
    const/16 p3, 0x8

    .line 144
    .line 145
    invoke-virtual {p0, p3}, Lv7/f;->c(I)S

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    const-string p4, "authority"

    .line 150
    .line 151
    invoke-direct {p1, p4, p3, p2}, Lv7/e;-><init>(Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lv7/f;->b(Lv7/e;)V

    .line 155
    .line 156
    .line 157
    iget-object p3, p1, Lv7/e;->e:Ljava/util/ArrayList;

    .line 158
    .line 159
    iput-object p3, p0, Lv7/f;->m:Ljava/util/ArrayList;

    .line 160
    .line 161
    iget p1, p1, Lv7/e;->d:I

    .line 162
    .line 163
    add-int/2addr p2, p1

    .line 164
    new-instance p1, Lv7/e;

    .line 165
    .line 166
    const/16 p3, 0xa

    .line 167
    .line 168
    invoke-virtual {p0, p3}, Lv7/f;->c(I)S

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    const-string p4, "additional"

    .line 173
    .line 174
    invoke-direct {p1, p4, p3, p2}, Lv7/e;-><init>(Ljava/lang/String;II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lv7/f;->b(Lv7/e;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p1, Lv7/e;->e:Ljava/util/ArrayList;

    .line 181
    .line 182
    iput-object p1, p0, Lv7/f;->n:Ljava/util/ArrayList;

    .line 183
    .line 184
    return-void

    .line 185
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 186
    .line 187
    const-string p2, "not a response data"

    .line 188
    .line 189
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 194
    .line 195
    const-string p2, "question id error"

    .line 196
    .line 197
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 202
    .line 203
    const-string p2, "response data too small"

    .line 204
    .line 205
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 210
    .line 211
    const-string p2, "response data is empty"

    .line 212
    .line 213
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1
.end method


# virtual methods
.method public final a(I)Lq1/p1;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lq1/p1;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x80

    .line 12
    .line 13
    move v3, p1

    .line 14
    :cond_0
    invoke-virtual {p0, v3}, Lv7/f;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    and-int/lit16 v5, v4, 0xc0

    .line 19
    .line 20
    const/16 v6, 0xc0

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    if-ne v5, v6, :cond_2

    .line 24
    .line 25
    iget v5, v1, Lq1/p1;->a:I

    .line 26
    .line 27
    if-ge v5, v7, :cond_1

    .line 28
    .line 29
    add-int/lit8 v5, v3, 0x2

    .line 30
    .line 31
    sub-int/2addr v5, p1

    .line 32
    iput v5, v1, Lq1/p1;->a:I

    .line 33
    .line 34
    :cond_1
    and-int/lit8 v5, v4, 0x3f

    .line 35
    .line 36
    shl-int/lit8 v5, v5, 0x8

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lv7/f;->d(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    or-int/2addr v3, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-lez v5, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    if-lez v4, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-lez v5, :cond_4

    .line 59
    .line 60
    const-string v5, "."

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_4
    add-int v5, v3, v4

    .line 66
    .line 67
    iget-object v6, p0, Lv7/f;->i:[B

    .line 68
    .line 69
    invoke-static {v6, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v6, Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 76
    .line 77
    .line 78
    invoke-static {v6}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move v3, v5

    .line 86
    :cond_5
    :goto_0
    if-lez v4, :cond_6

    .line 87
    .line 88
    add-int/lit8 v2, v2, -0x1

    .line 89
    .line 90
    if-gtz v2, :cond_0

    .line 91
    .line 92
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, v1, Lq1/p1;->b:Ljava/lang/String;

    .line 97
    .line 98
    iget v0, v1, Lq1/p1;->a:I

    .line 99
    .line 100
    if-ge v0, v7, :cond_7

    .line 101
    .line 102
    sub-int/2addr v3, p1

    .line 103
    iput v3, v1, Lq1/p1;->a:I

    .line 104
    .line 105
    :cond_7
    return-object v1
.end method

.method public final b(Lv7/e;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lv7/e;->c:I

    .line 6
    .line 7
    iget v3, v1, Lv7/e;->b:I

    .line 8
    .line 9
    move v4, v2

    .line 10
    :goto_0
    if-lez v3, :cond_c

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Lv7/f;->a(I)Lq1/p1;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_b

    .line 17
    .line 18
    iget v5, v5, Lq1/p1;->a:I

    .line 19
    .line 20
    add-int/2addr v4, v5

    .line 21
    invoke-virtual {v0, v4}, Lv7/f;->c(I)S

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    add-int/lit8 v5, v4, 0x2

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Lv7/f;->c(I)S

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    add-int/lit8 v6, v4, 0x4

    .line 32
    .line 33
    add-int/lit8 v8, v4, 0x7

    .line 34
    .line 35
    iget-object v9, v0, Lv7/f;->i:[B

    .line 36
    .line 37
    array-length v10, v9

    .line 38
    if-ge v8, v10, :cond_a

    .line 39
    .line 40
    aget-byte v6, v9, v6

    .line 41
    .line 42
    and-int/lit16 v6, v6, 0xff

    .line 43
    .line 44
    shl-int/lit8 v6, v6, 0x18

    .line 45
    .line 46
    add-int/lit8 v10, v4, 0x5

    .line 47
    .line 48
    aget-byte v10, v9, v10

    .line 49
    .line 50
    and-int/lit16 v10, v10, 0xff

    .line 51
    .line 52
    const/16 v11, 0x10

    .line 53
    .line 54
    shl-int/2addr v10, v11

    .line 55
    add-int/lit8 v12, v4, 0x6

    .line 56
    .line 57
    aget-byte v12, v9, v12

    .line 58
    .line 59
    and-int/lit16 v12, v12, 0xff

    .line 60
    .line 61
    shl-int/lit8 v12, v12, 0x8

    .line 62
    .line 63
    aget-byte v8, v9, v8

    .line 64
    .line 65
    and-int/lit16 v8, v8, 0xff

    .line 66
    .line 67
    add-int/2addr v6, v10

    .line 68
    add-int/2addr v6, v12

    .line 69
    add-int/2addr v8, v6

    .line 70
    add-int/lit8 v6, v4, 0x8

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Lv7/f;->c(I)S

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    add-int/lit8 v4, v4, 0xa

    .line 77
    .line 78
    const/4 v6, 0x5

    .line 79
    const/4 v10, 0x1

    .line 80
    if-eq v7, v10, :cond_5

    .line 81
    .line 82
    if-eq v7, v6, :cond_4

    .line 83
    .line 84
    if-eq v7, v11, :cond_3

    .line 85
    .line 86
    const/16 v9, 0x1c

    .line 87
    .line 88
    if-eq v7, v9, :cond_0

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_0
    if-ne v13, v11, :cond_7

    .line 93
    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const/4 v12, 0x0

    .line 100
    :goto_1
    if-ge v12, v11, :cond_2

    .line 101
    .line 102
    if-lez v12, :cond_1

    .line 103
    .line 104
    const-string v14, ":"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    const-string v14, ""

    .line 108
    .line 109
    :goto_2
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    add-int v14, v4, v12

    .line 113
    .line 114
    invoke-virtual {v0, v14}, Lv7/f;->d(I)I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    add-int/2addr v14, v10

    .line 122
    invoke-virtual {v0, v14}, Lv7/f;->d(I)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v12, v12, 0x2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    goto :goto_5

    .line 137
    :cond_3
    if-lez v13, :cond_7

    .line 138
    .line 139
    add-int v11, v4, v13

    .line 140
    .line 141
    array-length v12, v9

    .line 142
    if-ge v11, v12, :cond_7

    .line 143
    .line 144
    invoke-static {v9, v4, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    new-instance v11, Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    .line 151
    .line 152
    .line 153
    invoke-static {v11}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    goto :goto_5

    .line 158
    :cond_4
    if-le v13, v10, :cond_7

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Lv7/f;->a(I)Lq1/p1;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    iget-object v9, v9, Lq1/p1;->b:Ljava/lang/String;

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    const/4 v9, 0x4

    .line 168
    if-ne v13, v9, :cond_7

    .line 169
    .line 170
    new-instance v11, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Lv7/f;->d(I)I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const/4 v12, 0x1

    .line 183
    :goto_3
    if-ge v12, v9, :cond_6

    .line 184
    .line 185
    const-string v14, "."

    .line 186
    .line 187
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    add-int v14, v4, v12

    .line 191
    .line 192
    invoke-virtual {v0, v14}, Lv7/f;->d(I)I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    add-int/lit8 v12, v12, 0x1

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    goto :goto_5

    .line 207
    :cond_7
    :goto_4
    const/4 v9, 0x0

    .line 208
    :goto_5
    if-ne v5, v10, :cond_9

    .line 209
    .line 210
    if-eq v7, v6, :cond_8

    .line 211
    .line 212
    if-ne v7, v10, :cond_9

    .line 213
    .line 214
    :cond_8
    new-instance v14, Lu7/f;

    .line 215
    .line 216
    iget v11, v0, Lv7/f;->f:I

    .line 217
    .line 218
    iget-object v12, v0, Lv7/f;->g:Ljava/lang/String;

    .line 219
    .line 220
    iget-wide v5, v0, Lv7/f;->e:J

    .line 221
    .line 222
    move-wide v15, v5

    .line 223
    move-object v5, v14

    .line 224
    move-object v6, v9

    .line 225
    move-wide v9, v15

    .line 226
    invoke-direct/range {v5 .. v12}, Lu7/f;-><init>(Ljava/lang/String;IIJILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v5, v1, Lv7/e;->e:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_9
    add-int/2addr v4, v13

    .line 235
    add-int/lit8 v3, v3, -0x1

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 240
    .line 241
    const-string v2, "read response data out of range"

    .line 242
    .line 243
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v1

    .line 247
    :cond_b
    new-instance v2, Ljava/io/IOException;

    .line 248
    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v4, "read "

    .line 252
    .line 253
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v1, Lv7/e;->a:Ljava/lang/String;

    .line 257
    .line 258
    const-string v4, " error"

    .line 259
    .line 260
    invoke-static {v3, v1, v4}, La/e;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v2

    .line 268
    :cond_c
    sub-int/2addr v4, v2

    .line 269
    iput v4, v1, Lv7/e;->d:I

    .line 270
    .line 271
    return-void
.end method

.method public final c(I)S
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-object v1, p0, Lv7/f;->i:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    aget-byte p1, v1, p1

    .line 9
    .line 10
    and-int/lit16 p1, p1, 0xff

    .line 11
    .line 12
    shl-int/lit8 p1, p1, 0x8

    .line 13
    .line 14
    aget-byte v0, v1, v0

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    .line 18
    add-int/2addr p1, v0

    .line 19
    int-to-short p1, p1

    .line 20
    return p1

    .line 21
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v0, "read response data out of range"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lv7/f;->i:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    aget-byte p1, v0, p1

    .line 7
    .line 8
    and-int/lit16 p1, p1, 0xff

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 12
    .line 13
    const-string v0, "read response data out of range"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-short v1, p0, Lv7/a;->a:S

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lv7/a;->c:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v3, p0, Lv7/a;->d:I

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v4, p0, Lv7/f;->j:I

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v5, p0, Lv7/f;->k:I

    .line 30
    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object v6, p0, Lv7/f;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v7, p0, Lv7/f;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v8, p0, Lv7/f;->n:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v9, p0, Lv7/f;->g:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v10, p0, Lv7/f;->h:Lv7/b;

    .line 44
    .line 45
    const/16 v11, 0xa

    .line 46
    .line 47
    new-array v11, v11, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    aput-object v1, v11, v12

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    aput-object v2, v11, v1

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    aput-object v3, v11, v1

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    aput-object v4, v11, v1

    .line 60
    .line 61
    const/4 v1, 0x4

    .line 62
    aput-object v5, v11, v1

    .line 63
    .line 64
    const/4 v1, 0x5

    .line 65
    aput-object v9, v11, v1

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    aput-object v10, v11, v1

    .line 69
    .line 70
    const/4 v1, 0x7

    .line 71
    aput-object v6, v11, v1

    .line 72
    .line 73
    const/16 v1, 0x8

    .line 74
    .line 75
    aput-object v7, v11, v1

    .line 76
    .line 77
    const/16 v1, 0x9

    .line 78
    .line 79
    aput-object v8, v11, v1

    .line 80
    .line 81
    const-string v1, "{messageId:%d, rd:%d, ra:%d, aa:%d, rCode:%d, server:%s, request:%s, answerArray:%s, authorityArray:%s, additionalArray:%s}"

    .line 82
    .line 83
    invoke-static {v0, v1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method
