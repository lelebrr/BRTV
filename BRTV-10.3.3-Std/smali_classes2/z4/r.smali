.class public final Lz4/r;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lw5/a;


# instance fields
.field public final a:Lz4/e;

.field public final b:I

.field public final c:Lz4/b;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lz4/e;ILz4/b;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz4/r;->a:Lz4/e;

    .line 5
    .line 6
    iput p2, p0, Lz4/r;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lz4/r;->c:Lz4/b;

    .line 9
    .line 10
    iput-wide p4, p0, Lz4/r;->d:J

    .line 11
    .line 12
    iput-wide p6, p0, Lz4/r;->e:J

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lz4/n;Lcom/google/android/gms/common/internal/a;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/internal/a;->v:Lcom/google/android/gms/common/internal/zzk;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzk;->d:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_7

    .line 11
    .line 12
    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->b:Z

    .line 13
    .line 14
    if-eqz v1, :cond_7

    .line 15
    .line 16
    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->d:[I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->f:[I

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    :goto_1
    array-length v3, v1

    .line 27
    if-ge v2, v3, :cond_4

    .line 28
    .line 29
    aget v3, v1, v2

    .line 30
    .line 31
    if-ne v3, p2, :cond_2

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :goto_2
    array-length v3, v1

    .line 38
    if-ge v2, v3, :cond_7

    .line 39
    .line 40
    aget v3, v1, v2

    .line 41
    .line 42
    if-ne v3, p2, :cond_6

    .line 43
    .line 44
    :cond_4
    :goto_3
    iget p0, p0, Lz4/n;->n:I

    .line 45
    .line 46
    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->e:I

    .line 47
    .line 48
    if-ge p0, p2, :cond_5

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_5
    return-object v0

    .line 52
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_7
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final e(Lw5/g;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lz4/r;->a:Lz4/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Lz4/e;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lb5/d;->b()Lb5/d;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lb5/d;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    .line 24
    .line 25
    if-eqz v3, :cond_b

    .line 26
    .line 27
    :cond_1
    iget-object v3, v0, Lz4/r;->c:Lz4/b;

    .line 28
    .line 29
    iget-object v4, v1, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lz4/n;

    .line 36
    .line 37
    if-eqz v3, :cond_b

    .line 38
    .line 39
    iget-object v4, v3, Lz4/n;->d:Ly4/c;

    .line 40
    .line 41
    instance-of v5, v4, Lcom/google/android/gms/common/internal/a;

    .line 42
    .line 43
    if-eqz v5, :cond_b

    .line 44
    .line 45
    check-cast v4, Lcom/google/android/gms/common/internal/a;

    .line 46
    .line 47
    iget-wide v5, v0, Lz4/r;->d:J

    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    const-wide/16 v9, 0x0

    .line 51
    .line 52
    cmp-long v11, v5, v9

    .line 53
    .line 54
    if-lez v11, :cond_2

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v12, 0x0

    .line 59
    :goto_0
    iget v15, v4, Lcom/google/android/gms/common/internal/a;->q:I

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    iget-boolean v13, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    .line 64
    .line 65
    and-int/2addr v12, v13

    .line 66
    iget-object v13, v4, Lcom/google/android/gms/common/internal/a;->v:Lcom/google/android/gms/common/internal/zzk;

    .line 67
    .line 68
    if-eqz v13, :cond_3

    .line 69
    .line 70
    const/4 v13, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v13, 0x0

    .line 73
    :goto_1
    iget v14, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->d:I

    .line 74
    .line 75
    iget v7, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->a:I

    .line 76
    .line 77
    if-eqz v13, :cond_5

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->e()Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-nez v13, :cond_5

    .line 84
    .line 85
    iget v2, v0, Lz4/r;->b:I

    .line 86
    .line 87
    invoke-static {v3, v4, v2}, Lz4/r;->a(Lz4/n;Lcom/google/android/gms/common/internal/a;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_b

    .line 92
    .line 93
    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    .line 94
    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    if-lez v11, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v8, 0x0

    .line 101
    :goto_2
    iget v2, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->e:I

    .line 102
    .line 103
    move v12, v8

    .line 104
    :goto_3
    move v3, v14

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    iget v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->e:I

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    const/16 v14, 0x1388

    .line 110
    .line 111
    const/16 v2, 0x64

    .line 112
    .line 113
    const/16 v3, 0x1388

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lw5/g;->e()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const/4 v8, -0x1

    .line 121
    if-eqz v4, :cond_7

    .line 122
    .line 123
    const/4 v11, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lw5/g;->c()Ljava/lang/Exception;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    instance-of v11, v4, Ly4/e;

    .line 132
    .line 133
    if-eqz v11, :cond_9

    .line 134
    .line 135
    check-cast v4, Ly4/e;

    .line 136
    .line 137
    iget-object v4, v4, Ly4/e;->a:Lcom/google/android/gms/common/api/Status;

    .line 138
    .line 139
    iget v11, v4, Lcom/google/android/gms/common/api/Status;->a:I

    .line 140
    .line 141
    iget-object v4, v4, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/ConnectionResult;

    .line 142
    .line 143
    if-nez v4, :cond_8

    .line 144
    .line 145
    :goto_5
    const/16 v16, -0x1

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    iget v4, v4, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 149
    .line 150
    move/from16 v16, v4

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    const/16 v4, 0x65

    .line 154
    .line 155
    const/16 v11, 0x65

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :goto_6
    if-eqz v12, :cond_a

    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v12

    .line 168
    move-wide/from16 v17, v5

    .line 169
    .line 170
    iget-wide v4, v0, Lz4/r;->e:J

    .line 171
    .line 172
    sub-long/2addr v12, v4

    .line 173
    long-to-int v4, v12

    .line 174
    move/from16 v24, v4

    .line 175
    .line 176
    move-wide/from16 v19, v9

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_a
    move-wide/from16 v17, v9

    .line 180
    .line 181
    move-wide/from16 v19, v17

    .line 182
    .line 183
    const/16 v24, -0x1

    .line 184
    .line 185
    :goto_7
    new-instance v4, Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 186
    .line 187
    const/16 v22, 0x0

    .line 188
    .line 189
    iget v14, v0, Lz4/r;->b:I

    .line 190
    .line 191
    const/16 v21, 0x0

    .line 192
    .line 193
    move-object v13, v4

    .line 194
    move v5, v15

    .line 195
    move v15, v11

    .line 196
    move/from16 v23, v5

    .line 197
    .line 198
    invoke-direct/range {v13 .. v24}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    int-to-long v5, v3

    .line 202
    new-instance v3, Lz4/s;

    .line 203
    .line 204
    move-object/from16 v17, v3

    .line 205
    .line 206
    move-object/from16 v18, v4

    .line 207
    .line 208
    move/from16 v19, v7

    .line 209
    .line 210
    move-wide/from16 v20, v5

    .line 211
    .line 212
    move/from16 v22, v2

    .line 213
    .line 214
    invoke-direct/range {v17 .. v22}, Lz4/s;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 218
    .line 219
    const/16 v2, 0x12

    .line 220
    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    .line 227
    .line 228
    :cond_b
    :goto_8
    return-void
.end method
