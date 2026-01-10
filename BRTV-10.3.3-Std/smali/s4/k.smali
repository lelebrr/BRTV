.class public final Ls4/k;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final v:Lv4/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final c:Lcom/google/android/gms/internal/cast/u;

.field public final d:Lq4/f;

.field public final e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public final f:Landroid/content/ComponentName;

.field public final g:Landroid/content/ComponentName;

.field public final h:Lc2/b;

.field public final i:Lc2/b;

.field public final j:Ls4/g;

.field public final k:Lcom/google/android/gms/internal/cast/x0;

.field public final l:Ls4/h;

.field public final m:Lq4/z;

.field public n:Lr4/f;

.field public o:Lcom/google/android/gms/cast/CastDevice;

.field public p:Landroid/support/v4/media/session/MediaSessionCompat;

.field public q:Z

.field public r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaSessionManager"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ls4/k;->v:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/u;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ls4/k;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Ls4/k;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 9
    .line 10
    iput-object p3, p0, Ls4/k;->c:Lcom/google/android/gms/internal/cast/u;

    .line 11
    .line 12
    sget-object p3, Lq4/a;->j:Lv4/b;

    .line 13
    .line 14
    const-string p3, "Must be called from the main thread."

    .line 15
    .line 16
    invoke-static {p3}, Lb5/l;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p3, Lq4/a;->l:Lq4/a;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3}, Lq4/a;->a()Lq4/f;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p3, v2

    .line 30
    :goto_0
    iput-object p3, p0, Ls4/k;->d:Lq4/f;

    .line 31
    .line 32
    iget-object p3, p2, Lcom/google/android/gms/cast/framework/CastOptions;->f:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 33
    .line 34
    if-nez p3, :cond_1

    .line 35
    .line 36
    move-object v3, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v3, p3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->d:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 39
    .line 40
    :goto_1
    iput-object v3, p0, Ls4/k;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 41
    .line 42
    new-instance v3, Lq4/z;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v3, v4, p0}, Lq4/z;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Ls4/k;->m:Lq4/z;

    .line 49
    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v3, p3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->b:Ljava/lang/String;

    .line 55
    .line 56
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    new-instance v4, Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move-object v4, v2

    .line 69
    :goto_3
    iput-object v4, p0, Ls4/k;->f:Landroid/content/ComponentName;

    .line 70
    .line 71
    if-nez p3, :cond_4

    .line 72
    .line 73
    move-object p3, v2

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->a:Ljava/lang/String;

    .line 76
    .line 77
    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    new-instance v3, Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-direct {v3, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    move-object v3, v2

    .line 90
    :goto_5
    iput-object v3, p0, Ls4/k;->g:Landroid/content/ComponentName;

    .line 91
    .line 92
    new-instance p3, Lc2/b;

    .line 93
    .line 94
    invoke-direct {p3, p1}, Lc2/b;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object p3, p0, Ls4/k;->h:Lc2/b;

    .line 98
    .line 99
    new-instance v3, Ls4/i;

    .line 100
    .line 101
    invoke-direct {v3, p0, v1}, Ls4/i;-><init>(Ls4/k;I)V

    .line 102
    .line 103
    .line 104
    iput-object v3, p3, Lc2/b;->f:Ljava/lang/Object;

    .line 105
    .line 106
    new-instance p3, Lc2/b;

    .line 107
    .line 108
    invoke-direct {p3, p1}, Lc2/b;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    iput-object p3, p0, Ls4/k;->i:Lc2/b;

    .line 112
    .line 113
    new-instance v3, Ls4/i;

    .line 114
    .line 115
    invoke-direct {v3, p0, v0}, Ls4/i;-><init>(Ls4/k;I)V

    .line 116
    .line 117
    .line 118
    iput-object v3, p3, Lc2/b;->f:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance p3, Lcom/google/android/gms/internal/cast/x0;

    .line 121
    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-direct {p3, v3, v1}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 127
    .line 128
    .line 129
    iput-object p3, p0, Ls4/k;->k:Lcom/google/android/gms/internal/cast/x0;

    .line 130
    .line 131
    sget-object p3, Ls4/g;->u:Lv4/b;

    .line 132
    .line 133
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/CastOptions;->f:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 134
    .line 135
    if-nez p2, :cond_6

    .line 136
    .line 137
    goto/16 :goto_c

    .line 138
    .line 139
    :cond_6
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->d:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 140
    .line 141
    if-nez p2, :cond_7

    .line 142
    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    :cond_7
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:Lr4/t;

    .line 146
    .line 147
    if-nez p2, :cond_8

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_8
    invoke-static {p2}, Ls4/l;->a(Lr4/t;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-static {p2}, Ls4/l;->b(Lr4/t;)[I

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    if-nez p3, :cond_9

    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    goto :goto_6

    .line 162
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    :goto_6
    sget-object v4, Ls4/g;->u:Lv4/b;

    .line 167
    .line 168
    const-class v5, Lr4/b;

    .line 169
    .line 170
    if-eqz p3, :cond_11

    .line 171
    .line 172
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_a

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    const/4 v6, 0x5

    .line 184
    if-le p3, v6, :cond_b

    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-array p2, v1, [Ljava/lang/Object;

    .line 191
    .line 192
    const-string p3, " provides more than 5 actions."

    .line 193
    .line 194
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p3, v4, Lv4/b;->a:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v4, p1, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_c

    .line 208
    :cond_b
    if-eqz p2, :cond_10

    .line 209
    .line 210
    array-length p3, p2

    .line 211
    if-nez p3, :cond_c

    .line 212
    .line 213
    goto :goto_a

    .line 214
    :cond_c
    const/4 v6, 0x0

    .line 215
    :goto_7
    if-ge v6, p3, :cond_f

    .line 216
    .line 217
    aget v7, p2, v6

    .line 218
    .line 219
    if-ltz v7, :cond_e

    .line 220
    .line 221
    if-lt v7, v3, :cond_d

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_d
    add-int/2addr v6, v0

    .line 225
    goto :goto_7

    .line 226
    :cond_e
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-array p2, v1, [Ljava/lang/Object;

    .line 231
    .line 232
    const-string p3, "provides a compact view action whose index is out of bounds."

    .line 233
    .line 234
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object p3, v4, Lv4/b;->a:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v4, p1, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_f
    :goto_9
    new-instance v2, Ls4/g;

    .line 249
    .line 250
    invoke-direct {v2, p1}, Ls4/g;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    goto :goto_c

    .line 254
    :cond_10
    :goto_a
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-array p2, v1, [Ljava/lang/Object;

    .line 259
    .line 260
    const-string p3, " doesn\'t provide any actions for compact view."

    .line 261
    .line 262
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iget-object p3, v4, Lv4/b;->a:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v4, p1, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_c

    .line 276
    :cond_11
    :goto_b
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    new-array p2, v1, [Ljava/lang/Object;

    .line 281
    .line 282
    const-string p3, " doesn\'t provide any action."

    .line 283
    .line 284
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-object p3, v4, Lv4/b;->a:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v4, p1, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    :goto_c
    iput-object v2, p0, Ls4/k;->j:Ls4/g;

    .line 298
    .line 299
    new-instance p1, Ls4/h;

    .line 300
    .line 301
    invoke-direct {p1, v1, p0}, Ls4/h;-><init>(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iput-object p1, p0, Ls4/k;->l:Ls4/h;

    .line 305
    .line 306
    return-void
.end method


# virtual methods
.method public final a(Lr4/f;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Ls4/k;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    move-object v4, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/CastOptions;->f:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 11
    .line 12
    :goto_0
    iget-boolean v5, p0, Ls4/k;->q:Z

    .line 13
    .line 14
    if-nez v5, :cond_5

    .line 15
    .line 16
    if-eqz v3, :cond_5

    .line 17
    .line 18
    if-eqz v4, :cond_5

    .line 19
    .line 20
    iget-object v3, p0, Ls4/k;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 21
    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    if-eqz p2, :cond_5

    .line 27
    .line 28
    iget-object v3, p0, Ls4/k;->g:Landroid/content/ComponentName;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    iput-object p1, p0, Ls4/k;->n:Lr4/f;

    .line 35
    .line 36
    const-string v5, "Must be called from the main thread."

    .line 37
    .line 38
    invoke-static {v5}, Lb5/l;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Ls4/k;->m:Lq4/z;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iget-object p1, p1, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object p2, p0, Ls4/k;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 51
    .line 52
    new-instance p1, Landroid/content/Intent;

    .line 53
    .line 54
    const-string p2, "android.intent.action.MEDIA_BUTTON"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    sget p2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 63
    .line 64
    iget-object v5, p0, Ls4/k;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v5, v1, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-boolean p2, v4, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->f:Z

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 75
    .line 76
    const-string v4, "CastMediaSession"

    .line 77
    .line 78
    invoke-direct {p2, v5, v4, v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 82
    .line 83
    invoke-virtual {p0, v1, v2}, Ls4/k;->j(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Ls4/k;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 99
    .line 100
    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p0, Ls4/k;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 108
    .line 109
    iget-object v3, v3, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 110
    .line 111
    new-array v4, v0, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v3, v4, v1

    .line 114
    .line 115
    const v1, 0x7f12005d

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    new-instance p1, Ls4/j;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Ls4/j;-><init>(Ls4/k;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Ls4/k;->c:Lcom/google/android/gms/internal/cast/u;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/u;->x(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iput-boolean v0, p0, Ls4/k;->q:Z

    .line 152
    .line 153
    invoke-virtual {p0}, Ls4/k;->c()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_5
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 158
    .line 159
    const-string p2, "skip attaching media session"

    .line 160
    .line 161
    sget-object v0, Ls4/k;->v:Lv4/b;

    .line 162
    .line 163
    invoke-virtual {v0, p2, p1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gt v1, v2, :cond_2

    .line 20
    .line 21
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    if-nez v1, :cond_4

    .line 47
    .line 48
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :goto_1
    if-nez p2, :cond_5

    .line 61
    .line 62
    const-string p2, "android.media.metadata.DISPLAY_ICON"

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const-string p2, "android.media.metadata.ALBUM_ART"

    .line 66
    .line 67
    :goto_2
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final c()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls4/k;->n:Lr4/f;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Lr4/f;->w()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1}, Lr4/f;->l()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lr4/f;->d()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaQueueItem;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    move-object v3, v4

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v3}, Ls4/k;->j(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lr4/f;->i()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Ls4/k;->h()V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Ls4/k;->i()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    if-eqz v2, :cond_e

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    iget-object v3, v0, Ls4/k;->j:Ls4/g;

    .line 54
    .line 55
    if-eqz v3, :cond_d

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    sget-object v6, Ls4/k;->v:Lv4/b;

    .line 61
    .line 62
    const-string v7, "Update media notification."

    .line 63
    .line 64
    invoke-virtual {v6, v7, v5}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, Ls4/k;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 68
    .line 69
    iget-object v6, v0, Ls4/k;->n:Lr4/f;

    .line 70
    .line 71
    iget-object v7, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 72
    .line 73
    if-eqz v5, :cond_d

    .line 74
    .line 75
    if-eqz v6, :cond_d

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_3
    invoke-virtual {v6}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v8, :cond_d

    .line 86
    .line 87
    iget-object v9, v8, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 88
    .line 89
    if-eqz v9, :cond_d

    .line 90
    .line 91
    invoke-virtual {v6}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const/4 v11, 0x2

    .line 96
    if-eqz v10, :cond_6

    .line 97
    .line 98
    iget v12, v10, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 99
    .line 100
    if-eq v12, v2, :cond_7

    .line 101
    .line 102
    if-eq v12, v11, :cond_7

    .line 103
    .line 104
    const/4 v13, 0x3

    .line 105
    if-eq v12, v13, :cond_7

    .line 106
    .line 107
    iget v12, v10, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 108
    .line 109
    iget-object v13, v10, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Ljava/lang/Integer;

    .line 116
    .line 117
    if-eqz v12, :cond_6

    .line 118
    .line 119
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-lez v13, :cond_4

    .line 124
    .line 125
    const/4 v13, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/4 v13, 0x0

    .line 128
    :goto_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    iget-object v10, v10, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    add-int/lit8 v10, v10, -0x1

    .line 139
    .line 140
    if-ge v12, v10, :cond_5

    .line 141
    .line 142
    const/4 v10, 0x1

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    const/4 v10, 0x0

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const/4 v10, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    goto :goto_1

    .line 149
    :cond_7
    const/4 v10, 0x1

    .line 150
    const/4 v13, 0x1

    .line 151
    :goto_1
    invoke-virtual {v6}, Lr4/f;->g()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-ne v6, v11, :cond_8

    .line 156
    .line 157
    const/4 v6, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_8
    const/4 v6, 0x0

    .line 160
    :goto_2
    new-instance v11, Ls4/f;

    .line 161
    .line 162
    const-string v12, "com.google.android.gms.cast.metadata.TITLE"

    .line 163
    .line 164
    invoke-static {v2, v12}, Lcom/google/android/gms/cast/MediaMetadata;->j(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v14, v9, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 168
    .line 169
    invoke-virtual {v14, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 174
    .line 175
    .line 176
    move-result-object v19

    .line 177
    iget v7, v8, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 178
    .line 179
    iget-object v5, v5, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 180
    .line 181
    move-object v14, v11

    .line 182
    move v15, v6

    .line 183
    move/from16 v16, v7

    .line 184
    .line 185
    move-object/from16 v17, v12

    .line 186
    .line 187
    move-object/from16 v18, v5

    .line 188
    .line 189
    move/from16 v20, v10

    .line 190
    .line 191
    move/from16 v21, v13

    .line 192
    .line 193
    invoke-direct/range {v14 .. v21}, Ls4/f;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    .line 194
    .line 195
    .line 196
    iget-object v8, v3, Ls4/g;->k:Ls4/f;

    .line 197
    .line 198
    if-eqz v8, :cond_9

    .line 199
    .line 200
    iget-boolean v14, v8, Ls4/f;->b:Z

    .line 201
    .line 202
    if-ne v6, v14, :cond_9

    .line 203
    .line 204
    iget v6, v8, Ls4/f;->c:I

    .line 205
    .line 206
    if-ne v7, v6, :cond_9

    .line 207
    .line 208
    iget-object v6, v8, Ls4/f;->d:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v12, v6}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_9

    .line 215
    .line 216
    iget-object v6, v8, Ls4/f;->e:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v5, v6}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_9

    .line 223
    .line 224
    iget-boolean v5, v8, Ls4/f;->f:Z

    .line 225
    .line 226
    if-ne v10, v5, :cond_9

    .line 227
    .line 228
    iget-boolean v5, v8, Ls4/f;->g:Z

    .line 229
    .line 230
    if-eq v13, v5, :cond_a

    .line 231
    .line 232
    :cond_9
    iput-object v11, v3, Ls4/g;->k:Ls4/f;

    .line 233
    .line 234
    invoke-virtual {v3}, Ls4/g;->b()V

    .line 235
    .line 236
    .line 237
    :cond_a
    new-instance v5, Ll6/h;

    .line 238
    .line 239
    iget-object v6, v9, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 240
    .line 241
    if-eqz v6, :cond_b

    .line 242
    .line 243
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-nez v7, :cond_b

    .line 248
    .line 249
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Lcom/google/android/gms/common/images/WebImage;

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_b
    const/4 v4, 0x0

    .line 257
    :goto_3
    invoke-direct {v5, v4}, Ll6/h;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 258
    .line 259
    .line 260
    iget-object v4, v3, Ls4/g;->l:Ll6/h;

    .line 261
    .line 262
    iget-object v6, v5, Ll6/h;->b:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v6, Landroid/net/Uri;

    .line 265
    .line 266
    if-eqz v4, :cond_c

    .line 267
    .line 268
    iget-object v4, v4, Ll6/h;->b:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v4, Landroid/net/Uri;

    .line 271
    .line 272
    invoke-static {v6, v4}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_d

    .line 277
    .line 278
    :cond_c
    new-instance v4, Ll6/h;

    .line 279
    .line 280
    const/4 v7, 0x7

    .line 281
    invoke-direct {v4, v3, v7, v5}, Ll6/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object v3, v3, Ls4/g;->i:Lc2/b;

    .line 285
    .line 286
    iput-object v4, v3, Lc2/b;->f:Ljava/lang/Object;

    .line 287
    .line 288
    invoke-virtual {v3, v6}, Lc2/b;->i(Landroid/net/Uri;)V

    .line 289
    .line 290
    .line 291
    :cond_d
    :goto_4
    invoke-virtual {v1}, Lr4/f;->l()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_e

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Ls4/k;->g(Z)V

    .line 298
    .line 299
    .line 300
    :cond_e
    :goto_5
    return-void
.end method

.method public final d(Ljava/lang/String;ILandroid/os/Bundle;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x3855de4e

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const v1, -0x3854c70e

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const v1, 0xe0a3765

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    const/4 p1, -0x1

    .line 54
    :goto_1
    if-eqz p1, :cond_8

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    if-eq p1, v3, :cond_6

    .line 59
    .line 60
    if-eq p1, v2, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    iget-object p1, p0, Ls4/k;->n:Lr4/f;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Lr4/f;->A()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    const-wide/16 v0, 0x20

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 77
    .line 78
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    return-wide v0

    .line 82
    :cond_6
    iget-object p1, p0, Ls4/k;->n:Lr4/f;

    .line 83
    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p1}, Lr4/f;->B()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    const-wide/16 v0, 0x10

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 96
    .line 97
    invoke-virtual {p3, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    return-wide v0

    .line 101
    :cond_8
    const/4 p1, 0x3

    .line 102
    if-ne p2, p1, :cond_9

    .line 103
    .line 104
    const-wide/16 p2, 0x202

    .line 105
    .line 106
    move-wide v0, p2

    .line 107
    const/4 p2, 0x3

    .line 108
    goto :goto_2

    .line 109
    :cond_9
    const-wide/16 v0, 0x200

    .line 110
    .line 111
    :goto_2
    if-eq p2, v2, :cond_a

    .line 112
    .line 113
    :goto_3
    return-wide v0

    .line 114
    :cond_a
    const-wide/16 p1, 0x204

    .line 115
    .line 116
    return-wide p1
.end method

.method public final e(Lcom/google/android/gms/cast/MediaMetadata;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/k;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->f:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->j()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_1
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object p1, v2

    .line 38
    :goto_2
    if-nez p1, :cond_3

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_3
    iget-object p1, p1, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    .line 42
    .line 43
    return-object p1
.end method

.method public final f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x1

    .line 11
    const-string v5, "com.google.android.gms.cast.framework.action.REWIND"

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const-string v7, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 15
    .line 16
    const/4 v8, 0x3

    .line 17
    const-string v9, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 18
    .line 19
    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 20
    .line 21
    sparse-switch v3, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    goto :goto_1

    .line 41
    :sswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    goto :goto_1

    .line 49
    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 58
    :goto_1
    const-wide/16 v11, 0x2710

    .line 59
    .line 60
    iget-object v14, v0, Ls4/k;->a:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v13, v0, Ls4/k;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 63
    .line 64
    if-eqz v3, :cond_c

    .line 65
    .line 66
    if-eq v3, v4, :cond_6

    .line 67
    .line 68
    if-eq v3, v6, :cond_4

    .line 69
    .line 70
    if-eq v3, v8, :cond_2

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 75
    .line 76
    iget-object v4, v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;->c:Ljava/lang/String;

    .line 77
    .line 78
    iget v2, v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;->b:I

    .line 79
    .line 80
    invoke-direct {v3, v1, v4, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_2
    iget-object v1, v0, Ls4/k;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    if-eqz v13, :cond_3

    .line 97
    .line 98
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 99
    .line 100
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget v3, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget v3, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 111
    .line 112
    invoke-direct {v1, v9, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, v0, Ls4/k;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 120
    .line 121
    :cond_3
    iget-object v1, v0, Ls4/k;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_4
    iget-object v1, v0, Ls4/k;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 126
    .line 127
    if-nez v1, :cond_5

    .line 128
    .line 129
    if-eqz v13, :cond_5

    .line 130
    .line 131
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 132
    .line 133
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget v3, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget v3, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 144
    .line 145
    invoke-direct {v1, v7, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v0, Ls4/k;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 153
    .line 154
    :cond_5
    iget-object v1, v0, Ls4/k;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_6
    iget-object v1, v0, Ls4/k;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 159
    .line 160
    if-nez v1, :cond_b

    .line 161
    .line 162
    if-eqz v13, :cond_b

    .line 163
    .line 164
    sget-object v1, Ls4/l;->a:Lv4/b;

    .line 165
    .line 166
    iget-wide v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:J

    .line 167
    .line 168
    cmp-long v3, v1, v11

    .line 169
    .line 170
    if-nez v3, :cond_7

    .line 171
    .line 172
    iget v4, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 173
    .line 174
    const-wide/16 v6, 0x7530

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    const-wide/16 v6, 0x7530

    .line 178
    .line 179
    cmp-long v4, v1, v6

    .line 180
    .line 181
    if-eqz v4, :cond_8

    .line 182
    .line 183
    iget v4, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_8
    iget v4, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    .line 187
    .line 188
    :goto_2
    if-nez v3, :cond_9

    .line 189
    .line 190
    iget v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->o:I

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    cmp-long v3, v1, v6

    .line 194
    .line 195
    if-eqz v3, :cond_a

    .line 196
    .line 197
    iget v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->n:I

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    iget v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->p:I

    .line 201
    .line 202
    :goto_3
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 203
    .line 204
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-direct {v2, v5, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iput-object v1, v0, Ls4/k;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 220
    .line 221
    :cond_b
    iget-object v1, v0, Ls4/k;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    iget-object v1, v0, Ls4/k;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 225
    .line 226
    if-nez v1, :cond_11

    .line 227
    .line 228
    if-eqz v13, :cond_11

    .line 229
    .line 230
    sget-object v1, Ls4/l;->a:Lv4/b;

    .line 231
    .line 232
    iget-wide v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:J

    .line 233
    .line 234
    cmp-long v3, v1, v11

    .line 235
    .line 236
    if-nez v3, :cond_d

    .line 237
    .line 238
    iget v4, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:I

    .line 239
    .line 240
    move v6, v4

    .line 241
    const-wide/16 v4, 0x7530

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_d
    const-wide/16 v4, 0x7530

    .line 245
    .line 246
    cmp-long v6, v1, v4

    .line 247
    .line 248
    if-eqz v6, :cond_e

    .line 249
    .line 250
    iget v6, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:I

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_e
    iget v6, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    .line 254
    .line 255
    :goto_4
    if-nez v3, :cond_f

    .line 256
    .line 257
    iget v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->l:I

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_f
    cmp-long v3, v1, v4

    .line 261
    .line 262
    if-eqz v3, :cond_10

    .line 263
    .line 264
    iget v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->k:I

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_10
    iget v1, v13, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->m:I

    .line 268
    .line 269
    :goto_5
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 270
    .line 271
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-direct {v2, v10, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, v0, Ls4/k;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 287
    .line 288
    :cond_11
    iget-object v1, v0, Ls4/k;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 289
    .line 290
    :goto_6
    if-eqz v1, :cond_12

    .line 291
    .line 292
    move-object/from16 v2, p1

    .line 293
    .line 294
    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 295
    .line 296
    .line 297
    :cond_12
    return-void

    .line 298
    nop

    .line 299
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ls4/k;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->g:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ls4/k;->l:Ls4/h;

    .line 9
    .line 10
    iget-object v1, p0, Ls4/k;->k:Lcom/google/android/gms/internal/cast/x0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v3, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 20
    .line 21
    iget-object v4, p0, Ls4/k;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls4/k;->j:Ls4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v2, Ls4/k;->v:Lv4/b;

    .line 9
    .line 10
    const-string v3, "Stopping media notification."

    .line 11
    .line 12
    invoke-virtual {v2, v3, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Ls4/g;->i:Lc2/b;

    .line 16
    .line 17
    invoke-virtual {v1}, Lc2/b;->j()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, v1, Lc2/b;->f:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, Ls4/g;->b:Landroid/app/NotificationManager;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v1, "castMediaNotification"

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/k;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->g:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Ls4/k;->k:Lcom/google/android/gms/internal/cast/x0;

    .line 9
    .line 10
    iget-object v1, p0, Ls4/k;->l:Ls4/h;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v1, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 18
    .line 19
    iget-object v2, p0, Ls4/k;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final j(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_e

    .line 12
    .line 13
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 19
    .line 20
    invoke-direct {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, Ls4/k;->n:Lr4/f;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    iget-object v8, v0, Ls4/k;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 27
    .line 28
    if-eqz v6, :cond_e

    .line 29
    .line 30
    iget-object v11, v0, Ls4/k;->j:Ls4/g;

    .line 31
    .line 32
    if-nez v11, :cond_1

    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v6}, Lr4/f;->w()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_2

    .line 41
    .line 42
    invoke-virtual {v6}, Lr4/f;->k()Z

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    if-eqz v11, :cond_3

    .line 47
    .line 48
    :cond_2
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v6}, Lr4/f;->c()J

    .line 52
    .line 53
    .line 54
    move-result-wide v11

    .line 55
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 56
    .line 57
    invoke-virtual {v5, v1, v11, v12, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 58
    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_4
    if-eqz v8, :cond_5

    .line 69
    .line 70
    iget-object v6, v8, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:Lr4/t;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move-object v6, v7

    .line 74
    :goto_1
    iget-object v11, v0, Ls4/k;->n:Lr4/f;

    .line 75
    .line 76
    if-eqz v11, :cond_6

    .line 77
    .line 78
    invoke-virtual {v11}, Lr4/f;->k()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-nez v11, :cond_6

    .line 83
    .line 84
    iget-object v11, v0, Ls4/k;->n:Lr4/f;

    .line 85
    .line 86
    invoke-virtual {v11}, Lr4/f;->o()Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_7

    .line 91
    .line 92
    :cond_6
    const-wide/16 v11, 0x0

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    const-wide/16 v11, 0x100

    .line 96
    .line 97
    :goto_2
    const-string v13, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 98
    .line 99
    const-string v14, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 100
    .line 101
    const-string v15, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 102
    .line 103
    if-eqz v6, :cond_a

    .line 104
    .line 105
    invoke-static {v6}, Ls4/l;->a(Lr4/t;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-eqz v6, :cond_d

    .line 110
    .line 111
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    if-eqz v16, :cond_d

    .line 120
    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v16

    .line 125
    move-object/from16 v9, v16

    .line 126
    .line 127
    check-cast v9, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 128
    .line 129
    iget-object v10, v9, Lcom/google/android/gms/cast/framework/media/NotificationAction;->a:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v16

    .line 135
    if-nez v16, :cond_9

    .line 136
    .line 137
    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v16

    .line 141
    if-nez v16, :cond_9

    .line 142
    .line 143
    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    if-eqz v16, :cond_8

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    invoke-virtual {v0, v5, v10, v9}, Ls4/k;->f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    :goto_4
    invoke-virtual {v0, v10, v1, v4}, Ls4/k;->d(Ljava/lang/String;ILandroid/os/Bundle;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v9

    .line 158
    or-long/2addr v9, v11

    .line 159
    move-wide v11, v9

    .line 160
    goto :goto_3

    .line 161
    :cond_a
    if-eqz v8, :cond_d

    .line 162
    .line 163
    iget-object v6, v8, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->a:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_d

    .line 174
    .line 175
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    check-cast v9, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-nez v10, :cond_c

    .line 186
    .line 187
    invoke-static {v9, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-nez v10, :cond_c

    .line 192
    .line 193
    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_b

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_b
    invoke-virtual {v0, v5, v9, v7}, Ls4/k;->f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_c
    :goto_6
    invoke-virtual {v0, v9, v1, v4}, Ls4/k;->d(Ljava/lang/String;ILandroid/os/Bundle;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v9

    .line 208
    or-long/2addr v9, v11

    .line 209
    move-wide v11, v9

    .line 210
    goto :goto_5

    .line 211
    :cond_d
    invoke-virtual {v5, v11, v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    goto :goto_8

    .line 220
    :cond_e
    :goto_7
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    :goto_8
    invoke-virtual {v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x1

    .line 228
    const-string v6, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 229
    .line 230
    if-eqz v8, :cond_f

    .line 231
    .line 232
    iget-boolean v9, v8, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:Z

    .line 233
    .line 234
    if-eqz v9, :cond_f

    .line 235
    .line 236
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    .line 238
    .line 239
    :cond_f
    const-string v9, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 240
    .line 241
    if-eqz v8, :cond_10

    .line 242
    .line 243
    iget-boolean v8, v8, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:Z

    .line 244
    .line 245
    if-eqz v8, :cond_10

    .line 246
    .line 247
    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    :cond_10
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_11

    .line 255
    .line 256
    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_12

    .line 261
    .line 262
    :cond_11
    invoke-virtual {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 263
    .line 264
    .line 265
    :cond_12
    if-eqz v1, :cond_1d

    .line 266
    .line 267
    iget-object v1, v0, Ls4/k;->n:Lr4/f;

    .line 268
    .line 269
    const/4 v4, 0x0

    .line 270
    if-eqz v1, :cond_14

    .line 271
    .line 272
    iget-object v1, v0, Ls4/k;->f:Landroid/content/ComponentName;

    .line 273
    .line 274
    if-nez v1, :cond_13

    .line 275
    .line 276
    move-object v1, v7

    .line 277
    goto :goto_9

    .line 278
    :cond_13
    new-instance v6, Landroid/content/Intent;

    .line 279
    .line 280
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    sget v1, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 287
    .line 288
    const/high16 v8, 0x8000000

    .line 289
    .line 290
    or-int/2addr v1, v8

    .line 291
    iget-object v8, v0, Ls4/k;->a:Landroid/content/Context;

    .line 292
    .line 293
    invoke-static {v8, v4, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :goto_9
    if-eqz v1, :cond_14

    .line 298
    .line 299
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 300
    .line 301
    .line 302
    :cond_14
    iget-object v1, v0, Ls4/k;->n:Lr4/f;

    .line 303
    .line 304
    if-eqz v1, :cond_1c

    .line 305
    .line 306
    iget-object v3, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 307
    .line 308
    if-eqz v3, :cond_1c

    .line 309
    .line 310
    if-eqz v2, :cond_1c

    .line 311
    .line 312
    iget-object v6, v2, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 313
    .line 314
    if-eqz v6, :cond_1c

    .line 315
    .line 316
    invoke-virtual {v1}, Lr4/f;->k()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_15

    .line 321
    .line 322
    const-wide/16 v9, 0x0

    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_15
    iget-wide v9, v2, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 326
    .line 327
    :goto_a
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 328
    .line 329
    invoke-static {v5, v1}, Lcom/google/android/gms/cast/MediaMetadata;->j(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v6, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 333
    .line 334
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string v8, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 339
    .line 340
    invoke-static {v5, v8}, Lcom/google/android/gms/cast/MediaMetadata;->j(ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iget-object v5, v0, Ls4/k;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 348
    .line 349
    if-nez v5, :cond_16

    .line 350
    .line 351
    move-object v5, v7

    .line 352
    goto :goto_b

    .line 353
    :cond_16
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    :goto_b
    if-nez v5, :cond_17

    .line 362
    .line 363
    new-instance v5, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 364
    .line 365
    invoke-direct {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 366
    .line 367
    .line 368
    goto :goto_c

    .line 369
    :cond_17
    new-instance v8, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 370
    .line 371
    invoke-direct {v8, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 372
    .line 373
    .line 374
    move-object v5, v8

    .line 375
    :goto_c
    const-string v8, "android.media.metadata.DURATION"

    .line 376
    .line 377
    invoke-virtual {v5, v8, v9, v10}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    if-eqz v1, :cond_18

    .line 382
    .line 383
    const-string v8, "android.media.metadata.TITLE"

    .line 384
    .line 385
    invoke-virtual {v5, v8, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 386
    .line 387
    .line 388
    const-string v8, "android.media.metadata.DISPLAY_TITLE"

    .line 389
    .line 390
    invoke-virtual {v5, v8, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 391
    .line 392
    .line 393
    :cond_18
    if-eqz v2, :cond_19

    .line 394
    .line 395
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 396
    .line 397
    invoke-virtual {v5, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 398
    .line 399
    .line 400
    :cond_19
    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v6}, Ls4/k;->e(Lcom/google/android/gms/cast/MediaMetadata;)Landroid/net/Uri;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    if-eqz v1, :cond_1a

    .line 412
    .line 413
    iget-object v2, v0, Ls4/k;->h:Lc2/b;

    .line 414
    .line 415
    invoke-virtual {v2, v1}, Lc2/b;->i(Landroid/net/Uri;)V

    .line 416
    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_1a
    invoke-virtual {v0, v7, v4}, Ls4/k;->b(Landroid/graphics/Bitmap;I)V

    .line 420
    .line 421
    .line 422
    :goto_d
    invoke-virtual {v0, v6}, Ls4/k;->e(Lcom/google/android/gms/cast/MediaMetadata;)Landroid/net/Uri;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    if-eqz v1, :cond_1b

    .line 427
    .line 428
    iget-object v2, v0, Ls4/k;->i:Lc2/b;

    .line 429
    .line 430
    invoke-virtual {v2, v1}, Lc2/b;->i(Landroid/net/Uri;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_1b
    const/4 v1, 0x3

    .line 435
    invoke-virtual {v0, v7, v1}, Ls4/k;->b(Landroid/graphics/Bitmap;I)V

    .line 436
    .line 437
    .line 438
    :cond_1c
    :goto_e
    return-void

    .line 439
    :cond_1d
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 440
    .line 441
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 449
    .line 450
    .line 451
    return-void
.end method
