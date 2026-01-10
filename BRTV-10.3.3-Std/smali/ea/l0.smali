.class public final Lea/l0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/l0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->a(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->b(Landroidx/media3/common/Player$Listener;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->c(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->d(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public final synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Landroidx/media3/common/k;->e(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->f(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->g(Landroidx/media3/common/Player$Listener;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->h(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->i(Landroidx/media3/common/Player$Listener;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onIsPlayingChanged(Z)V
    .locals 4

    .line 1
    const-string v0, "NO1a+WfB\n"

    .line 2
    .line 3
    const-string v1, "dr4XmA6v7Xc=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "DMK/iG+hOGAbmr+2SrMRaQjDubZkgylkB921vDng\n"

    .line 15
    .line 16
    const-string v3, "abrQ2APAQQU=\n"

    .line 17
    .line 18
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->l(Landroidx/media3/common/Player$Listener;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->m(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->n(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->o(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->p(Landroidx/media3/common/Player$Listener;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->q(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 4

    .line 1
    const-string v0, "dI689tt3\n"

    .line 2
    .line 3
    const-string v1, "Nt3xl7IZFX4=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "YUwq+3nYvG52FCrFRdWkcmFGFt90zaBIbFUrzHDd5St0WCTSd9imYFdAJN9wgw==\n"

    .line 15
    .line 16
    const-string v3, "BDRFqxW5xQs=\n"

    .line 17
    .line 18
    invoke-static {v2, v3, v1, p1}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    iget-object v1, p0, Lea/l0;->a:Lorg/bitspark/android/Spark;

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    const-string p1, "gmxlO1xZ\n"

    .line 33
    .line 34
    const-string v0, "wD8oWjU3B/4=\n"

    .line 35
    .line 36
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "nNTmcoIsNXSLjOZMrSIhYZXJ/UuBI2w/14Kn\n"

    .line 41
    .line 42
    const-string v2, "+ayJIu5NTBE=\n"

    .line 43
    .line 44
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v1, Lorg/bitspark/android/Spark;->i1:J

    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->V()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, v1, Lorg/bitspark/android/Spark;->i1:J

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 71
    .line 72
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 73
    .line 74
    if-eq p1, v0, :cond_1

    .line 75
    .line 76
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 77
    .line 78
    if-eq p1, v0, :cond_1

    .line 79
    .line 80
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 81
    .line 82
    if-ne p1, v0, :cond_3

    .line 83
    .line 84
    :cond_1
    const-string p1, "4VNDZKGO\n"

    .line 85
    .line 86
    const-string v0, "owAOBcjgTIk=\n"

    .line 87
    .line 88
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "OshlPmQmsKAr3WklFByYnQzzVRptGpT5\n"

    .line 98
    .line 99
    const-string v3, "SbwKTjRK0dk=\n"

    .line 100
    .line 101
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v2, v1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->o0()V

    .line 121
    .line 122
    .line 123
    iget-object p1, v1, Lorg/bitspark/android/Spark;->J1:Landroidx/media3/exoplayer/ExoPlayer;

    .line 124
    .line 125
    invoke-interface {p1}, Landroidx/media3/common/Player;->stop()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->j0()V

    .line 129
    .line 130
    .line 131
    iget-object p1, v1, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-static {v1, p1}, Lorg/bitspark/android/Spark;->D(Lorg/bitspark/android/Spark;Landroid/os/Bundle;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    return-void

    .line 140
    :cond_2
    const/4 p1, 0x1

    .line 141
    invoke-virtual {v1, p1}, Lorg/bitspark/android/Spark;->F0(Z)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_0
    iget-object p1, v1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 145
    .line 146
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 147
    .line 148
    if-eq p1, v0, :cond_4

    .line 149
    .line 150
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 151
    .line 152
    if-eq p1, v0, :cond_4

    .line 153
    .line 154
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 155
    .line 156
    if-ne p1, v0, :cond_5

    .line 157
    .line 158
    :cond_4
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->j0()V

    .line 159
    .line 160
    .line 161
    :cond_5
    iget-object p1, v1, Lorg/bitspark/android/Spark;->J1:Landroidx/media3/exoplayer/ExoPlayer;

    .line 162
    .line 163
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    const-string p1, "ZU1X9qH2\n"

    .line 170
    .line 171
    const-string v0, "Jx4al8iYYYk=\n"

    .line 172
    .line 173
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "HrDdXGohb0giquxEbhtiWx+56FQxeA==\n"

    .line 183
    .line 184
    const-string v3, "cd6NMAtYCjo=\n"

    .line 185
    .line 186
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->V()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v2, "Gyljkg/K3jQbKQ==\n"

    .line 201
    .line 202
    const-string v3, "JhRerzL34wk=\n"

    .line 203
    .line 204
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-boolean v2, v1, Lorg/bitspark/android/Spark;->G0:Z

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->V()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_6

    .line 228
    .line 229
    iget-boolean p1, v1, Lorg/bitspark/android/Spark;->G0:Z

    .line 230
    .line 231
    if-nez p1, :cond_6

    .line 232
    .line 233
    sget-boolean p1, Lorg/bitspark/android/Spark;->g2:Z

    .line 234
    .line 235
    if-nez p1, :cond_6

    .line 236
    .line 237
    const/16 p1, 0x1388

    .line 238
    .line 239
    invoke-virtual {v1, p1}, Lorg/bitspark/android/Spark;->z0(I)V

    .line 240
    .line 241
    .line 242
    :cond_6
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->s(Landroidx/media3/common/Player$Listener;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "MIJmKOC4\n"

    .line 3
    .line 4
    const-string v2, "ctErSYnW0Ok=\n"

    .line 5
    .line 6
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "pRSTqbxTIe2yTJOXgF458aUeuYuiXSqy\n"

    .line 16
    .line 17
    const-string v4, "wGz8+dAyWIg=\n"

    .line 18
    .line 19
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "QzVH15Ns\n"

    .line 39
    .line 40
    const-string v2, "AWYKtvoC8C4=\n"

    .line 41
    .line 42
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "G8lJ3369gpkMkUnhQrCahRvDY/1gs4nG\n"

    .line 52
    .line 53
    const-string v4, "frEmjxLc+/w=\n"

    .line 54
    .line 55
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lea/l0;->a:Lorg/bitspark/android/Spark;

    .line 81
    .line 82
    iget-object v2, v1, Lorg/bitspark/android/Spark;->P1:Lea/o0;

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-wide v2, v2, Lea/o0;->a:J

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const-wide/16 v2, 0x0

    .line 90
    .line 91
    :goto_0
    const-string v4, "aSvSGjEd\n"

    .line 92
    .line 93
    const-string v5, "K3ife1hzyqQ=\n"

    .line 94
    .line 95
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v6, "i71ZJhijNJGc5VkYJK4sjYu3cwQGrT/OzugbSFSmLICP5VEZAPg=\n"

    .line 105
    .line 106
    const-string v7, "7sU2dnTCTfQ=\n"

    .line 107
    .line 108
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v4, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object v2, p1

    .line 126
    check-cast v2, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 127
    .line 128
    iget v2, v2, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 129
    .line 130
    if-ne v2, v0, :cond_1

    .line 131
    .line 132
    const-string p1, "1hAp23ojaynmHDmJOSZgePtfOMw5KGo6rws0wClnfSv9Gj3EdA==\n"

    .line 133
    .line 134
    const-string v1, "j39cqVpHDl8=\n"

    .line 135
    .line 136
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v2, v1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 149
    .line 150
    sget-object v3, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 151
    .line 152
    if-ne v2, v3, :cond_5

    .line 153
    .line 154
    const/16 v1, 0x3a

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const/4 v3, -0x1

    .line 161
    const/16 v4, 0x14

    .line 162
    .line 163
    if-eq v2, v3, :cond_3

    .line 164
    .line 165
    add-int/lit8 v5, v2, 0x1

    .line 166
    .line 167
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-ge v6, v4, :cond_2

    .line 176
    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eq v1, v3, :cond_2

    .line 187
    .line 188
    add-int/2addr v1, v0

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    goto :goto_1

    .line 198
    :cond_2
    move-object p1, v5

    .line 199
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-le v1, v4, :cond_4

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    sub-int/2addr v1, v4

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v2, "yMwImvP+gw==\n"

    .line 220
    .line 221
    const-string v3, "jb569YHEo30=\n"

    .line 222
    .line 223
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {v0, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    const-wide/16 v4, 0xfa0

    .line 246
    .line 247
    add-long/2addr v2, v4

    .line 248
    iput-wide v2, v1, Lorg/bitspark/android/Spark;->i1:J

    .line 249
    .line 250
    return-void
.end method

.method public final synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->u(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->v(Landroidx/media3/common/Player$Listener;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->w(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->x(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/k;->y(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 7

    .line 1
    iget-object v0, p0, Lea/l0;->a:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/bitspark/android/Spark;->P1:Lea/o0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, v1, Lea/o0;->a:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    :goto_0
    const-string v3, "RACIFYni\n"

    .line 13
    .line 14
    const-string v4, "BlPFdOCMjKc=\n"

    .line 15
    .line 16
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "ZpsVmfcTzilxwxWnyRfZKGaRH63dG8U/d6UIqPYXl2Eu3Vqt+gbWbGSMDvM=\n"

    .line 26
    .line 27
    const-string v6, "A+N6yZtyt0w=\n"

    .line 28
    .line 29
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 44
    .line 45
    invoke-static {v3, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->G0:Z

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    iput-wide v1, v0, Lorg/bitspark/android/Spark;->i1:J

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    sget-boolean v1, Lorg/bitspark/android/Spark;->g2:Z

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const v1, 0x3f666666    # 0.9f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->w0(F)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v1, v0, Lorg/bitspark/android/Spark;->w1:Lorg/bitspark/android/view/CircularProgressBar;

    .line 71
    .line 72
    const/16 v2, 0x8

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->i0()V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lorg/bitspark/android/Spark;->R1:Lea/j;

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    iget v2, v1, Lea/j;->a:I

    .line 85
    .line 86
    packed-switch v2, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    sget-object v2, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 90
    .line 91
    iget-object v2, v1, Lea/j;->b:Lorg/bitspark/android/Spark;

    .line 92
    .line 93
    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->O()V

    .line 94
    .line 95
    .line 96
    iget-object v3, v2, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 97
    .line 98
    iget-object v3, v3, Lta/a;->C:Ljava/util/ArrayList;

    .line 99
    .line 100
    iget v1, v1, Lea/j;->c:I

    .line 101
    .line 102
    invoke-virtual {v2, v1, v3}, Lorg/bitspark/android/Spark;->k0(ILjava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_0
    sget-object v2, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 107
    .line 108
    iget-object v2, v1, Lea/j;->b:Lorg/bitspark/android/Spark;

    .line 109
    .line 110
    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->O()V

    .line 111
    .line 112
    .line 113
    iget-object v3, v2, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 114
    .line 115
    iget-object v3, v3, Lta/a;->B:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget v1, v1, Lea/j;->c:I

    .line 118
    .line 119
    invoke-virtual {v2, v1, v3}, Lorg/bitspark/android/Spark;->k0(ILjava/util/ArrayList;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    const/4 v1, 0x0

    .line 123
    iput-object v1, v0, Lorg/bitspark/android/Spark;->R1:Lea/j;

    .line 124
    .line 125
    :cond_2
    const-string v0, "/ltiyGgu\n"

    .line 126
    .line 127
    const-string v1, "vAgvqQFA8ig=\n"

    .line 128
    .line 129
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "ExlrS7ohqaUZEwFcpz6Yux0OXkv/PqaFGRlfXK00rJEVBUhNmSOpuhlXS0uwNrqyDwQbXrA/rQ==\n"

    .line 134
    .line 135
    const-string v2, "fHc7Od9RyNc=\n"

    .line 136
    .line 137
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRepeatModeChanged(I)V
    .locals 4

    .line 1
    const-string v0, "uE6i3xbw\n"

    .line 2
    .line 3
    const-string v1, "+h3vvn+eQMY=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "dDUPQyeRCAdjbQ99GZUBB3A5LXwvlTIKcCMHdi/K\n"

    .line 15
    .line 16
    const-string v3, "EU1gE0vwcWI=\n"

    .line 17
    .line 18
    invoke-static {v2, v3, v1, p1}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->B(Landroidx/media3/common/Player$Listener;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->C(Landroidx/media3/common/Player$Listener;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 4

    .line 1
    const-string v0, "SsWcLNV3\n"

    .line 2
    .line 3
    const-string v1, "CJbRTbwZKcU=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "a7D8BMZmMo586Pw6+W8+jWik9hnFYy6uYKnxOM9jCINvpvQxzj0=\n"

    .line 15
    .line 16
    const-string v3, "DsiTVKoHS+s=\n"

    .line 17
    .line 18
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->E(Landroidx/media3/common/Player$Listener;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/k;->F(Landroidx/media3/common/Player$Listener;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 3

    .line 1
    const-string p1, "L/jy7k50\n"

    .line 2
    .line 3
    const-string v0, "bau/jycathQ=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "VK9SPanG65hD91IDkc7/mF2+UwiGz/OTVrJZTbfC845euQdN\n"

    .line 15
    .line 16
    const-string v2, "Mdc9bcWnkv0=\n"

    .line 17
    .line 18
    invoke-static {v1, v2, v0, p2}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 14

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const-string v1, "hFS9dCQw\n"

    .line 4
    .line 5
    const-string v2, "xgfwFU1e4S8=\n"

    .line 6
    .line 7
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "aZddw9xuBwA81SCCkDpCF2TVHrqDIkQON/kYj58kQgFk1BWLlQ9OEyHpBYyFKlMJIZo=\n"

    .line 17
    .line 18
    const-string v4, "RLpw7vFDJ2U=\n"

    .line 19
    .line 20
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lea/l0;->a:Lorg/bitspark/android/Spark;

    .line 28
    .line 29
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 30
    .line 31
    iget-boolean v4, v4, Lta/a;->G:Z

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, "WQ1oJ7bhkrQXfBxMzg==\n"

    .line 37
    .line 38
    const-string v5, "ZDBVGovcr90=\n"

    .line 39
    .line 40
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->V()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 59
    .line 60
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 64
    .line 65
    iget-boolean v1, v1, Lta/a;->G:Z

    .line 66
    .line 67
    if-eqz v1, :cond_1a

    .line 68
    .line 69
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->V()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v2, v3, Lorg/bitspark/android/Spark;->x:Ljava/lang/String;

    .line 74
    .line 75
    const v4, 0x7f120094

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x3

    .line 79
    if-eqz v1, :cond_c

    .line 80
    .line 81
    sget v1, Lorg/bitspark/android/Spark;->m2:I

    .line 82
    .line 83
    if-ne v1, v0, :cond_b

    .line 84
    .line 85
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v1, v1, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 90
    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_0
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    iget-object v6, v6, Lra/f;->d:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/String;

    .line 114
    .line 115
    iget-object v6, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 116
    .line 117
    iget-object v6, v6, Lta/a;->C:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 120
    .line 121
    .line 122
    iget-object v6, v3, Lorg/bitspark/android/Spark;->O1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-nez v6, :cond_1

    .line 129
    .line 130
    goto/16 :goto_6

    .line 131
    .line 132
    :cond_1
    const/4 v7, 0x0

    .line 133
    :goto_0
    invoke-virtual {v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-ge v7, v8, :cond_3

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-ne v8, v5, :cond_2

    .line 144
    .line 145
    iget-object v8, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 146
    .line 147
    iget-object v8, v8, Lta/a;->C:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-static {v7, v6, v8}, Lorg/bitspark/android/Spark;->L(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Ljava/util/ArrayList;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    add-int/2addr v7, v0

    .line 153
    goto :goto_0

    .line 154
    :cond_3
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 155
    .line 156
    iget-object v5, v5, Lta/a;->C:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v6, -0x1

    .line 163
    if-nez v5, :cond_6

    .line 164
    .line 165
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    new-instance v5, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 174
    .line 175
    const/4 v12, 0x0

    .line 176
    const/4 v13, 0x0

    .line 177
    const/4 v10, 0x0

    .line 178
    const/4 v11, 0x0

    .line 179
    move-object v7, v5

    .line 180
    move-object v8, v9

    .line 181
    invoke-direct/range {v7 .. v13}, Lorg/bitspark/android/beans/SubtitleMenu;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 182
    .line 183
    .line 184
    iget-object v7, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 185
    .line 186
    iget-object v7, v7, Lta/a;->C:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-nez v7, :cond_6

    .line 196
    .line 197
    invoke-virtual {v5}, Lorg/bitspark/android/beans/SubtitleMenu;->getLanguage()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-eqz v5, :cond_4

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_4

    .line 216
    .line 217
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->O()V

    .line 218
    .line 219
    .line 220
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 221
    .line 222
    iget-object v1, v1, Lta/a;->C:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    sub-int/2addr v1, v0

    .line 229
    goto :goto_2

    .line 230
    :cond_4
    const/4 v4, 0x0

    .line 231
    :goto_1
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 232
    .line 233
    iget-object v5, v5, Lta/a;->C:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-ge v4, v5, :cond_6

    .line 240
    .line 241
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 242
    .line 243
    iget-object v5, v5, Lta/a;->C:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    check-cast v5, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 250
    .line 251
    invoke-virtual {v5}, Lorg/bitspark/android/beans/SubtitleMenu;->getLanguage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_5

    .line 260
    .line 261
    move v1, v4

    .line 262
    goto :goto_2

    .line 263
    :cond_5
    add-int/2addr v4, v0

    .line 264
    goto :goto_1

    .line 265
    :cond_6
    const/4 v1, -0x1

    .line 266
    :goto_2
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 267
    .line 268
    iget-object v4, v4, Lta/a;->C:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-nez v4, :cond_8

    .line 275
    .line 276
    if-ne v1, v6, :cond_8

    .line 277
    .line 278
    sget-object v1, Lea/h;->J:Ljava/lang/String;

    .line 279
    .line 280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_7

    .line 285
    .line 286
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 287
    .line 288
    iget-object v1, v1, Lta/a;->C:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    sub-int/2addr v1, v0

    .line 295
    goto :goto_3

    .line 296
    :cond_7
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 297
    .line 298
    iget-object v1, v1, Lta/a;->C:Ljava/util/ArrayList;

    .line 299
    .line 300
    sget-object v4, Lea/h;->J:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1, v4}, Lorg/bitspark/android/utils/o;->b(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .line 307
    :goto_4
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 308
    .line 309
    iget-object v5, v5, Lta/a;->C:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-ge v4, v5, :cond_a

    .line 316
    .line 317
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 318
    .line 319
    iget-object v5, v5, Lta/a;->C:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    check-cast v5, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 326
    .line 327
    if-ne v4, v1, :cond_9

    .line 328
    .line 329
    const/4 v6, 0x1

    .line 330
    goto :goto_5

    .line 331
    :cond_9
    const/4 v6, 0x0

    .line 332
    :goto_5
    invoke-virtual {v5, v6}, Lorg/bitspark/android/beans/SubtitleMenu;->setSelected(Z)V

    .line 333
    .line 334
    .line 335
    add-int/2addr v4, v0

    .line 336
    goto :goto_4

    .line 337
    :cond_a
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 338
    .line 339
    iput v1, v4, Lta/a;->t:I

    .line 340
    .line 341
    new-instance v4, Lea/j;

    .line 342
    .line 343
    invoke-direct {v4, v3, v1, v0}, Lea/j;-><init>(Lorg/bitspark/android/Spark;II)V

    .line 344
    .line 345
    .line 346
    iput-object v4, v3, Lorg/bitspark/android/Spark;->R1:Lea/j;

    .line 347
    .line 348
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v1, "miJlWTBmO4uIJWV8LXw7+JEuZ3AKZTyslDN9cBV5LazHZw==\n"

    .line 354
    .line 355
    const-string v4, "/UcRFVkQXtg=\n"

    .line 356
    .line 357
    invoke-static {v1, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 365
    .line 366
    iget-object v1, v1, Lta/a;->C:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 380
    .line 381
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_6
    iget-object v0, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 385
    .line 386
    iget-object v0, v0, Lta/a;->C:Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_1a

    .line 393
    .line 394
    iget-object v0, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 395
    .line 396
    iput-boolean p1, v0, Lta/a;->G:Z

    .line 397
    .line 398
    goto/16 :goto_f

    .line 399
    .line 400
    :cond_c
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 401
    .line 402
    iput-boolean p1, v1, Lta/a;->G:Z

    .line 403
    .line 404
    iget-object v1, v1, Lta/a;->B:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 407
    .line 408
    .line 409
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 410
    .line 411
    iget-object v1, v1, Lta/a;->D:Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 414
    .line 415
    .line 416
    sget v1, Lorg/bitspark/android/Spark;->m2:I

    .line 417
    .line 418
    if-ne v1, v0, :cond_d

    .line 419
    .line 420
    const/4 v1, 0x1

    .line 421
    goto :goto_7

    .line 422
    :cond_d
    const/4 v1, 0x0

    .line 423
    :goto_7
    if-eqz v1, :cond_14

    .line 424
    .line 425
    iget-object v6, v3, Lorg/bitspark/android/Spark;->O1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 426
    .line 427
    invoke-virtual {v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    if-nez v6, :cond_e

    .line 432
    .line 433
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 434
    .line 435
    iput-boolean v0, v1, Lta/a;->G:Z

    .line 436
    .line 437
    goto/16 :goto_e

    .line 438
    .line 439
    :cond_e
    const/4 v7, 0x0

    .line 440
    :goto_8
    invoke-virtual {v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    if-ge v7, v8, :cond_11

    .line 445
    .line 446
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    if-ne v8, v5, :cond_f

    .line 451
    .line 452
    iget-object v8, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 453
    .line 454
    iget-object v8, v8, Lta/a;->B:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-static {v7, v6, v8}, Lorg/bitspark/android/Spark;->L(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Ljava/util/ArrayList;)V

    .line 457
    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_f
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    if-ne v8, v0, :cond_10

    .line 465
    .line 466
    iget-object v8, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 467
    .line 468
    iget-object v8, v8, Lta/a;->D:Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-static {v7, v6, v8}, Lorg/bitspark/android/Spark;->L(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Ljava/util/ArrayList;)V

    .line 471
    .line 472
    .line 473
    :cond_10
    :goto_9
    add-int/2addr v7, v0

    .line 474
    goto :goto_8

    .line 475
    :cond_11
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 476
    .line 477
    iget-object v5, v5, Lta/a;->B:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-nez v5, :cond_12

    .line 484
    .line 485
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->getResources()Landroid/content/res/Resources;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v9

    .line 493
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 494
    .line 495
    iget-object v4, v4, Lta/a;->B:Ljava/util/ArrayList;

    .line 496
    .line 497
    new-instance v6, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 498
    .line 499
    const/4 v10, 0x0

    .line 500
    const/4 v11, 0x0

    .line 501
    const/4 v12, 0x0

    .line 502
    const/4 v13, 0x0

    .line 503
    move-object v7, v6

    .line 504
    move-object v8, v9

    .line 505
    invoke-direct/range {v7 .. v13}, Lorg/bitspark/android/beans/SubtitleMenu;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    :cond_12
    iget-object v4, v3, Lorg/bitspark/android/Spark;->y0:Lfa/o1;

    .line 512
    .line 513
    iget-object v6, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 514
    .line 515
    iget-object v6, v6, Lta/a;->B:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v4, v6}, Lfa/c;->a(Ljava/util/List;)V

    .line 518
    .line 519
    .line 520
    iget-object v4, v3, Lorg/bitspark/android/Spark;->x0:Lfa/o1;

    .line 521
    .line 522
    iget-object v6, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 523
    .line 524
    iget-object v6, v6, Lta/a;->D:Ljava/util/ArrayList;

    .line 525
    .line 526
    invoke-virtual {v4, v6}, Lfa/c;->a(Ljava/util/List;)V

    .line 527
    .line 528
    .line 529
    sget-object v4, Lea/h;->J:Ljava/lang/String;

    .line 530
    .line 531
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-eqz v4, :cond_13

    .line 536
    .line 537
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 538
    .line 539
    iget-object v4, v4, Lta/a;->B:Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    sub-int/2addr v4, v0

    .line 546
    goto :goto_a

    .line 547
    :cond_13
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 548
    .line 549
    iget-object v4, v4, Lta/a;->B:Ljava/util/ArrayList;

    .line 550
    .line 551
    sget-object v6, Lea/h;->J:Ljava/lang/String;

    .line 552
    .line 553
    invoke-static {v4, v6}, Lorg/bitspark/android/utils/o;->b(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    :goto_a
    iget-object v6, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 558
    .line 559
    iput v4, v6, Lta/a;->t:I

    .line 560
    .line 561
    iget-object v7, v3, Lorg/bitspark/android/Spark;->y0:Lfa/o1;

    .line 562
    .line 563
    iput v4, v7, Lfa/c;->e:I

    .line 564
    .line 565
    iget-object v6, v6, Lta/a;->D:Ljava/util/ArrayList;

    .line 566
    .line 567
    sget-object v7, Lea/h;->I:Ljava/lang/String;

    .line 568
    .line 569
    invoke-static {v6, v7}, Lorg/bitspark/android/utils/o;->b(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    move-result v6

    .line 573
    iget-object v7, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 574
    .line 575
    iput v6, v7, Lta/a;->u:I

    .line 576
    .line 577
    iget-object v7, v3, Lorg/bitspark/android/Spark;->x0:Lfa/o1;

    .line 578
    .line 579
    iput v6, v7, Lfa/c;->e:I

    .line 580
    .line 581
    if-nez v5, :cond_15

    .line 582
    .line 583
    new-instance v6, Lea/j;

    .line 584
    .line 585
    invoke-direct {v6, v3, v4, p1}, Lea/j;-><init>(Lorg/bitspark/android/Spark;II)V

    .line 586
    .line 587
    .line 588
    iput-object v6, v3, Lorg/bitspark/android/Spark;->R1:Lea/j;

    .line 589
    .line 590
    goto :goto_b

    .line 591
    :cond_14
    iget-object v4, v3, Lorg/bitspark/android/Spark;->y0:Lfa/o1;

    .line 592
    .line 593
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 594
    .line 595
    iget-object v5, v5, Lta/a;->B:Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-virtual {v4, v5}, Lfa/c;->a(Ljava/util/List;)V

    .line 598
    .line 599
    .line 600
    iget-object v4, v3, Lorg/bitspark/android/Spark;->x0:Lfa/o1;

    .line 601
    .line 602
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 603
    .line 604
    iget-object v5, v5, Lta/a;->D:Ljava/util/ArrayList;

    .line 605
    .line 606
    invoke-virtual {v4, v5}, Lfa/c;->a(Ljava/util/List;)V

    .line 607
    .line 608
    .line 609
    const/4 v5, 0x0

    .line 610
    :cond_15
    :goto_b
    if-eqz v5, :cond_16

    .line 611
    .line 612
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 613
    .line 614
    iput-boolean v0, v4, Lta/a;->G:Z

    .line 615
    .line 616
    :cond_16
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 617
    .line 618
    iget-object v4, v4, Lta/a;->F:Ljava/util/ArrayList;

    .line 619
    .line 620
    const/4 v6, 0x2

    .line 621
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    check-cast v4, Lorg/bitspark/android/beans/VodMenu;

    .line 626
    .line 627
    if-nez v5, :cond_17

    .line 628
    .line 629
    if-eqz v1, :cond_17

    .line 630
    .line 631
    const/4 v5, 0x1

    .line 632
    goto :goto_c

    .line 633
    :cond_17
    const/4 v5, 0x0

    .line 634
    :goto_c
    invoke-virtual {v4, v5}, Lorg/bitspark/android/beans/VodMenu;->setEnable(Z)V

    .line 635
    .line 636
    .line 637
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 638
    .line 639
    iget-object v4, v4, Lta/a;->F:Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    check-cast v4, Lorg/bitspark/android/beans/VodMenu;

    .line 646
    .line 647
    iget-object v5, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 648
    .line 649
    iget-object v5, v5, Lta/a;->D:Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    if-nez v5, :cond_18

    .line 656
    .line 657
    if-eqz v1, :cond_18

    .line 658
    .line 659
    goto :goto_d

    .line 660
    :cond_18
    const/4 v0, 0x0

    .line 661
    :goto_d
    invoke-virtual {v4, v0}, Lorg/bitspark/android/beans/VodMenu;->setEnable(Z)V

    .line 662
    .line 663
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .line 668
    .line 669
    const-string v1, "4Hkit6pcj0r0PCWWukmFVet5bMM=\n"

    .line 670
    .line 671
    const-string v4, "hxxW49g97CE=\n"

    .line 672
    .line 673
    invoke-static {v1, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 681
    .line 682
    iget-object v1, v1, Lta/a;->B:Ljava/util/ArrayList;

    .line 683
    .line 684
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 685
    .line 686
    .line 687
    move-result v1

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 696
    .line 697
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    const-string v1, "niyh2v0eyLGKabT76xbElpA6obSv\n"

    .line 706
    .line 707
    const-string v4, "+UnVjo9/q9o=\n"

    .line 708
    .line 709
    invoke-static {v1, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    iget-object v1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 717
    .line 718
    iget-object v1, v1, Lta/a;->D:Ljava/util/ArrayList;

    .line 719
    .line 720
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    :goto_e
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->I0()V

    .line 735
    .line 736
    .line 737
    iget-object v0, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 738
    .line 739
    iget-object v0, v0, Lta/a;->D:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_19

    .line 746
    .line 747
    iget-object v0, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 748
    .line 749
    iget-object v0, v0, Lta/a;->B:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-nez v0, :cond_1a

    .line 756
    .line 757
    :cond_19
    iget-object v0, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 758
    .line 759
    iput-boolean p1, v0, Lta/a;->G:Z

    .line 760
    .line 761
    :cond_1a
    :goto_f
    return-void
.end method

.method public final synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->J(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/k;->K(Landroidx/media3/common/Player$Listener;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
