.class public final Lq1/h;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final synthetic F:I


# instance fields
.field public A:Lq1/x;

.field public B:I

.field public C:Lq1/e;

.field public D:Landroid/support/v4/media/session/MediaSessionCompat;

.field public final E:Lq1/a;

.field public final a:Lq1/b;

.field public final b:Ljava/util/HashMap;

.field public final c:Lq1/n1;

.field public d:Lq1/s0;

.field public e:Lq1/c0;

.field public f:Lq1/q0;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Lq1/o1;

.field public final o:Lq1/f;

.field public final p:Z

.field public final q:Z

.field public r:Lq1/p;

.field public final s:Lq1/e1;

.field public final t:Lq1/v0;

.field public u:Lq1/x0;

.field public v:Lq1/s0;

.field public w:Lq1/s0;

.field public x:Lq1/s0;

.field public y:Lq1/b0;

.field public z:Lq1/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "AxMediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lq1/b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lq1/b;-><init>(Lq1/h;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lq1/h;->a:Lq1/b;

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lq1/h;->b:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lq1/h;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lq1/h;->i:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lq1/h;->j:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lq1/h;->k:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lq1/h;->l:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lq1/h;->m:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v1, Lq1/o1;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput v0, v1, Lq1/o1;->c:I

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    iput v2, v1, Lq1/o1;->d:I

    .line 70
    .line 71
    iput-object v1, p0, Lq1/h;->n:Lq1/o1;

    .line 72
    .line 73
    new-instance v1, Lq1/f;

    .line 74
    .line 75
    invoke-direct {v1, v0, p0}, Lq1/f;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lq1/h;->o:Lq1/f;

    .line 79
    .line 80
    new-instance v1, Lq1/a;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lq1/a;-><init>(Lq1/h;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lq1/h;->E:Lq1/a;

    .line 86
    .line 87
    iput-object p1, p0, Lq1/h;->g:Landroid/content/Context;

    .line 88
    .line 89
    const-string v1, "activity"

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/app/ActivityManager;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput-boolean v1, p0, Lq1/h;->p:Z

    .line 102
    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 v2, 0x1e

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    if-lt v1, v2, :cond_0

    .line 109
    .line 110
    sget v4, Landroidx/mediarouter/media/MediaTransferReceiver;->a:I

    .line 111
    .line 112
    new-instance v4, Landroid/content/Intent;

    .line 113
    .line 114
    const-class v5, Landroidx/mediarouter/media/MediaTransferReceiver;

    .line 115
    .line 116
    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-lez v4, :cond_0

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    goto :goto_0

    .line 142
    :cond_0
    const/4 v4, 0x0

    .line 143
    :goto_0
    iput-boolean v4, p0, Lq1/h;->q:Z

    .line 144
    .line 145
    sget v5, Lq1/s1;->a:I

    .line 146
    .line 147
    new-instance v5, Landroid/content/Intent;

    .line 148
    .line 149
    const-class v6, Lq1/s1;

    .line 150
    .line 151
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6, v5, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    if-lt v1, v2, :cond_1

    .line 174
    .line 175
    if-eqz v4, :cond_1

    .line 176
    .line 177
    new-instance v2, Lq1/p;

    .line 178
    .line 179
    new-instance v4, Lq1/a;

    .line 180
    .line 181
    invoke-direct {v4, p0}, Lq1/a;-><init>(Lq1/h;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, p1, v4}, Lq1/p;-><init>(Landroid/content/Context;Lq1/a;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_1
    move-object v2, v0

    .line 189
    :goto_1
    iput-object v2, p0, Lq1/h;->r:Lq1/p;

    .line 190
    .line 191
    const/16 v2, 0x18

    .line 192
    .line 193
    if-lt v1, v2, :cond_2

    .line 194
    .line 195
    new-instance v1, Lq1/a1;

    .line 196
    .line 197
    invoke-direct {v1, p1, p0}, Lq1/e1;-><init>(Landroid/content/Context;Lq1/h;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_2
    new-instance v1, Lq1/e1;

    .line 202
    .line 203
    invoke-direct {v1, p1, p0}, Lq1/e1;-><init>(Landroid/content/Context;Lq1/h;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    iput-object v1, p0, Lq1/h;->s:Lq1/e1;

    .line 207
    .line 208
    new-instance v2, Lq1/v0;

    .line 209
    .line 210
    new-instance v4, La/b;

    .line 211
    .line 212
    const/16 v5, 0xd

    .line 213
    .line 214
    invoke-direct {v4, v5, p0}, La/b;-><init>(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-direct {v2, v4}, Lq1/v0;-><init>(Ljava/lang/Runnable;)V

    .line 218
    .line 219
    .line 220
    iput-object v2, p0, Lq1/h;->t:Lq1/v0;

    .line 221
    .line 222
    invoke-virtual {p0, v1, v3}, Lq1/h;->a(Lq1/e0;Z)V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lq1/h;->r:Lq1/p;

    .line 226
    .line 227
    if-eqz v1, :cond_3

    .line 228
    .line 229
    invoke-virtual {p0, v1, v3}, Lq1/h;->a(Lq1/e0;Z)V

    .line 230
    .line 231
    .line 232
    :cond_3
    new-instance v1, Lq1/n1;

    .line 233
    .line 234
    invoke-direct {v1, p1, p0}, Lq1/n1;-><init>(Landroid/content/Context;Lq1/h;)V

    .line 235
    .line 236
    .line 237
    iput-object v1, p0, Lq1/h;->c:Lq1/n1;

    .line 238
    .line 239
    iget-boolean p1, v1, Lq1/n1;->g:Z

    .line 240
    .line 241
    if-nez p1, :cond_4

    .line 242
    .line 243
    iput-boolean v3, v1, Lq1/n1;->g:Z

    .line 244
    .line 245
    new-instance p1, Landroid/content/IntentFilter;

    .line 246
    .line 247
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 251
    .line 252
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 256
    .line 257
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 266
    .line 267
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v2, "package"

    .line 276
    .line 277
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v2, v1, Lq1/n1;->c:Landroid/os/Handler;

    .line 281
    .line 282
    iget-object v3, v1, Lq1/n1;->a:Landroid/content/Context;

    .line 283
    .line 284
    iget-object v4, v1, Lq1/n1;->h:Landroidx/appcompat/app/b0;

    .line 285
    .line 286
    invoke-virtual {v3, v4, p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    iget-object p1, v1, Lq1/n1;->i:La/f;

    .line 290
    .line 291
    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    .line 293
    .line 294
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lq1/e0;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lq1/h;->d(Lq1/e0;)Lq1/r0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lq1/r0;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lq1/r0;-><init>(Lq1/e0;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lq1/h;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lq1/h;->a:Lq1/b;

    .line 18
    .line 19
    const/16 v1, 0x201

    .line 20
    .line 21
    invoke-virtual {p2, v1, v0}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p1, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Lq1/h;->n(Lq1/r0;Landroidx/appcompat/app/r0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lq1/u0;->b()V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lq1/h;->o:Lq1/f;

    .line 33
    .line 34
    iput-object p2, p1, Lq1/e0;->d:Lu7/d;

    .line 35
    .line 36
    iget-object p2, p0, Lq1/h;->z:Lq1/x;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lq1/e0;->g(Lq1/x;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final b(Lq1/r0;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p1, Lq1/r0;->d:Lj7/c;

    .line 2
    .line 3
    iget-object v0, v0, Lj7/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean p1, p1, Lq1/r0;->c:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object v1, p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ":"

    .line 18
    .line 19
    invoke-static {v0, v1, p2}, Lea/q;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    iget-object v2, p0, Lq1/h;->k:Ljava/util/HashMap;

    .line 24
    .line 25
    if-nez p1, :cond_7

    .line 26
    .line 27
    iget-object p1, p0, Lq1/h;->i:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_1
    const/4 v6, -0x1

    .line 36
    if-ge v5, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lq1/s0;

    .line 43
    .line 44
    iget-object v7, v7, Lq1/s0;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v5, -0x1

    .line 57
    :goto_2
    if-gez v5, :cond_3

    .line 58
    .line 59
    goto :goto_6

    .line 60
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "Either "

    .line 63
    .line 64
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, " isn\'t unique in "

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v5, " or we\'re trying to assign a unique ID for an already added route"

    .line 79
    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v5, "AxMediaRouter"

    .line 88
    .line 89
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x2

    .line 93
    :goto_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v7, "_"

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    const/4 v8, 0x0

    .line 120
    :goto_4
    if-ge v8, v7, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    check-cast v9, Lq1/s0;

    .line 127
    .line 128
    iget-object v9, v9, Lq1/s0;->c:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_4

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    const/4 v8, -0x1

    .line 141
    :goto_5
    if-gez v8, :cond_6

    .line 142
    .line 143
    new-instance p1, Lm0/b;

    .line 144
    .line 145
    invoke-direct {p1, v0, p2}, Lm0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    return-object v5

    .line 152
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    :goto_6
    new-instance p1, Lm0/b;

    .line 156
    .line 157
    invoke-direct {p1, v0, p2}, Lm0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v1
.end method

.method public final c()Lq1/s0;
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/h;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lq1/s0;

    .line 18
    .line 19
    iget-object v2, p0, Lq1/h;->v:Lq1/s0;

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lq1/s0;->c()Lq1/e0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lq1/h;->s:Lq1/e1;

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const-string v2, "android.media.intent.category.LIVE_AUDIO"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lq1/s0;->m(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-string v2, "android.media.intent.category.LIVE_VIDEO"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lq1/s0;->m(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lq1/s0;->f()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    iget-object v0, p0, Lq1/h;->v:Lq1/s0;

    .line 55
    .line 56
    return-object v0
.end method

.method public final d(Lq1/e0;)Lq1/r0;
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/h;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lq1/r0;

    .line 18
    .line 19
    iget-object v2, v1, Lq1/r0;->a:Lq1/e0;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/h;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {v0}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    throw v0
.end method

.method public final f(Lq1/s0;)Lq1/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq1/h;->e:Lq1/c0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    instance-of v0, p1, Lq1/p0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lq1/p0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lq1/p0;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lq1/h;->e()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_1
    iget-object v0, p0, Lq1/h;->b:Ljava/util/HashMap;

    .line 29
    .line 30
    iget-object p1, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lq1/c0;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    iget-object v0, p0, Lq1/h;->j:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    invoke-static {v0}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    throw p1
.end method

.method public final g()Lq1/s0;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq1/h;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lq1/h;->u:Lq1/x0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Lq1/x0;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq1/s0;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 11
    .line 12
    iget-object v0, v0, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lq1/s0;

    .line 38
    .line 39
    iget-object v3, v3, Lq1/s0;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lq1/h;->b:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lq1/c0;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-virtual {v4, v5}, Lq1/c0;->i(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lq1/c0;->e()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lq1/s0;

    .line 109
    .line 110
    iget-object v3, v1, Lq1/s0;->c:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {v1}, Lq1/s0;->c()Lq1/e0;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lq1/h;->d:Lq1/s0;

    .line 123
    .line 124
    iget-object v4, v4, Lq1/s0;->b:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v5, v1, Lq1/s0;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v3, v5, v4}, Lq1/e0;->c(Ljava/lang/String;Ljava/lang/String;)Lq1/c0;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3}, Lq1/c0;->f()V

    .line 135
    .line 136
    .line 137
    iget-object v1, v1, Lq1/s0;->c:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    return-void
.end method

.method public final j(Lq1/s0;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/h;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AxMediaRouter"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p3, "Ignoring attempt to select removed route: "

    .line 14
    .line 15
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p1, Lq1/s0;->g:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "Ignoring attempt to select disabled route: "

    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1e

    .line 54
    .line 55
    if-lt v0, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lq1/s0;->c()Lq1/e0;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lq1/h;->r:Lq1/p;

    .line 62
    .line 63
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 66
    .line 67
    if-eq v0, p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p1, Lq1/s0;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lq1/p;->h(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-nez p2, :cond_2

    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p3, "transferTo: Specified route not found. routeId="

    .line 80
    .line 81
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "MR2Provider"

    .line 92
    .line 93
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object p1, v1, Lq1/p;->i:Landroid/media/MediaRouter2;

    .line 98
    .line 99
    invoke-static {p1, p2}, Ln0/p1;->k(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lq1/h;->k(Lq1/s0;IZ)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method

.method public final k(Lq1/s0;IZ)V
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move-object v2, p1

    .line 3
    move/from16 v5, p3

    .line 4
    .line 5
    iget-object v0, v8, Lq1/h;->d:Lq1/s0;

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v8, Lq1/h;->v:Lq1/s0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v4, v8, Lq1/h;->w:Lq1/s0;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v7, "AxMediaRouter"

    .line 23
    .line 24
    const/4 v9, 0x3

    .line 25
    iget-object v10, v8, Lq1/h;->g:Landroid/content/Context;

    .line 26
    .line 27
    if-eqz v4, :cond_6

    .line 28
    .line 29
    if-eqz v0, :cond_6

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v11, "- Stracktrace: ["

    .line 42
    .line 43
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v11, 0x3

    .line 47
    :cond_2
    :goto_1
    array-length v12, v0

    .line 48
    if-ge v11, v12, :cond_3

    .line 49
    .line 50
    aget-object v12, v0, v11

    .line 51
    .line 52
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v13, "."

    .line 60
    .line 61
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v13, ":"

    .line 72
    .line 73
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v11, v11, 0x1

    .line 84
    .line 85
    array-length v12, v0

    .line 86
    if-ge v11, v12, :cond_2

    .line 87
    .line 88
    const-string v12, ", "

    .line 89
    .line 90
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v0, "]"

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v0, v8, Lq1/h;->d:Lq1/s0;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    .line 105
    iget-object v11, v0, Lq1/s0;->d:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {}, Lq1/u0;->b()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    iget-object v12, v12, Lq1/h;->w:Lq1/s0;

    .line 115
    .line 116
    if-ne v12, v0, :cond_4

    .line 117
    .line 118
    const/4 v0, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const/4 v0, 0x0

    .line 121
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v11, "(BT="

    .line 130
    .line 131
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ", syncMediaRoute1Provider="

    .line 138
    .line 139
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ")"

    .line 146
    .line 147
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_3

    .line 155
    :cond_5
    move-object v0, v6

    .line 156
    :goto_3
    const-string v11, "Changing selection("

    .line 157
    .line 158
    const-string v12, ") to default while BT is available: pkgName="

    .line 159
    .line 160
    invoke-static {v11, v0, v12}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_6
    iget-object v0, v8, Lq1/h;->x:Lq1/s0;

    .line 182
    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    iput-object v6, v8, Lq1/h;->x:Lq1/s0;

    .line 186
    .line 187
    iget-object v0, v8, Lq1/h;->y:Lq1/b0;

    .line 188
    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    invoke-virtual {v0, v9}, Lq1/c0;->i(I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, v8, Lq1/h;->y:Lq1/b0;

    .line 195
    .line 196
    invoke-virtual {v0}, Lq1/c0;->e()V

    .line 197
    .line 198
    .line 199
    iput-object v6, v8, Lq1/h;->y:Lq1/b0;

    .line 200
    .line 201
    :cond_7
    invoke-virtual {p0}, Lq1/h;->h()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    const-string v4, "clientPackageName"

    .line 206
    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    iget-object v0, v2, Lq1/s0;->a:Lq1/r0;

    .line 210
    .line 211
    iget-object v0, v0, Lq1/r0;->e:Landroidx/appcompat/app/r0;

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    iget-boolean v0, v0, Landroidx/appcompat/app/r0;->b:Z

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    invoke-virtual {p1}, Lq1/s0;->c()Lq1/e0;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    new-instance v9, Landroid/os/Bundle;

    .line 224
    .line 225
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-virtual {v9, v4, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v11, Lq1/d0;

    .line 236
    .line 237
    invoke-direct {v11, v9}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 238
    .line 239
    .line 240
    iget-object v9, v2, Lq1/s0;->b:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v9, v11}, Lq1/e0;->a(Ljava/lang/String;Lq1/d0;)Lq1/b0;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    invoke-static {v10}, Lu7/d;->m(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-object v3, v8, Lq1/h;->E:Lq1/a;

    .line 253
    .line 254
    invoke-virtual {v0, v1, v3}, Lq1/b0;->q(Ljava/util/concurrent/Executor;Lq1/a0;)V

    .line 255
    .line 256
    .line 257
    iput-object v2, v8, Lq1/h;->x:Lq1/s0;

    .line 258
    .line 259
    iput-object v0, v8, Lq1/h;->y:Lq1/b0;

    .line 260
    .line 261
    invoke-virtual {v0}, Lq1/c0;->f()V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v9, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    .line 268
    .line 269
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :cond_9
    invoke-virtual {p1}, Lq1/s0;->c()Lq1/e0;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    new-instance v7, Landroid/os/Bundle;

    .line 287
    .line 288
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-virtual {v7, v4, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v4, Lq1/d0;

    .line 299
    .line 300
    invoke-direct {v4, v7}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 301
    .line 302
    .line 303
    iget-object v7, v2, Lq1/s0;->b:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, v7, v4}, Lq1/e0;->d(Ljava/lang/String;Lq1/d0;)Lq1/c0;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    if-eqz v4, :cond_a

    .line 310
    .line 311
    invoke-virtual {v4}, Lq1/c0;->f()V

    .line 312
    .line 313
    .line 314
    :cond_a
    iget-object v0, v8, Lq1/h;->d:Lq1/s0;

    .line 315
    .line 316
    if-nez v0, :cond_b

    .line 317
    .line 318
    iput-object v2, v8, Lq1/h;->d:Lq1/s0;

    .line 319
    .line 320
    iput-object v4, v8, Lq1/h;->e:Lq1/c0;

    .line 321
    .line 322
    iget-object v0, v8, Lq1/h;->a:Lq1/b;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    new-instance v1, Lq1/g;

    .line 328
    .line 329
    invoke-direct {v1, v6, p1, v5}, Lq1/g;-><init>(Lq1/s0;Lq1/s0;Z)V

    .line 330
    .line 331
    .line 332
    const/16 v2, 0x106

    .line 333
    .line 334
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    move/from16 v7, p2

    .line 339
    .line 340
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_b
    move/from16 v7, p2

    .line 347
    .line 348
    iget-object v0, v8, Lq1/h;->f:Lq1/q0;

    .line 349
    .line 350
    if-eqz v0, :cond_e

    .line 351
    .line 352
    iget-boolean v9, v0, Lq1/q0;->i:Z

    .line 353
    .line 354
    if-nez v9, :cond_d

    .line 355
    .line 356
    iget-boolean v9, v0, Lq1/q0;->j:Z

    .line 357
    .line 358
    if-eqz v9, :cond_c

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_c
    iput-boolean v3, v0, Lq1/q0;->j:Z

    .line 362
    .line 363
    iget-object v0, v0, Lq1/q0;->a:Lq1/c0;

    .line 364
    .line 365
    if-eqz v0, :cond_d

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Lq1/c0;->i(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Lq1/c0;->e()V

    .line 371
    .line 372
    .line 373
    :cond_d
    :goto_4
    iput-object v6, v8, Lq1/h;->f:Lq1/q0;

    .line 374
    .line 375
    :cond_e
    new-instance v9, Lq1/q0;

    .line 376
    .line 377
    const/4 v6, 0x0

    .line 378
    const/4 v10, 0x0

    .line 379
    move-object v0, v9

    .line 380
    move-object v1, p0

    .line 381
    move-object v2, p1

    .line 382
    move-object v3, v4

    .line 383
    move/from16 v4, p2

    .line 384
    .line 385
    move/from16 v5, p3

    .line 386
    .line 387
    move-object v7, v10

    .line 388
    invoke-direct/range {v0 .. v7}, Lq1/q0;-><init>(Lq1/h;Lq1/s0;Lq1/c0;IZLq1/s0;Ljava/util/ArrayList;)V

    .line 389
    .line 390
    .line 391
    iput-object v9, v8, Lq1/h;->f:Lq1/q0;

    .line 392
    .line 393
    invoke-virtual {v9}, Lq1/q0;->a()V

    .line 394
    .line 395
    .line 396
    :goto_5
    return-void
.end method

.method public final l()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lj3/c;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lq1/h;->t:Lq1/v0;

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    iput-wide v3, v2, Lq1/v0;->c:J

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iput-boolean v5, v2, Lq1/v0;->e:Z

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    iput-wide v6, v2, Lq1/v0;->d:J

    .line 22
    .line 23
    iget-object v6, v2, Lq1/v0;->a:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v2, v2, Lq1/v0;->b:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lq1/h;->h:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    :goto_0
    add-int/lit8 v6, v6, -0x1

    .line 39
    .line 40
    iget-boolean v9, v0, Lq1/h;->p:Z

    .line 41
    .line 42
    if-ltz v6, :cond_7

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Lq1/u0;

    .line 55
    .line 56
    if-nez v10, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_0
    iget-object v10, v10, Lq1/u0;->b:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    add-int/2addr v7, v11

    .line 69
    const/4 v12, 0x0

    .line 70
    :goto_1
    if-ge v12, v11, :cond_6

    .line 71
    .line 72
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    check-cast v13, Lq1/n0;

    .line 77
    .line 78
    iget-object v14, v13, Lq1/n0;->c:Lq1/l0;

    .line 79
    .line 80
    if-eqz v14, :cond_5

    .line 81
    .line 82
    invoke-virtual {v14}, Lq1/l0;->c()Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    invoke-virtual {v1, v14}, Lj3/c;->a(Ljava/util/ArrayList;)V

    .line 87
    .line 88
    .line 89
    iget v14, v13, Lq1/n0;->d:I

    .line 90
    .line 91
    const/4 v15, 0x1

    .line 92
    and-int/2addr v14, v15

    .line 93
    if-eqz v14, :cond_1

    .line 94
    .line 95
    const/4 v14, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    const/4 v14, 0x0

    .line 98
    :goto_2
    iget-object v5, v0, Lq1/h;->t:Lq1/v0;

    .line 99
    .line 100
    iget-wide v3, v13, Lq1/n0;->e:J

    .line 101
    .line 102
    invoke-virtual {v5, v3, v4, v14}, Lq1/v0;->a(JZ)V

    .line 103
    .line 104
    .line 105
    if-eqz v14, :cond_2

    .line 106
    .line 107
    const/4 v8, 0x1

    .line 108
    :cond_2
    iget v3, v13, Lq1/n0;->d:I

    .line 109
    .line 110
    and-int/lit8 v4, v3, 0x4

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    if-nez v9, :cond_3

    .line 115
    .line 116
    const/4 v8, 0x1

    .line 117
    :cond_3
    and-int/lit8 v3, v3, 0x8

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    const/4 v8, 0x1

    .line 122
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 123
    .line 124
    const-wide/16 v3, 0x0

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string v2, "selector must not be null"

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_6
    :goto_3
    const-wide/16 v3, 0x0

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    goto :goto_0

    .line 140
    :cond_7
    iget-object v2, v0, Lq1/h;->t:Lq1/v0;

    .line 141
    .line 142
    iget-boolean v3, v2, Lq1/v0;->e:Z

    .line 143
    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    iget-wide v3, v2, Lq1/v0;->c:J

    .line 147
    .line 148
    const-wide/16 v5, 0x0

    .line 149
    .line 150
    cmp-long v10, v3, v5

    .line 151
    .line 152
    if-lez v10, :cond_8

    .line 153
    .line 154
    iget-object v5, v2, Lq1/v0;->a:Landroid/os/Handler;

    .line 155
    .line 156
    iget-object v6, v2, Lq1/v0;->b:Ljava/lang/Runnable;

    .line 157
    .line 158
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    .line 160
    .line 161
    :cond_8
    iget-boolean v2, v2, Lq1/v0;->e:Z

    .line 162
    .line 163
    iput v7, v0, Lq1/h;->B:I

    .line 164
    .line 165
    if-eqz v8, :cond_9

    .line 166
    .line 167
    invoke-virtual {v1}, Lj3/c;->b()Lq1/l0;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    sget-object v3, Lq1/l0;->c:Lq1/l0;

    .line 173
    .line 174
    :goto_4
    invoke-virtual {v1}, Lj3/c;->b()Lq1/l0;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual/range {p0 .. p0}, Lq1/h;->h()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    const/4 v5, 0x0

    .line 183
    if-nez v4, :cond_a

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_a
    iget-object v4, v0, Lq1/h;->A:Lq1/x;

    .line 187
    .line 188
    if-eqz v4, :cond_b

    .line 189
    .line 190
    invoke-virtual {v4}, Lq1/x;->a()V

    .line 191
    .line 192
    .line 193
    iget-object v4, v4, Lq1/x;->b:Lq1/l0;

    .line 194
    .line 195
    invoke-virtual {v4, v1}, Lq1/l0;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_b

    .line 200
    .line 201
    iget-object v4, v0, Lq1/h;->A:Lq1/x;

    .line 202
    .line 203
    invoke-virtual {v4}, Lq1/x;->b()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-ne v4, v2, :cond_b

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_b
    invoke-virtual {v1}, Lq1/l0;->d()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_d

    .line 215
    .line 216
    if-nez v2, :cond_d

    .line 217
    .line 218
    iget-object v1, v0, Lq1/h;->A:Lq1/x;

    .line 219
    .line 220
    if-nez v1, :cond_c

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_c
    iput-object v5, v0, Lq1/h;->A:Lq1/x;

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_d
    new-instance v4, Lq1/x;

    .line 227
    .line 228
    invoke-direct {v4, v1, v2}, Lq1/x;-><init>(Lq1/l0;Z)V

    .line 229
    .line 230
    .line 231
    iput-object v4, v0, Lq1/h;->A:Lq1/x;

    .line 232
    .line 233
    :goto_5
    iget-object v1, v0, Lq1/h;->r:Lq1/p;

    .line 234
    .line 235
    iget-object v4, v0, Lq1/h;->A:Lq1/x;

    .line 236
    .line 237
    invoke-virtual {v1, v4}, Lq1/e0;->g(Lq1/x;)V

    .line 238
    .line 239
    .line 240
    :goto_6
    iget-object v1, v0, Lq1/h;->z:Lq1/x;

    .line 241
    .line 242
    if-eqz v1, :cond_e

    .line 243
    .line 244
    invoke-virtual {v1}, Lq1/x;->a()V

    .line 245
    .line 246
    .line 247
    iget-object v1, v1, Lq1/x;->b:Lq1/l0;

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Lq1/l0;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_e

    .line 254
    .line 255
    iget-object v1, v0, Lq1/h;->z:Lq1/x;

    .line 256
    .line 257
    invoke-virtual {v1}, Lq1/x;->b()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-ne v1, v2, :cond_e

    .line 262
    .line 263
    return-void

    .line 264
    :cond_e
    invoke-virtual {v3}, Lq1/l0;->d()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_10

    .line 269
    .line 270
    if-nez v2, :cond_10

    .line 271
    .line 272
    iget-object v1, v0, Lq1/h;->z:Lq1/x;

    .line 273
    .line 274
    if-nez v1, :cond_f

    .line 275
    .line 276
    return-void

    .line 277
    :cond_f
    iput-object v5, v0, Lq1/h;->z:Lq1/x;

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_10
    new-instance v1, Lq1/x;

    .line 281
    .line 282
    invoke-direct {v1, v3, v2}, Lq1/x;-><init>(Lq1/l0;Z)V

    .line 283
    .line 284
    .line 285
    iput-object v1, v0, Lq1/h;->z:Lq1/x;

    .line 286
    .line 287
    :goto_7
    if-eqz v8, :cond_11

    .line 288
    .line 289
    if-nez v2, :cond_11

    .line 290
    .line 291
    if-eqz v9, :cond_11

    .line 292
    .line 293
    const-string v1, "AxMediaRouter"

    .line 294
    .line 295
    const-string v2, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 296
    .line 297
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    :cond_11
    iget-object v1, v0, Lq1/h;->l:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_13

    .line 311
    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Lq1/r0;

    .line 317
    .line 318
    iget-object v2, v2, Lq1/r0;->a:Lq1/e0;

    .line 319
    .line 320
    iget-object v3, v0, Lq1/h;->r:Lq1/p;

    .line 321
    .line 322
    if-ne v2, v3, :cond_12

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_12
    iget-object v3, v0, Lq1/h;->z:Lq1/x;

    .line 326
    .line 327
    invoke-virtual {v2, v3}, Lq1/e0;->g(Lq1/x;)V

    .line 328
    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_13
    return-void
.end method

.method public final m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget v1, v0, Lq1/s0;->p:I

    .line 6
    .line 7
    iget-object v2, p0, Lq1/h;->n:Lq1/o1;

    .line 8
    .line 9
    iput v1, v2, Lq1/o1;->a:I

    .line 10
    .line 11
    iget v1, v0, Lq1/s0;->q:I

    .line 12
    .line 13
    iput v1, v2, Lq1/o1;->b:I

    .line 14
    .line 15
    invoke-virtual {v0}, Lq1/s0;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lq1/u0;->g()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v0, v0, Lq1/s0;->o:I

    .line 31
    .line 32
    :goto_0
    iput v0, v2, Lq1/o1;->c:I

    .line 33
    .line 34
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 35
    .line 36
    iget v0, v0, Lq1/s0;->m:I

    .line 37
    .line 38
    iput v0, v2, Lq1/o1;->d:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lq1/h;->h()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 48
    .line 49
    invoke-virtual {v0}, Lq1/s0;->c()Lq1/e0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v4, p0, Lq1/h;->r:Lq1/p;

    .line 54
    .line 55
    if-ne v0, v4, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lq1/h;->e:Lq1/c0;

    .line 58
    .line 59
    sget v4, Lq1/p;->s:I

    .line 60
    .line 61
    instance-of v4, v0, Lq1/l;

    .line 62
    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v0, Lq1/l;

    .line 67
    .line 68
    iget-object v0, v0, Lq1/l;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v0}, Ln0/p1;->h(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    iput-object v1, v2, Lq1/o1;->e:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iput-object v1, v2, Lq1/o1;->e:Ljava/lang/String;

    .line 81
    .line 82
    :goto_2
    iget-object v0, p0, Lq1/h;->m:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_9

    .line 93
    .line 94
    iget-object v0, p0, Lq1/h;->C:Lq1/e;

    .line 95
    .line 96
    if-eqz v0, :cond_b

    .line 97
    .line 98
    iget-object v1, p0, Lq1/h;->d:Lq1/s0;

    .line 99
    .line 100
    iget-object v4, p0, Lq1/h;->v:Lq1/s0;

    .line 101
    .line 102
    if-eqz v4, :cond_8

    .line 103
    .line 104
    if-eq v1, v4, :cond_7

    .line 105
    .line 106
    iget-object v4, p0, Lq1/h;->w:Lq1/s0;

    .line 107
    .line 108
    if-ne v1, v4, :cond_4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    iget v1, v2, Lq1/o1;->c:I

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    if-ne v1, v4, :cond_5

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    const/4 v6, 0x2

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    const/4 v6, 0x0

    .line 120
    :goto_3
    iget v7, v2, Lq1/o1;->b:I

    .line 121
    .line 122
    iget v8, v2, Lq1/o1;->a:I

    .line 123
    .line 124
    iget-object v9, v2, Lq1/o1;->e:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v1, v0, Lq1/e;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 127
    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    iget-object v2, v0, Lq1/e;->b:Lq1/d;

    .line 131
    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    if-nez v6, :cond_6

    .line 135
    .line 136
    if-nez v7, :cond_6

    .line 137
    .line 138
    iput v8, v2, Lm1/x;->d:I

    .line 139
    .line 140
    invoke-virtual {v2}, Lm1/x;->a()Landroid/media/VolumeProvider;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0, v8}, Lm1/v;->a(Landroid/media/VolumeProvider;I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v2, Lm1/x;->e:Lm1/w;

    .line 148
    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lm1/w;->onVolumeChanged(Lm1/x;)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    new-instance v2, Lq1/d;

    .line 156
    .line 157
    move-object v4, v2

    .line 158
    move-object v5, v0

    .line 159
    invoke-direct/range {v4 .. v9}, Lq1/d;-><init>(Lq1/e;IIILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object v2, v0, Lq1/e;->b:Lq1/d;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Lm1/x;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lq1/e;->a()V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_9
    invoke-static {v0}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    throw v0

    .line 185
    :cond_a
    iget-object v0, p0, Lq1/h;->C:Lq1/e;

    .line 186
    .line 187
    if-eqz v0, :cond_b

    .line 188
    .line 189
    invoke-virtual {v0}, Lq1/e;->a()V

    .line 190
    .line 191
    .line 192
    :cond_b
    :goto_5
    return-void
.end method

.method public final n(Lq1/r0;Landroidx/appcompat/app/r0;)V
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
    iget-object v3, v1, Lq1/r0;->e:Landroidx/appcompat/app/r0;

    .line 8
    .line 9
    if-eq v3, v2, :cond_14

    .line 10
    .line 11
    iput-object v2, v1, Lq1/r0;->e:Landroidx/appcompat/app/r0;

    .line 12
    .line 13
    iget-object v3, v0, Lq1/h;->i:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v4, v1, Lq1/r0;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v7, "AxMediaRouter"

    .line 18
    .line 19
    iget-object v8, v0, Lq1/h;->a:Lq1/b;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v9, v2, Landroidx/appcompat/app/r0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v9, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    const/4 v11, 0x0

    .line 32
    :goto_0
    if-ge v11, v10, :cond_3

    .line 33
    .line 34
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Lq1/w;

    .line 39
    .line 40
    if-eqz v12, :cond_1

    .line 41
    .line 42
    invoke-virtual {v12}, Lq1/w;->k()Z

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    if-nez v12, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    iget-object v10, v0, Lq1/h;->s:Lq1/e1;

    .line 53
    .line 54
    iget-object v10, v10, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 55
    .line 56
    if-ne v2, v10, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v12, 0x0

    .line 60
    goto/16 :goto_c

    .line 61
    .line 62
    :cond_3
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v10, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v13, :cond_d

    .line 83
    .line 84
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    check-cast v13, Lq1/w;

    .line 89
    .line 90
    if-eqz v13, :cond_4

    .line 91
    .line 92
    invoke-virtual {v13}, Lq1/w;->k()Z

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-nez v15, :cond_5

    .line 97
    .line 98
    :cond_4
    move-object/from16 v16, v9

    .line 99
    .line 100
    move/from16 v17, v12

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    goto/16 :goto_9

    .line 104
    .line 105
    :cond_5
    invoke-virtual {v13}, Lq1/w;->f()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const/4 v14, 0x0

    .line 114
    :goto_4
    if-ge v14, v6, :cond_7

    .line 115
    .line 116
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    move-object/from16 v5, v16

    .line 121
    .line 122
    check-cast v5, Lq1/s0;

    .line 123
    .line 124
    iget-object v5, v5, Lq1/s0;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_7
    const/4 v14, -0x1

    .line 137
    :goto_5
    if-gez v14, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0, v1, v15}, Lq1/h;->b(Lq1/r0;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    new-instance v6, Lq1/s0;

    .line 144
    .line 145
    const-string v14, "isSystemRoute"

    .line 146
    .line 147
    move-object/from16 v16, v9

    .line 148
    .line 149
    iget-object v9, v13, Lq1/w;->a:Landroid/os/Bundle;

    .line 150
    .line 151
    move/from16 v17, v12

    .line 152
    .line 153
    const/4 v12, 0x0

    .line 154
    invoke-virtual {v9, v14, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    invoke-direct {v6, v1, v15, v5, v9}, Lq1/s0;-><init>(Lq1/r0;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v5, v11, 0x1

    .line 162
    .line 163
    invoke-virtual {v4, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-nez v9, :cond_8

    .line 178
    .line 179
    new-instance v9, Lm0/b;

    .line 180
    .line 181
    invoke-direct {v9, v6, v13}, Lm0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_8
    invoke-virtual {v6, v13}, Lq1/s0;->i(Lq1/w;)I

    .line 189
    .line 190
    .line 191
    const/16 v9, 0x101

    .line 192
    .line 193
    invoke-virtual {v8, v9, v6}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_6
    move v11, v5

    .line 197
    goto :goto_8

    .line 198
    :cond_9
    move-object/from16 v16, v9

    .line 199
    .line 200
    move/from16 v17, v12

    .line 201
    .line 202
    const/4 v12, 0x0

    .line 203
    if-ge v14, v11, :cond_a

    .line 204
    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v6, "Ignoring route descriptor with duplicate id: "

    .line 208
    .line 209
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_a
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Lq1/s0;

    .line 228
    .line 229
    add-int/lit8 v6, v11, 0x1

    .line 230
    .line 231
    invoke-static {v4, v14, v11}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-nez v9, :cond_b

    .line 243
    .line 244
    new-instance v9, Lm0/b;

    .line 245
    .line 246
    invoke-direct {v9, v5, v13}, Lm0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_b
    invoke-virtual {v0, v5, v13}, Lq1/h;->o(Lq1/s0;Lq1/w;)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_c

    .line 258
    .line 259
    iget-object v9, v0, Lq1/h;->d:Lq1/s0;

    .line 260
    .line 261
    if-ne v5, v9, :cond_c

    .line 262
    .line 263
    move v11, v6

    .line 264
    const/16 v17, 0x1

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_c
    :goto_7
    move v11, v6

    .line 268
    :goto_8
    move-object/from16 v9, v16

    .line 269
    .line 270
    move/from16 v12, v17

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v6, "Ignoring invalid route descriptor: "

    .line 277
    .line 278
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_d
    move/from16 v17, v12

    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-eqz v5, :cond_e

    .line 303
    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, Lm0/b;

    .line 309
    .line 310
    iget-object v6, v5, Lm0/b;->a:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v6, Lq1/s0;

    .line 313
    .line 314
    iget-object v5, v5, Lm0/b;->b:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v5, Lq1/w;

    .line 317
    .line 318
    invoke-virtual {v6, v5}, Lq1/s0;->i(Lq1/w;)I

    .line 319
    .line 320
    .line 321
    const/16 v5, 0x101

    .line 322
    .line 323
    invoke-virtual {v8, v5, v6}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    move/from16 v5, v17

    .line 332
    .line 333
    :cond_f
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_10

    .line 338
    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    check-cast v6, Lm0/b;

    .line 344
    .line 345
    iget-object v7, v6, Lm0/b;->a:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v7, Lq1/s0;

    .line 348
    .line 349
    iget-object v6, v6, Lm0/b;->b:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v6, Lq1/w;

    .line 352
    .line 353
    invoke-virtual {v0, v7, v6}, Lq1/h;->o(Lq1/s0;Lq1/w;)I

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_f

    .line 358
    .line 359
    iget-object v6, v0, Lq1/h;->d:Lq1/s0;

    .line 360
    .line 361
    if-ne v7, v6, :cond_f

    .line 362
    .line 363
    const/4 v5, 0x1

    .line 364
    goto :goto_b

    .line 365
    :cond_10
    move v12, v5

    .line 366
    move v5, v11

    .line 367
    goto :goto_e

    .line 368
    :goto_c
    if-eqz v2, :cond_11

    .line 369
    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v6, "Ignoring invalid provider descriptor: "

    .line 373
    .line 374
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    goto :goto_d

    .line 385
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v5, "Ignoring null provider descriptor from "

    .line 388
    .line 389
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object v5, v1, Lq1/r0;->d:Lj7/c;

    .line 393
    .line 394
    iget-object v5, v5, Lj7/c;->b:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v5, Landroid/content/ComponentName;

    .line 397
    .line 398
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    :goto_d
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    const/4 v5, 0x0

    .line 409
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    const/4 v6, 0x1

    .line 414
    sub-int/2addr v2, v6

    .line 415
    :goto_f
    if-lt v2, v5, :cond_12

    .line 416
    .line 417
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    check-cast v6, Lq1/s0;

    .line 422
    .line 423
    const/4 v7, 0x0

    .line 424
    invoke-virtual {v6, v7}, Lq1/s0;->i(Lq1/w;)I

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    add-int/lit8 v2, v2, -0x1

    .line 431
    .line 432
    goto :goto_f

    .line 433
    :cond_12
    invoke-virtual {v0, v12}, Lq1/h;->p(Z)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    const/4 v3, 0x1

    .line 441
    sub-int/2addr v2, v3

    .line 442
    :goto_10
    if-lt v2, v5, :cond_13

    .line 443
    .line 444
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    check-cast v3, Lq1/s0;

    .line 449
    .line 450
    const/16 v6, 0x102

    .line 451
    .line 452
    invoke-virtual {v8, v6, v3}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    add-int/lit8 v2, v2, -0x1

    .line 456
    .line 457
    goto :goto_10

    .line 458
    :cond_13
    const/16 v2, 0x203

    .line 459
    .line 460
    invoke-virtual {v8, v2, v1}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    :cond_14
    return-void
.end method

.method public final o(Lq1/s0;Lq1/w;)I
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lq1/s0;->i(Lq1/w;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Lq1/h;->a:Lq1/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x103

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x104

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    and-int/lit8 v0, p2, 0x4

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x105

    .line 32
    .line 33
    invoke-virtual {v1, v0, p1}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return p2
.end method

.method public final p(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq1/h;->v:Lq1/s0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AxMediaRouter"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lq1/s0;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Clearing the default route because it is no longer selectable: "

    .line 17
    .line 18
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lq1/h;->v:Lq1/s0;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lq1/h;->v:Lq1/s0;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lq1/h;->v:Lq1/s0;

    .line 36
    .line 37
    iget-object v3, p0, Lq1/h;->i:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lq1/s0;

    .line 56
    .line 57
    invoke-virtual {v4}, Lq1/s0;->c()Lq1/e0;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v6, p0, Lq1/h;->s:Lq1/e1;

    .line 62
    .line 63
    if-ne v5, v6, :cond_1

    .line 64
    .line 65
    iget-object v5, v4, Lq1/s0;->b:Ljava/lang/String;

    .line 66
    .line 67
    const-string v6, "DEFAULT_ROUTE"

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4}, Lq1/s0;->f()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    iput-object v4, p0, Lq1/h;->v:Lq1/s0;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v4, "Found default route: "

    .line 86
    .line 87
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lq1/h;->v:Lq1/s0;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lq1/h;->w:Lq1/s0;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Lq1/s0;->f()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "Clearing the bluetooth route because it is no longer selectable: "

    .line 115
    .line 116
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lq1/h;->w:Lq1/s0;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lq1/h;->w:Lq1/s0;

    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Lq1/h;->w:Lq1/s0;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lq1/s0;

    .line 152
    .line 153
    invoke-virtual {v1}, Lq1/s0;->c()Lq1/e0;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v4, p0, Lq1/h;->s:Lq1/e1;

    .line 158
    .line 159
    if-ne v3, v4, :cond_4

    .line 160
    .line 161
    const-string v3, "android.media.intent.category.LIVE_AUDIO"

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Lq1/s0;->m(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_4

    .line 168
    .line 169
    const-string v3, "android.media.intent.category.LIVE_VIDEO"

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Lq1/s0;->m(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_4

    .line 176
    .line 177
    invoke-virtual {v1}, Lq1/s0;->f()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_4

    .line 182
    .line 183
    iput-object v1, p0, Lq1/h;->w:Lq1/s0;

    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v1, "Found bluetooth route: "

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lq1/h;->w:Lq1/s0;

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :cond_5
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 205
    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    iget-boolean v0, v0, Lq1/s0;->g:Z

    .line 209
    .line 210
    if-nez v0, :cond_6

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_6
    if-eqz p1, :cond_8

    .line 214
    .line 215
    invoke-virtual {p0}, Lq1/h;->i()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lq1/h;->m()V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, "Unselecting the current route because it is no longer selectable: "

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lq1/h;->d:Lq1/s0;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lq1/h;->c()Lq1/s0;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    const/4 v0, 0x0

    .line 246
    const/4 v1, 0x1

    .line 247
    invoke-virtual {p0, p1, v0, v1}, Lq1/h;->k(Lq1/s0;IZ)V

    .line 248
    .line 249
    .line 250
    :cond_8
    :goto_1
    return-void
.end method
