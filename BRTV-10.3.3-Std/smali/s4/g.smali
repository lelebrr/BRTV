.class public final Ls4/g;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final u:Lv4/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;

.field public final c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public final d:Landroid/content/ComponentName;

.field public final e:Landroid/content/ComponentName;

.field public f:Ljava/util/ArrayList;

.field public g:[I

.field public final h:J

.field public final i:Lc2/b;

.field public final j:Landroid/content/res/Resources;

.field public k:Ls4/f;

.field public l:Ll6/h;

.field public m:Landroidx/core/app/p;

.field public n:Landroidx/core/app/p;

.field public o:Landroidx/core/app/p;

.field public p:Landroidx/core/app/p;

.field public q:Landroidx/core/app/p;

.field public r:Landroidx/core/app/p;

.field public s:Landroidx/core/app/p;

.field public t:Landroidx/core/app/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaNotificationProxy"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ls4/g;->u:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls4/g;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Ls4/g;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "notification"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    iput-object v0, p0, Ls4/g;->b:Landroid/app/NotificationManager;

    .line 22
    .line 23
    sget-object v1, Lq4/a;->j:Lv4/b;

    .line 24
    .line 25
    const-string v1, "Must be called from the main thread."

    .line 26
    .line 27
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lq4/a;->l:Lq4/a;

    .line 31
    .line 32
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v2, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 39
    .line 40
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/CastOptions;->f:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 44
    .line 45
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->d:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 49
    .line 50
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Ls4/g;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->j()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, p0, Ls4/g;->j:Landroid/content/res/Resources;

    .line 63
    .line 64
    new-instance v4, Landroid/content/ComponentName;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v4, p0, Ls4/g;->d:Landroid/content/ComponentName;

    .line 76
    .line 77
    iget-object v1, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->d:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_0

    .line 84
    .line 85
    new-instance v4, Landroid/content/ComponentName;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, Ls4/g;->e:Landroid/content/ComponentName;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Ls4/g;->e:Landroid/content/ComponentName;

    .line 99
    .line 100
    :goto_0
    iget-wide v4, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:J

    .line 101
    .line 102
    iput-wide v4, p0, Ls4/g;->h:J

    .line 103
    .line 104
    iget v1, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->r:I

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    invoke-direct {v2, v3, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lc2/b;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-direct {v1, v3, v2}, Lc2/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Ls4/g;->i:Lc2/b;

    .line 126
    .line 127
    invoke-static {}, Lu7/d;->t()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_1

    .line 132
    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const v1, 0x7f12014e

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lp4/f;->n(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lp4/f;->l(Landroid/app/NotificationChannel;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v0, p1}, Landroidx/appcompat/app/x;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/m2;->f0:Lcom/google/android/gms/internal/cast/m2;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/core/app/p;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "com.google.android.gms.cast.framework.action.REWIND"

    .line 10
    .line 11
    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 12
    .line 13
    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 14
    .line 15
    const-string v8, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 16
    .line 17
    const-string v9, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 18
    .line 19
    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 20
    .line 21
    const-string v11, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 22
    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    goto :goto_1

    .line 35
    :sswitch_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    goto :goto_1

    .line 43
    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    goto :goto_1

    .line 51
    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    goto :goto_1

    .line 59
    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    const/4 v3, 0x4

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 84
    :goto_1
    const/high16 v16, 0x8000000

    .line 85
    .line 86
    const-string v6, "googlecast-extra_skip_step_ms"

    .line 87
    .line 88
    iget-wide v13, v0, Ls4/g;->h:J

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    iget-object v15, v0, Ls4/g;->j:Landroid/content/res/Resources;

    .line 93
    .line 94
    iget-object v12, v0, Ls4/g;->a:Landroid/content/Context;

    .line 95
    .line 96
    iget-object v2, v0, Ls4/g;->d:Landroid/content/ComponentName;

    .line 97
    .line 98
    move-object/from16 v18, v11

    .line 99
    .line 100
    iget-object v11, v0, Ls4/g;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 101
    .line 102
    packed-switch v3, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    new-array v2, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    aput-object v1, v2, v3

    .line 110
    .line 111
    sget-object v1, Ls4/g;->u:Lv4/b;

    .line 112
    .line 113
    iget-object v3, v1, Lv4/b;->a:Ljava/lang/String;

    .line 114
    .line 115
    const-string v4, "Action: %s is not a pre-defined action."

    .line 116
    .line 117
    invoke-virtual {v1, v4, v2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto/16 :goto_8

    .line 125
    .line 126
    :pswitch_0
    iget-object v1, v0, Ls4/g;->s:Landroidx/core/app/p;

    .line 127
    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    new-instance v1, Landroid/content/Intent;

    .line 131
    .line 132
    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    new-instance v2, Landroidx/core/app/o;

    .line 146
    .line 147
    iget v4, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 148
    .line 149
    const/4 v5, 0x1

    .line 150
    new-array v5, v5, [Ljava/lang/Object;

    .line 151
    .line 152
    const-string v6, ""

    .line 153
    .line 154
    aput-object v6, v5, v3

    .line 155
    .line 156
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 157
    .line 158
    invoke-virtual {v15, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-direct {v2, v4, v3, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, v0, Ls4/g;->s:Landroidx/core/app/p;

    .line 170
    .line 171
    :cond_1
    iget-object v1, v0, Ls4/g;->s:Landroidx/core/app/p;

    .line 172
    .line 173
    :goto_2
    move-object/from16 v17, v1

    .line 174
    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :pswitch_1
    iget-object v1, v0, Ls4/g;->t:Landroidx/core/app/p;

    .line 178
    .line 179
    if-nez v1, :cond_2

    .line 180
    .line 181
    new-instance v1, Landroid/content/Intent;

    .line 182
    .line 183
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    new-instance v2, Landroidx/core/app/o;

    .line 197
    .line 198
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 199
    .line 200
    iget v4, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 201
    .line 202
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, v0, Ls4/g;->t:Landroidx/core/app/p;

    .line 214
    .line 215
    :cond_2
    iget-object v1, v0, Ls4/g;->t:Landroidx/core/app/p;

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_2
    iget-object v1, v0, Ls4/g;->r:Landroidx/core/app/p;

    .line 219
    .line 220
    if-nez v1, :cond_7

    .line 221
    .line 222
    new-instance v1, Landroid/content/Intent;

    .line 223
    .line 224
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 234
    .line 235
    or-int v2, v2, v16

    .line 236
    .line 237
    const/4 v3, 0x0

    .line 238
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    sget-object v2, Ls4/l;->a:Lv4/b;

    .line 243
    .line 244
    const-wide/16 v2, 0x2710

    .line 245
    .line 246
    cmp-long v4, v13, v2

    .line 247
    .line 248
    iget v2, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->n:I

    .line 249
    .line 250
    if-nez v4, :cond_3

    .line 251
    .line 252
    iget v2, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->o:I

    .line 253
    .line 254
    const-wide/16 v5, 0x7530

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_3
    const-wide/16 v5, 0x7530

    .line 258
    .line 259
    cmp-long v3, v13, v5

    .line 260
    .line 261
    if-eqz v3, :cond_4

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_4
    iget v2, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->p:I

    .line 265
    .line 266
    :goto_3
    if-nez v4, :cond_5

    .line 267
    .line 268
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_5
    cmp-long v3, v13, v5

    .line 272
    .line 273
    if-eqz v3, :cond_6

    .line 274
    .line 275
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_6
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    .line 279
    .line 280
    :goto_4
    new-instance v4, Landroidx/core/app/o;

    .line 281
    .line 282
    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-direct {v4, v2, v3, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iput-object v1, v0, Ls4/g;->r:Landroidx/core/app/p;

    .line 294
    .line 295
    :cond_7
    iget-object v1, v0, Ls4/g;->r:Landroidx/core/app/p;

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :pswitch_3
    iget-object v1, v0, Ls4/g;->q:Landroidx/core/app/p;

    .line 299
    .line 300
    if-nez v1, :cond_c

    .line 301
    .line 302
    new-instance v1, Landroid/content/Intent;

    .line 303
    .line 304
    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 314
    .line 315
    or-int v2, v2, v16

    .line 316
    .line 317
    const/4 v3, 0x0

    .line 318
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    sget-object v2, Ls4/l;->a:Lv4/b;

    .line 323
    .line 324
    const-wide/16 v2, 0x2710

    .line 325
    .line 326
    cmp-long v4, v13, v2

    .line 327
    .line 328
    iget v2, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->k:I

    .line 329
    .line 330
    if-nez v4, :cond_8

    .line 331
    .line 332
    iget v2, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->l:I

    .line 333
    .line 334
    const-wide/16 v5, 0x7530

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_8
    const-wide/16 v5, 0x7530

    .line 338
    .line 339
    cmp-long v3, v13, v5

    .line 340
    .line 341
    if-eqz v3, :cond_9

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_9
    iget v2, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->m:I

    .line 345
    .line 346
    :goto_5
    if-nez v4, :cond_a

    .line 347
    .line 348
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:I

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_a
    cmp-long v3, v13, v5

    .line 352
    .line 353
    if-eqz v3, :cond_b

    .line 354
    .line 355
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:I

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_b
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    .line 359
    .line 360
    :goto_6
    new-instance v4, Landroidx/core/app/o;

    .line 361
    .line 362
    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-direct {v4, v2, v3, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iput-object v1, v0, Ls4/g;->q:Landroidx/core/app/p;

    .line 374
    .line 375
    :cond_c
    iget-object v1, v0, Ls4/g;->q:Landroidx/core/app/p;

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :pswitch_4
    iget-object v1, v0, Ls4/g;->k:Ls4/f;

    .line 380
    .line 381
    iget-boolean v1, v1, Ls4/f;->g:Z

    .line 382
    .line 383
    iget-object v3, v0, Ls4/g;->p:Landroidx/core/app/p;

    .line 384
    .line 385
    if-nez v3, :cond_e

    .line 386
    .line 387
    if-eqz v1, :cond_d

    .line 388
    .line 389
    new-instance v1, Landroid/content/Intent;

    .line 390
    .line 391
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 401
    .line 402
    .line 403
    move-result-object v17

    .line 404
    :cond_d
    move-object/from16 v1, v17

    .line 405
    .line 406
    new-instance v2, Landroidx/core/app/o;

    .line 407
    .line 408
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->j:I

    .line 409
    .line 410
    iget v4, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:I

    .line 411
    .line 412
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    iput-object v1, v0, Ls4/g;->p:Landroidx/core/app/p;

    .line 424
    .line 425
    :cond_e
    iget-object v1, v0, Ls4/g;->p:Landroidx/core/app/p;

    .line 426
    .line 427
    goto/16 :goto_2

    .line 428
    .line 429
    :pswitch_5
    iget-object v1, v0, Ls4/g;->k:Ls4/f;

    .line 430
    .line 431
    iget-boolean v1, v1, Ls4/f;->f:Z

    .line 432
    .line 433
    iget-object v3, v0, Ls4/g;->o:Landroidx/core/app/p;

    .line 434
    .line 435
    if-nez v3, :cond_10

    .line 436
    .line 437
    if-eqz v1, :cond_f

    .line 438
    .line 439
    new-instance v1, Landroid/content/Intent;

    .line 440
    .line 441
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 445
    .line 446
    .line 447
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 448
    .line 449
    const/4 v3, 0x0

    .line 450
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 451
    .line 452
    .line 453
    move-result-object v17

    .line 454
    :cond_f
    move-object/from16 v1, v17

    .line 455
    .line 456
    new-instance v2, Landroidx/core/app/o;

    .line 457
    .line 458
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->i:I

    .line 459
    .line 460
    iget v4, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:I

    .line 461
    .line 462
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iput-object v1, v0, Ls4/g;->o:Landroidx/core/app/p;

    .line 474
    .line 475
    :cond_10
    iget-object v1, v0, Ls4/g;->o:Landroidx/core/app/p;

    .line 476
    .line 477
    goto/16 :goto_2

    .line 478
    .line 479
    :pswitch_6
    iget-object v1, v0, Ls4/g;->k:Ls4/f;

    .line 480
    .line 481
    iget v3, v1, Ls4/f;->c:I

    .line 482
    .line 483
    iget-boolean v1, v1, Ls4/f;->b:Z

    .line 484
    .line 485
    if-eqz v1, :cond_13

    .line 486
    .line 487
    iget-object v1, v0, Ls4/g;->n:Landroidx/core/app/p;

    .line 488
    .line 489
    if-nez v1, :cond_12

    .line 490
    .line 491
    const/4 v1, 0x2

    .line 492
    if-ne v3, v1, :cond_11

    .line 493
    .line 494
    iget v1, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->f:I

    .line 495
    .line 496
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->t:I

    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_11
    iget v1, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:I

    .line 500
    .line 501
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    .line 502
    .line 503
    :goto_7
    new-instance v4, Landroid/content/Intent;

    .line 504
    .line 505
    move-object/from16 v5, v18

    .line 506
    .line 507
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 511
    .line 512
    .line 513
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 514
    .line 515
    const/4 v5, 0x0

    .line 516
    invoke-static {v12, v5, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    new-instance v4, Landroidx/core/app/o;

    .line 521
    .line 522
    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-direct {v4, v1, v3, v2}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    iput-object v1, v0, Ls4/g;->n:Landroidx/core/app/p;

    .line 534
    .line 535
    :cond_12
    iget-object v1, v0, Ls4/g;->n:Landroidx/core/app/p;

    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :cond_13
    move-object/from16 v5, v18

    .line 540
    .line 541
    iget-object v1, v0, Ls4/g;->m:Landroidx/core/app/p;

    .line 542
    .line 543
    if-nez v1, :cond_14

    .line 544
    .line 545
    new-instance v1, Landroid/content/Intent;

    .line 546
    .line 547
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 551
    .line 552
    .line 553
    sget v2, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 554
    .line 555
    const/4 v3, 0x0

    .line 556
    invoke-static {v12, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    new-instance v2, Landroidx/core/app/o;

    .line 561
    .line 562
    iget v3, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->h:I

    .line 563
    .line 564
    iget v4, v11, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->v:I

    .line 565
    .line 566
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    iput-object v1, v0, Ls4/g;->m:Landroidx/core/app/p;

    .line 578
    .line 579
    :cond_14
    iget-object v1, v0, Ls4/g;->m:Landroidx/core/app/p;

    .line 580
    .line 581
    goto/16 :goto_2

    .line 582
    .line 583
    :goto_8
    return-object v17

    .line 584
    nop

    .line 585
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Ls4/g;->b:Landroid/app/NotificationManager;

    .line 4
    .line 5
    if-eqz v2, :cond_15

    .line 6
    .line 7
    iget-object v3, p0, Ls4/g;->k:Ls4/f;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    iget-object v3, p0, Ls4/g;->l:Ll6/h;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v3, v3, Ll6/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-le v5, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-gt v5, v1, :cond_2

    .line 35
    .line 36
    :cond_1
    move-object v3, v4

    .line 37
    :cond_2
    new-instance v5, Landroidx/core/app/u;

    .line 38
    .line 39
    const-string v6, "cast_media_notification"

    .line 40
    .line 41
    iget-object v7, p0, Ls4/g;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v5, v7, v6}, Landroidx/core/app/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v3}, Landroidx/core/app/u;->d(Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Ls4/g;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 50
    .line 51
    iget v6, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->e:I

    .line 52
    .line 53
    iget-object v8, v5, Landroidx/core/app/u;->B:Landroid/app/Notification;

    .line 54
    .line 55
    iput v6, v8, Landroid/app/Notification;->icon:I

    .line 56
    .line 57
    iget-object v6, p0, Ls4/g;->k:Ls4/f;

    .line 58
    .line 59
    iget-object v6, v6, Ls4/f;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v6}, Landroidx/core/app/u;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iput-object v6, v5, Landroidx/core/app/u;->e:Ljava/lang/CharSequence;

    .line 66
    .line 67
    iget-object v6, p0, Ls4/g;->k:Ls4/f;

    .line 68
    .line 69
    iget-object v6, v6, Ls4/f;->e:Ljava/lang/String;

    .line 70
    .line 71
    new-array v8, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v6, v8, v0

    .line 74
    .line 75
    iget-object v6, p0, Ls4/g;->j:Landroid/content/res/Resources;

    .line 76
    .line 77
    iget v9, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->s:I

    .line 78
    .line 79
    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Landroidx/core/app/u;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iput-object v6, v5, Landroidx/core/app/u;->f:Ljava/lang/CharSequence;

    .line 88
    .line 89
    const/4 v6, 0x2

    .line 90
    invoke-virtual {v5, v6, v1}, Landroidx/core/app/u;->c(IZ)V

    .line 91
    .line 92
    .line 93
    iput-boolean v0, v5, Landroidx/core/app/u;->j:Z

    .line 94
    .line 95
    iput v1, v5, Landroidx/core/app/u;->w:I

    .line 96
    .line 97
    iget-object v6, p0, Ls4/g;->e:Landroid/content/ComponentName;

    .line 98
    .line 99
    if-nez v6, :cond_3

    .line 100
    .line 101
    move-object v6, v4

    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_3
    new-instance v8, Landroid/content/Intent;

    .line 105
    .line 106
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v9, "targetActivity"

    .line 110
    .line 111
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    new-instance v6, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    if-nez v9, :cond_4

    .line 134
    .line 135
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v8, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    :cond_4
    if-eqz v9, :cond_5

    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    :try_start_0
    invoke-static {v7, v9}, La2/a;->z(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    :goto_0
    if-eqz v9, :cond_5

    .line 154
    .line 155
    invoke-virtual {v6, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-static {v7, v9}, La2/a;->z(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "TaskStackBuilder"

    .line 169
    .line 170
    const-string v2, "Bad ComponentName while traversing activity parent metadata"

    .line 171
    .line 172
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    sget v8, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 185
    .line 186
    const/high16 v9, 0x8000000

    .line 187
    .line 188
    or-int/2addr v8, v9

    .line 189
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-nez v9, :cond_14

    .line 194
    .line 195
    new-array v9, v0, [Landroid/content/Intent;

    .line 196
    .line 197
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, [Landroid/content/Intent;

    .line 202
    .line 203
    new-instance v9, Landroid/content/Intent;

    .line 204
    .line 205
    aget-object v10, v6, v0

    .line 206
    .line 207
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 208
    .line 209
    .line 210
    const v10, 0x1000c000

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    aput-object v9, v6, v0

    .line 218
    .line 219
    invoke-static {v7, v1, v6, v8, v4}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    :goto_1
    if-eqz v6, :cond_6

    .line 224
    .line 225
    iput-object v6, v5, Landroidx/core/app/u;->g:Landroid/app/PendingIntent;

    .line 226
    .line 227
    :cond_6
    sget-object v6, Ls4/g;->u:Lv4/b;

    .line 228
    .line 229
    iget-object v8, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:Lr4/t;

    .line 230
    .line 231
    if-eqz v8, :cond_c

    .line 232
    .line 233
    new-array v3, v0, [Ljava/lang/Object;

    .line 234
    .line 235
    const-string v9, "actionsProvider != null"

    .line 236
    .line 237
    invoke-virtual {v6, v9, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v8}, Ls4/l;->b(Lr4/t;)[I

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    if-nez v3, :cond_7

    .line 245
    .line 246
    move-object v3, v4

    .line 247
    goto :goto_2

    .line 248
    :cond_7
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, [I

    .line 253
    .line 254
    :goto_2
    iput-object v3, p0, Ls4/g;->g:[I

    .line 255
    .line 256
    invoke-static {v8}, Ls4/l;->a(Lr4/t;)Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    new-instance v6, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object v6, p0, Ls4/g;->f:Ljava/util/ArrayList;

    .line 266
    .line 267
    if-nez v3, :cond_8

    .line 268
    .line 269
    goto/16 :goto_7

    .line 270
    .line 271
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_f

    .line 280
    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    check-cast v6, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 286
    .line 287
    iget-object v8, v6, Lcom/google/android/gms/cast/framework/media/NotificationAction;->a:Ljava/lang/String;

    .line 288
    .line 289
    const-string v9, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 290
    .line 291
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    iget-object v10, v6, Lcom/google/android/gms/cast/framework/media/NotificationAction;->a:Ljava/lang/String;

    .line 296
    .line 297
    if-nez v9, :cond_b

    .line 298
    .line 299
    const-string v9, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 300
    .line 301
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-nez v9, :cond_b

    .line 306
    .line 307
    const-string v9, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 308
    .line 309
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-nez v9, :cond_b

    .line 314
    .line 315
    const-string v9, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 316
    .line 317
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-nez v9, :cond_b

    .line 322
    .line 323
    const-string v9, "com.google.android.gms.cast.framework.action.REWIND"

    .line 324
    .line 325
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-nez v9, :cond_b

    .line 330
    .line 331
    const-string v9, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 332
    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    if-nez v9, :cond_b

    .line 338
    .line 339
    const-string v9, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 340
    .line 341
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_a

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_a
    new-instance v8, Landroid/content/Intent;

    .line 349
    .line 350
    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v9, p0, Ls4/g;->d:Landroid/content/ComponentName;

    .line 354
    .line 355
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 356
    .line 357
    .line 358
    sget v9, Lcom/google/android/gms/internal/cast/w0;->a:I

    .line 359
    .line 360
    invoke-static {v7, v0, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    new-instance v9, Landroidx/core/app/o;

    .line 365
    .line 366
    iget v10, v6, Lcom/google/android/gms/cast/framework/media/NotificationAction;->b:I

    .line 367
    .line 368
    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/NotificationAction;->c:Ljava/lang/String;

    .line 369
    .line 370
    invoke-direct {v9, v10, v6, v8}, Landroidx/core/app/o;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    goto :goto_5

    .line 378
    :cond_b
    :goto_4
    invoke-virtual {p0, v10}, Ls4/g;->a(Ljava/lang/String;)Landroidx/core/app/p;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    :goto_5
    if-eqz v6, :cond_9

    .line 383
    .line 384
    iget-object v8, p0, Ls4/g;->f:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_c
    new-array v0, v0, [Ljava/lang/Object;

    .line 391
    .line 392
    const-string v7, "actionsProvider == null"

    .line 393
    .line 394
    invoke-virtual {v6, v7, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .line 401
    .line 402
    iput-object v0, p0, Ls4/g;->f:Ljava/util/ArrayList;

    .line 403
    .line 404
    iget-object v0, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->a:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    if-eqz v6, :cond_e

    .line 415
    .line 416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    check-cast v6, Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {p0, v6}, Ls4/g;->a(Ljava/lang/String;)Landroidx/core/app/p;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    if-eqz v6, :cond_d

    .line 427
    .line 428
    iget-object v7, p0, Ls4/g;->f:Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_e
    iget-object v0, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->b:[I

    .line 435
    .line 436
    array-length v3, v0

    .line 437
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    check-cast v0, [I

    .line 446
    .line 447
    iput-object v0, p0, Ls4/g;->g:[I

    .line 448
    .line 449
    :cond_f
    :goto_7
    iget-object v0, p0, Ls4/g;->f:Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-eqz v3, :cond_11

    .line 460
    .line 461
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    check-cast v3, Landroidx/core/app/p;

    .line 466
    .line 467
    if-eqz v3, :cond_10

    .line 468
    .line 469
    iget-object v6, v5, Landroidx/core/app/u;->b:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_11
    new-instance v0, Ln1/b;

    .line 476
    .line 477
    invoke-direct {v0}, Landroidx/core/app/k0;-><init>()V

    .line 478
    .line 479
    .line 480
    iput-object v4, v0, Ln1/b;->a:[I

    .line 481
    .line 482
    iget-object v3, p0, Ls4/g;->g:[I

    .line 483
    .line 484
    if-eqz v3, :cond_12

    .line 485
    .line 486
    iput-object v3, v0, Ln1/b;->a:[I

    .line 487
    .line 488
    :cond_12
    iget-object v3, p0, Ls4/g;->k:Ls4/f;

    .line 489
    .line 490
    iget-object v3, v3, Ls4/f;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 491
    .line 492
    if-eqz v3, :cond_13

    .line 493
    .line 494
    iput-object v3, v0, Ln1/b;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 495
    .line 496
    :cond_13
    invoke-virtual {v5, v0}, Landroidx/core/app/u;->e(Landroidx/core/app/k0;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5}, Landroidx/core/app/u;->a()Landroid/app/Notification;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    const-string v3, "castMediaNotification"

    .line 504
    .line 505
    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 510
    .line 511
    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    .line 512
    .line 513
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :cond_15
    :goto_9
    return-void
.end method
