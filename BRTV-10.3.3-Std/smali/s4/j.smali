.class public final Ls4/j;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Ls4/k;


# direct methods
.method public constructor <init>(Ls4/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls4/j;->a:Ls4/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    sget-object v1, Ls4/k;->v:Lv4/b;

    .line 4
    .line 5
    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    aput-object p1, v2, p2

    .line 8
    .line 9
    const-string v3, "onCustomAction with action = %s"

    .line 10
    .line 11
    invoke-virtual {v1, v3, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x3

    .line 20
    sparse-switch v1, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string v1, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :sswitch_1
    const-string v1, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string v1, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    goto :goto_1

    .line 54
    :sswitch_3
    const-string v1, "com.google.android.gms.cast.framework.action.REWIND"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 65
    :goto_1
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    iget-object v6, p0, Ls4/j;->a:Ls4/k;

    .line 68
    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    if-eq v1, v0, :cond_5

    .line 72
    .line 73
    if-eq v1, v2, :cond_3

    .line 74
    .line 75
    if-eq v1, v3, :cond_2

    .line 76
    .line 77
    new-instance p2, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v6, Ls4/k;->g:Landroid/content/ComponentName;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v0, 0x22

    .line 90
    .line 91
    iget-object v1, v6, Ls4/k;->a:Landroid/content/Context;

    .line 92
    .line 93
    if-ge p1, v0, :cond_1

    .line 94
    .line 95
    invoke-virtual {v1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    invoke-static {}, Landroidx/media3/ui/m;->a()Landroid/app/BroadcastOptions;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Landroidx/media3/ui/m;->b(Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Landroidx/media3/ui/m;->c(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v1, p2, p1}, Landroidx/media3/ui/m;->e(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    iget-object p1, v6, Ls4/k;->d:Lq4/f;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lq4/f;->b(Z)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    iget-object p1, v6, Ls4/k;->d:Lq4/f;

    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lq4/f;->b(Z)V

    .line 128
    .line 129
    .line 130
    :cond_4
    return-void

    .line 131
    :cond_5
    iget-object p1, v6, Ls4/k;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 132
    .line 133
    iget-wide v0, p1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:J

    .line 134
    .line 135
    neg-long v0, v0

    .line 136
    iget-object p1, v6, Ls4/k;->n:Lr4/f;

    .line 137
    .line 138
    if-nez p1, :cond_6

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {p1}, Lr4/f;->c()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    add-long/2addr v2, v0

    .line 146
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    invoke-virtual {p1}, Lr4/f;->h()J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    iget-object p1, v6, Ls4/k;->n:Lr4/f;

    .line 159
    .line 160
    if-nez p1, :cond_7

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_7
    new-instance v2, Lp4/g;

    .line 164
    .line 165
    invoke-direct {v2, v0, v1, p2}, Lp4/g;-><init>(JZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lr4/f;->t(Lp4/g;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void

    .line 172
    :cond_8
    iget-object p1, v6, Ls4/k;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 173
    .line 174
    iget-wide v0, p1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:J

    .line 175
    .line 176
    iget-object p1, v6, Ls4/k;->n:Lr4/f;

    .line 177
    .line 178
    if-nez p1, :cond_9

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_9
    invoke-virtual {p1}, Lr4/f;->c()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    add-long/2addr v2, v0

    .line 186
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    invoke-virtual {p1}, Lr4/f;->h()J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    iget-object p1, v6, Ls4/k;->n:Lr4/f;

    .line 199
    .line 200
    if-nez p1, :cond_a

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    new-instance v2, Lp4/g;

    .line 204
    .line 205
    invoke-direct {v2, v0, v1, p2}, Lp4/g;-><init>(JZ)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v2}, Lr4/f;->t(Lp4/g;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void

    .line 212
    nop

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    sget-object v0, Ls4/k;->v:Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onMediaButtonEvent"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/KeyEvent;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x7f

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x7e

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Ls4/j;->a:Ls4/k;

    .line 38
    .line 39
    iget-object p1, p1, Ls4/k;->n:Lr4/f;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lr4/f;->v()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    sget-object v0, Ls4/k;->v:Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPause"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls4/j;->a:Ls4/k;

    .line 12
    .line 13
    iget-object v0, v0, Ls4/k;->n:Lr4/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lr4/f;->v()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onPlay()V
    .locals 3

    .line 1
    sget-object v0, Ls4/k;->v:Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPlay"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls4/j;->a:Ls4/k;

    .line 12
    .line 13
    iget-object v0, v0, Ls4/k;->n:Lr4/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lr4/f;->v()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSeekTo(J)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Ls4/k;->v:Lv4/b;

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x1

    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    aput-object v2, v3, v0

    .line 12
    .line 13
    const-string v2, "onSeekTo %d"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ls4/j;->a:Ls4/k;

    .line 19
    .line 20
    iget-object v1, v1, Ls4/k;->n:Lr4/f;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lp4/g;

    .line 26
    .line 27
    invoke-direct {v2, p1, p2, v0}, Lp4/g;-><init>(JZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lr4/f;->t(Lp4/g;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final onSkipToNext()V
    .locals 3

    .line 1
    sget-object v0, Ls4/k;->v:Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToNext"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls4/j;->a:Ls4/k;

    .line 12
    .line 13
    iget-object v0, v0, Ls4/k;->n:Lr4/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lr4/f;->q()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 3

    .line 1
    sget-object v0, Ls4/k;->v:Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToPrevious"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls4/j;->a:Ls4/k;

    .line 12
    .line 13
    iget-object v0, v0, Ls4/k;->n:Lr4/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lr4/f;->r()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
