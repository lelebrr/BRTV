.class public final Lv4/l;
.super Lv4/o;
.source "MyApplication"


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:Lcom/google/android/gms/cast/MediaStatus;

.field public g:Ljava/lang/Long;

.field public h:Lr4/n;

.field public i:I

.field public final j:Lv4/n;

.field public final k:Lv4/n;

.field public final l:Lv4/n;

.field public final m:Lv4/n;

.field public final n:Lv4/n;

.field public final o:Lv4/n;

.field public final p:Lv4/n;

.field public final q:Lv4/n;

.field public final r:Lv4/n;

.field public final s:Lv4/n;

.field public final t:Lv4/n;

.field public final u:Lv4/n;

.field public final v:Lv4/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "urn:x-cast:com.google.cast.media"

    .line 4
    .line 5
    sput-object v0, Lv4/l;->w:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lv4/l;->w:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lv4/o;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, v0, Lv4/l;->i:I

    .line 10
    .line 11
    new-instance v1, Lv4/n;

    .line 12
    .line 13
    const-string v2, "load"

    .line 14
    .line 15
    const-wide/32 v3, 0x5265c00

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v2}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lv4/l;->j:Lv4/n;

    .line 22
    .line 23
    new-instance v2, Lv4/n;

    .line 24
    .line 25
    const-string v5, "pause"

    .line 26
    .line 27
    invoke-direct {v2, v3, v4, v5}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Lv4/l;->k:Lv4/n;

    .line 31
    .line 32
    new-instance v5, Lv4/n;

    .line 33
    .line 34
    const-string v6, "play"

    .line 35
    .line 36
    invoke-direct {v5, v3, v4, v6}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v5, v0, Lv4/l;->l:Lv4/n;

    .line 40
    .line 41
    new-instance v6, Lv4/n;

    .line 42
    .line 43
    const-string v7, "stop"

    .line 44
    .line 45
    invoke-direct {v6, v3, v4, v7}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v7, Lv4/n;

    .line 49
    .line 50
    const-wide/16 v8, 0x2710

    .line 51
    .line 52
    const-string v10, "seek"

    .line 53
    .line 54
    invoke-direct {v7, v8, v9, v10}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v7, v0, Lv4/l;->m:Lv4/n;

    .line 58
    .line 59
    new-instance v8, Lv4/n;

    .line 60
    .line 61
    const-string v9, "volume"

    .line 62
    .line 63
    invoke-direct {v8, v3, v4, v9}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v8, v0, Lv4/l;->n:Lv4/n;

    .line 67
    .line 68
    new-instance v9, Lv4/n;

    .line 69
    .line 70
    const-string v10, "mute"

    .line 71
    .line 72
    invoke-direct {v9, v3, v4, v10}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v9, v0, Lv4/l;->o:Lv4/n;

    .line 76
    .line 77
    new-instance v10, Lv4/n;

    .line 78
    .line 79
    const-string v11, "status"

    .line 80
    .line 81
    invoke-direct {v10, v3, v4, v11}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object v10, v0, Lv4/l;->p:Lv4/n;

    .line 85
    .line 86
    new-instance v11, Lv4/n;

    .line 87
    .line 88
    const-string v12, "activeTracks"

    .line 89
    .line 90
    invoke-direct {v11, v3, v4, v12}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object v11, v0, Lv4/l;->q:Lv4/n;

    .line 94
    .line 95
    new-instance v12, Lv4/n;

    .line 96
    .line 97
    const-string v13, "trackStyle"

    .line 98
    .line 99
    invoke-direct {v12, v3, v4, v13}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Lv4/n;

    .line 103
    .line 104
    const-string v14, "queueInsert"

    .line 105
    .line 106
    invoke-direct {v13, v3, v4, v14}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v14, Lv4/n;

    .line 110
    .line 111
    const-string v15, "queueUpdate"

    .line 112
    .line 113
    invoke-direct {v14, v3, v4, v15}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v14, v0, Lv4/l;->r:Lv4/n;

    .line 117
    .line 118
    new-instance v15, Lv4/n;

    .line 119
    .line 120
    move-object/from16 v16, v14

    .line 121
    .line 122
    const-string v14, "queueRemove"

    .line 123
    .line 124
    invoke-direct {v15, v3, v4, v14}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v14, Lv4/n;

    .line 128
    .line 129
    move-object/from16 v17, v15

    .line 130
    .line 131
    const-string v15, "queueReorder"

    .line 132
    .line 133
    invoke-direct {v14, v3, v4, v15}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v15, Lv4/n;

    .line 137
    .line 138
    move-object/from16 v18, v14

    .line 139
    .line 140
    const-string v14, "queueFetchItemIds"

    .line 141
    .line 142
    invoke-direct {v15, v3, v4, v14}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iput-object v15, v0, Lv4/l;->s:Lv4/n;

    .line 146
    .line 147
    new-instance v14, Lv4/n;

    .line 148
    .line 149
    move-object/from16 v19, v15

    .line 150
    .line 151
    const-string v15, "queueFetchItemRange"

    .line 152
    .line 153
    invoke-direct {v14, v3, v4, v15}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iput-object v14, v0, Lv4/l;->u:Lv4/n;

    .line 157
    .line 158
    new-instance v15, Lv4/n;

    .line 159
    .line 160
    move-object/from16 v20, v14

    .line 161
    .line 162
    const-string v14, "queueFetchItems"

    .line 163
    .line 164
    invoke-direct {v15, v3, v4, v14}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iput-object v15, v0, Lv4/l;->t:Lv4/n;

    .line 168
    .line 169
    new-instance v14, Lv4/n;

    .line 170
    .line 171
    const-string v15, "setPlaybackRate"

    .line 172
    .line 173
    invoke-direct {v14, v3, v4, v15}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v15, Lv4/n;

    .line 177
    .line 178
    move-object/from16 v21, v14

    .line 179
    .line 180
    const-string v14, "skipAd"

    .line 181
    .line 182
    invoke-direct {v15, v3, v4, v14}, Lv4/n;-><init>(JLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iput-object v15, v0, Lv4/l;->v:Lv4/n;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Lv4/o;->a(Lv4/n;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v5}, Lv4/o;->a(Lv4/n;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v6}, Lv4/o;->a(Lv4/n;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v7}, Lv4/o;->a(Lv4/n;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v8}, Lv4/o;->a(Lv4/n;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v9}, Lv4/o;->a(Lv4/n;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v10}, Lv4/o;->a(Lv4/n;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v11}, Lv4/o;->a(Lv4/n;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v12}, Lv4/o;->a(Lv4/n;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v13}, Lv4/o;->a(Lv4/n;)V

    .line 218
    .line 219
    .line 220
    move-object/from16 v1, v16

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v1, v17

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 228
    .line 229
    .line 230
    move-object/from16 v1, v18

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 233
    .line 234
    .line 235
    move-object/from16 v1, v19

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v1, v20

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v1, v21

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lv4/o;->a(Lv4/n;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v15}, Lv4/o;->a(Lv4/n;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Lv4/l;->g()V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public static f(Lorg/json/JSONObject;)Lv4/k;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cast/MediaError;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv4/k;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const-string v1, "customData"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public static m(Lorg/json/JSONArray;)[I
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final d(Lv4/m;I)V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lv4/o;->b()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "QUEUE_UPDATE"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, Lv4/l;->p()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string v3, "jump"

    .line 34
    .line 35
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    :cond_0
    iget p2, p0, Lv4/l;->i:I

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    if-eq p2, v3, :cond_1

    .line 42
    .line 43
    const-string v3, "sequenceNumber"

    .line 44
    .line 45
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, v1, v2, p2}, Lv4/o;->c(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lv4/i;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-direct {p2, p0, p1, v0}, Lv4/i;-><init>(Lv4/l;Lv4/m;I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lv4/l;->r:Lv4/n;

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2, p2}, Lv4/n;->a(JLv4/m;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final e(JDJ)J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lv4/l;->e:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    move-wide v0, v2

    .line 15
    :cond_0
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    return-wide p1

    .line 20
    :cond_1
    long-to-double v0, v0

    .line 21
    mul-double v0, v0, p3

    .line 22
    .line 23
    double-to-long p3, v0

    .line 24
    add-long/2addr p1, p3

    .line 25
    cmp-long p3, p5, v2

    .line 26
    .line 27
    if-lez p3, :cond_2

    .line 28
    .line 29
    cmp-long p3, p1, p5

    .line 30
    .line 31
    if-lez p3, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    cmp-long p3, p1, v2

    .line 35
    .line 36
    if-ltz p3, :cond_3

    .line 37
    .line 38
    move-wide p5, p1

    .line 39
    :goto_0
    return-wide p5

    .line 40
    :cond_3
    return-wide v2
.end method

.method public final g()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lv4/l;->e:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    iget-object v0, p0, Lv4/o;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lv4/n;

    .line 25
    .line 26
    const/16 v2, 0x7d2

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lv4/n;->f(I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final h(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sequenceNumber"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lv4/l;->i:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, " message is missing a sequence number."

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, Lv4/o;->a:Lv4/b;

    .line 27
    .line 28
    iget-object v1, v0, Lv4/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/l;->h:Lr4/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lr4/f;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lr4/d;

    .line 27
    .line 28
    invoke-interface {v2}, Lr4/d;->b()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lq4/z;

    .line 49
    .line 50
    iget v2, v1, Lq4/z;->a:I

    .line 51
    .line 52
    packed-switch v2, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    iget-object v1, v1, Lq4/z;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ls4/k;

    .line 59
    .line 60
    invoke-virtual {v1}, Ls4/k;->c()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/l;->h:Lr4/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 6
    .line 7
    iget-object v1, v0, Lr4/f;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lr4/d;

    .line 24
    .line 25
    invoke-interface {v2}, Lr4/d;->o()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lq4/z;

    .line 46
    .line 47
    iget v2, v1, Lq4/z;->a:I

    .line 48
    .line 49
    packed-switch v2, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_0
    iget-object v1, v1, Lq4/z;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ls4/k;

    .line 56
    .line 57
    invoke-virtual {v1}, Ls4/k;->c()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/l;->h:Lr4/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 6
    .line 7
    iget-object v1, v0, Lr4/f;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lr4/d;

    .line 24
    .line 25
    invoke-interface {v2}, Lr4/d;->c()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lq4/z;

    .line 46
    .line 47
    iget v2, v1, Lq4/z;->a:I

    .line 48
    .line 49
    packed-switch v2, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_0
    iget-object v1, v1, Lq4/z;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ls4/k;

    .line 56
    .line 57
    invoke-virtual {v1}, Ls4/k;->c()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lv4/l;->h:Lr4/n;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lr4/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lr4/p;

    .line 31
    .line 32
    invoke-virtual {v0}, Lr4/f;->i()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-boolean v3, v2, Lr4/p;->d:Z

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    iget-object v3, v2, Lr4/p;->e:Lr4/f;

    .line 43
    .line 44
    iget-object v4, v3, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 45
    .line 46
    iget-object v5, v2, Lr4/p;->c:Lr4/o;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    iput-boolean v4, v2, Lr4/p;->d:Z

    .line 53
    .line 54
    iget-object v3, v3, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 55
    .line 56
    iget-wide v6, v2, Lr4/p;->b:J

    .line 57
    .line 58
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Lr4/f;->i()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    iget-boolean v3, v2, Lr4/p;->d:Z

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iget-object v3, v2, Lr4/p;->e:Lr4/f;

    .line 73
    .line 74
    iget-object v3, v3, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 75
    .line 76
    iget-object v4, v2, Lr4/p;->c:Lr4/o;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    iput-boolean v3, v2, Lr4/p;->d:Z

    .line 83
    .line 84
    :cond_2
    :goto_1
    iget-boolean v3, v2, Lr4/p;->d:Z

    .line 85
    .line 86
    if-eqz v3, :cond_0

    .line 87
    .line 88
    invoke-virtual {v0}, Lr4/f;->j()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lr4/f;->C()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Lr4/f;->m()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Lr4/f;->l()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_0

    .line 111
    .line 112
    :cond_3
    iget-object v2, v2, Lr4/p;->a:Ljava/util/HashSet;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Lr4/f;->E(Ljava/util/HashSet;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v1, v0, Lr4/f;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lr4/d;

    .line 135
    .line 136
    invoke-interface {v2}, Lr4/d;->e()V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_a

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lq4/z;

    .line 157
    .line 158
    iget v2, v1, Lq4/z;->a:I

    .line 159
    .line 160
    packed-switch v2, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    iget-object v1, v1, Lq4/z;->b:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Ls4/k;

    .line 166
    .line 167
    invoke-virtual {v1}, Ls4/k;->c()V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :pswitch_0
    iget-object v1, v1, Lq4/z;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lr4/a;

    .line 174
    .line 175
    invoke-virtual {v1}, Lr4/a;->e()J

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    iget-wide v4, v1, Lr4/a;->b:J

    .line 180
    .line 181
    cmp-long v6, v2, v4

    .line 182
    .line 183
    if-eqz v6, :cond_6

    .line 184
    .line 185
    iput-wide v2, v1, Lr4/a;->b:J

    .line 186
    .line 187
    invoke-virtual {v1}, Lr4/a;->c()V

    .line 188
    .line 189
    .line 190
    iget-wide v2, v1, Lr4/a;->b:J

    .line 191
    .line 192
    const-wide/16 v4, 0x0

    .line 193
    .line 194
    cmp-long v6, v2, v4

    .line 195
    .line 196
    if-eqz v6, :cond_6

    .line 197
    .line 198
    invoke-virtual {v1}, Lr4/a;->d()V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :pswitch_1
    iget-object v1, v1, Lq4/z;->b:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v1, Lq4/b;

    .line 205
    .line 206
    iget-object v2, v1, Lq4/b;->j:Lr4/f;

    .line 207
    .line 208
    if-eqz v2, :cond_7

    .line 209
    .line 210
    invoke-virtual {v2}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    goto :goto_4

    .line 215
    :cond_7
    const/4 v2, 0x0

    .line 216
    :goto_4
    iget-object v1, v1, Lq4/b;->l:Lcom/google/android/gms/internal/cast/u4;

    .line 217
    .line 218
    if-eqz v1, :cond_6

    .line 219
    .line 220
    if-nez v2, :cond_8

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 224
    .line 225
    invoke-virtual {v1}, Lc2/b;->l()Lcom/google/android/gms/internal/cast/x7;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    new-instance v3, Landroidx/leanback/widget/o;

    .line 230
    .line 231
    invoke-direct {v3, v2}, Landroidx/leanback/widget/o;-><init>(Lcom/google/android/gms/cast/MediaStatus;)V

    .line 232
    .line 233
    .line 234
    new-instance v2, Landroidx/appcompat/app/t0;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    iget v3, v3, Landroidx/leanback/widget/o;->a:I

    .line 240
    .line 241
    iput v3, v2, Landroidx/appcompat/app/t0;->a:I

    .line 242
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v3

    .line 247
    iput-wide v3, v2, Landroidx/appcompat/app/t0;->b:J

    .line 248
    .line 249
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/x7;->m:Landroidx/appcompat/app/t0;

    .line 250
    .line 251
    if-eqz v3, :cond_9

    .line 252
    .line 253
    iget v3, v3, Landroidx/appcompat/app/t0;->a:I

    .line 254
    .line 255
    const/4 v4, 0x2

    .line 256
    if-ne v3, v4, :cond_9

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_9
    iget-wide v3, v1, Lcom/google/android/gms/internal/cast/x7;->h:J

    .line 260
    .line 261
    iput-wide v3, v2, Landroidx/appcompat/app/t0;->c:J

    .line 262
    .line 263
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/x7;->m:Landroidx/appcompat/app/t0;

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_a
    return-void

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv4/o;->d:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lv4/n;

    .line 19
    .line 20
    const/16 v3, 0x7d2

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lv4/n;->f(I)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0}, Lv4/l;->g()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v1
.end method

.method public final o()J
    .locals 12

    .line 1
    iget-object v0, p0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 9
    .line 10
    :goto_0
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    if-eqz v2, :cond_f

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_1
    iget-object v5, p0, Lv4/l;->g:Ljava/lang/Long;

    .line 19
    .line 20
    if-eqz v5, :cond_b

    .line 21
    .line 22
    const-wide v6, 0x3e800000000L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_a

    .line 36
    .line 37
    iget-object v0, p0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 38
    .line 39
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 40
    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iget-object v2, p0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-boolean v3, v2, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->d:Z

    .line 58
    .line 59
    iget-wide v5, v2, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->b:J

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 64
    .line 65
    const-wide/16 v9, -0x1

    .line 66
    .line 67
    move-object v4, p0

    .line 68
    invoke-virtual/range {v4 .. v10}, Lv4/l;->e(JDJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-wide v3, v5

    .line 74
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    return-wide v0

    .line 79
    :cond_5
    if-nez v0, :cond_6

    .line 80
    .line 81
    move-object v0, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 84
    .line 85
    :goto_2
    if-eqz v0, :cond_7

    .line 86
    .line 87
    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_7
    move-wide v6, v3

    .line 91
    :goto_3
    cmp-long v0, v6, v3

    .line 92
    .line 93
    if-ltz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    iget-object v0, p0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 100
    .line 101
    if-nez v0, :cond_8

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 105
    .line 106
    :goto_4
    if-eqz v1, :cond_9

    .line 107
    .line 108
    iget-wide v3, v1, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 109
    .line 110
    :cond_9
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    return-wide v0

    .line 115
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    return-wide v0

    .line 120
    :cond_b
    iget-wide v5, p0, Lv4/l;->e:J

    .line 121
    .line 122
    cmp-long v1, v5, v3

    .line 123
    .line 124
    if-nez v1, :cond_c

    .line 125
    .line 126
    return-wide v3

    .line 127
    :cond_c
    iget-wide v8, v0, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 128
    .line 129
    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaStatus;->g:J

    .line 130
    .line 131
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 132
    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    cmpl-double v1, v8, v3

    .line 136
    .line 137
    if-eqz v1, :cond_e

    .line 138
    .line 139
    const/4 v1, 0x2

    .line 140
    if-eq v0, v1, :cond_d

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_d
    iget-wide v10, v2, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 144
    .line 145
    move-object v5, p0

    .line 146
    invoke-virtual/range {v5 .. v11}, Lv4/l;->e(JDJ)J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    return-wide v0

    .line 151
    :cond_e
    :goto_5
    return-wide v6

    .line 152
    :cond_f
    :goto_6
    return-wide v3
.end method

.method public final p()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, v0, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    new-instance v0, Lv4/j;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
