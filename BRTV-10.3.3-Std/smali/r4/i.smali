.class public final Lr4/i;
.super Lr4/m;
.source "MyApplication"


# instance fields
.field public final synthetic u:I

.field public final synthetic v:Lr4/f;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lr4/f;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr4/i;->u:I

    iput-object p2, p0, Lr4/i;->w:Ljava/lang/Object;

    iput-object p1, p0, Lr4/i;->v:Lr4/f;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lr4/m;-><init>(Lr4/f;Z)V

    return-void
.end method

.method public constructor <init>(Lr4/f;[I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/i;->u:I

    .line 2
    iput-object p2, p0, Lr4/i;->w:Ljava/lang/Object;

    iput-object p1, p0, Lr4/i;->v:Lr4/f;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lr4/m;-><init>(Lr4/f;Z)V

    return-void
.end method


# virtual methods
.method public final k0()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "mediaSessionId"

    .line 3
    .line 4
    const-string v2, "type"

    .line 5
    .line 6
    const-string v3, "requestId"

    .line 7
    .line 8
    iget-object v4, p0, Lr4/i;->w:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lr4/i;->v:Lr4/f;

    .line 11
    .line 12
    iget v6, p0, Lr4/i;->u:I

    .line 13
    .line 14
    packed-switch v6, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v5, v5, Lr4/f;->c:Lv4/l;

    .line 18
    .line 19
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast v4, [J

    .line 27
    .line 28
    new-instance v7, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lv4/o;->b()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    :try_start_0
    invoke-virtual {v7, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string v3, "EDIT_TRACKS_INFO"

    .line 41
    .line 42
    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lv4/l;->p()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lorg/json/JSONArray;

    .line 53
    .line 54
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .line 56
    .line 57
    :goto_0
    array-length v2, v4

    .line 58
    if-ge v0, v2, :cond_0

    .line 59
    .line 60
    aget-wide v2, v4, v0

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v0, "activeTrackIds"

    .line 69
    .line 70
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v5, v8, v9, v0}, Lv4/o;->c(JLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v5, Lv4/l;->q:Lv4/n;

    .line 81
    .line 82
    invoke-virtual {v0, v8, v9, v6}, Lv4/n;->a(JLv4/m;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    iget-object v5, v5, Lr4/f;->c:Lv4/l;

    .line 87
    .line 88
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v7, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lv4/o;->b()J

    .line 101
    .line 102
    .line 103
    move-result-wide v8

    .line 104
    check-cast v4, Lp4/g;

    .line 105
    .line 106
    iget-boolean v10, v4, Lp4/g;->b:Z

    .line 107
    .line 108
    if-eqz v10, :cond_1

    .line 109
    .line 110
    const-wide v10, 0x3e800000000L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    iget-wide v10, v4, Lp4/g;->a:J

    .line 117
    .line 118
    :goto_1
    :try_start_1
    invoke-virtual {v7, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v3, "SEEK"

    .line 122
    .line 123
    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Lv4/l;->p()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const-string v1, "currentTime"

    .line 134
    .line 135
    sget-object v2, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    long-to-double v2, v10

    .line 138
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    div-double/2addr v2, v12

    .line 144
    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .line 146
    .line 147
    :catch_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v5, v8, v9, v1}, Lv4/o;->c(JLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iput-object v1, v5, Lv4/l;->g:Ljava/lang/Long;

    .line 159
    .line 160
    new-instance v1, Lv4/i;

    .line 161
    .line 162
    invoke-direct {v1, v5, v6, v0}, Lv4/i;-><init>(Lv4/l;Lv4/m;I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v5, Lv4/l;->m:Lv4/n;

    .line 166
    .line 167
    invoke-virtual {v0, v8, v9, v1}, Lv4/n;->a(JLv4/m;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_1
    iget-object v5, v5, Lr4/f;->c:Lv4/l;

    .line 172
    .line 173
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    check-cast v4, [I

    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v7, Lorg/json/JSONObject;

    .line 183
    .line 184
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Lv4/o;->b()J

    .line 188
    .line 189
    .line 190
    move-result-wide v8

    .line 191
    :try_start_2
    invoke-virtual {v7, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    const-string v3, "QUEUE_GET_ITEMS"

    .line 195
    .line 196
    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lv4/l;->p()J

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    new-instance v1, Lorg/json/JSONArray;

    .line 207
    .line 208
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 209
    .line 210
    .line 211
    array-length v2, v4

    .line 212
    :goto_2
    if-ge v0, v2, :cond_2

    .line 213
    .line 214
    aget v3, v4, v0

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 217
    .line 218
    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_2
    const-string v0, "itemIds"

    .line 223
    .line 224
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    .line 226
    .line 227
    :catch_2
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v5, v8, v9, v0}, Lv4/o;->c(JLjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, v5, Lv4/l;->t:Lv4/n;

    .line 235
    .line 236
    invoke-virtual {v0, v8, v9, v6}, Lv4/n;->a(JLv4/m;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
