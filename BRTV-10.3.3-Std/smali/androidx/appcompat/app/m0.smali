.class public final synthetic Landroidx/appcompat/app/m0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/app/m0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/m0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/appcompat/app/m0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/m0;->c:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/appcompat/app/m0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Landroidx/appcompat/app/m0;->a:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Landroidx/profileinstaller/ProfileInstallerInitializer;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x1c

    .line 19
    .line 20
    if-lt v2, v3, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lt1/g;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v2, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance v3, Ljava/util/Random;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 43
    .line 44
    .line 45
    const/16 v4, 0x3e8

    .line 46
    .line 47
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    new-instance v4, Landroidx/appcompat/app/n;

    .line 56
    .line 57
    check-cast v1, Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {v4, v1, v0}, Landroidx/appcompat/app/n;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    add-int/lit16 v3, v3, 0x1388

    .line 63
    .line 64
    int-to-long v0, v3

    .line 65
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    check-cast v2, Lqa/g;

    .line 70
    .line 71
    iget-object v0, v2, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 72
    .line 73
    invoke-static {v0}, Landroidx/lifecycle/o0;->d(Landroidx/lifecycle/w;)Landroidx/lifecycle/r;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v3, Lqa/f;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-direct {v3, v2, v1, v4}, Lqa/f;-><init>(Lqa/g;Ljava/lang/String;La9/d;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "h6sQaU6D\n"

    .line 86
    .line 87
    const-string v2, "u994AD29cKM=\n"

    .line 88
    .line 89
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    const-string v1, "z5itirc=\n"

    .line 93
    .line 94
    const-string v2, "rfTC6dwi1S8=\n"

    .line 95
    .line 96
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lt9/b0;->b:Lz9/c;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-static {v0, v1, v3, v2}, Lt9/u;->k(Lt9/s;Lt9/p;Li9/p;I)Lt9/x;

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_1
    check-cast v2, Lm0/a;

    .line 107
    .line 108
    check-cast v1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-interface {v2, v1}, Lm0/a;->accept(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_2
    check-cast v2, Lq1/g0;

    .line 115
    .line 116
    iget-object v0, v2, Lq1/g0;->k:Ljava/util/Map;

    .line 117
    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, v2, Lq1/g0;->l:Lq1/h0;

    .line 128
    .line 129
    iget-object v0, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 130
    .line 131
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 132
    .line 133
    iget-object v0, v0, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 134
    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Lq1/g0;->a(Landroidx/appcompat/app/r0;)Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    iget-object v3, v2, Lq1/j0;->a:Landroid/os/Messenger;

    .line 144
    .line 145
    const/4 v4, 0x5

    .line 146
    const/4 v8, 0x0

    .line 147
    invoke-static/range {v3 .. v8}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_1
    return-void

    .line 151
    :pswitch_3
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 155
    .line 156
    check-cast v1, Landroid/app/job/JobParameters;

    .line 157
    .line 158
    invoke-virtual {v2, v1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_4
    check-cast v2, Le0/b;

    .line 163
    .line 164
    check-cast v1, Landroid/graphics/Typeface;

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Le0/b;->j(Landroid/graphics/Typeface;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_5
    check-cast v2, Landroidx/media3/ui/PlayerView;

    .line 171
    .line 172
    check-cast v1, Landroid/graphics/Bitmap;

    .line 173
    .line 174
    invoke-static {v2, v1}, Landroidx/media3/ui/PlayerView;->a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_6
    check-cast v2, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 179
    .line 180
    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 181
    .line 182
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_7
    check-cast v2, Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 187
    .line 188
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 189
    .line 190
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a(Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_8
    check-cast v2, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 195
    .line 196
    check-cast v1, Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->l(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_9
    check-cast v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 203
    .line 204
    check-cast v1, Landroid/media/metrics/PlaybackStateEvent;

    .line 205
    .line 206
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_a
    check-cast v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 211
    .line 212
    check-cast v1, Landroid/media/metrics/PlaybackMetrics;

    .line 213
    .line 214
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_b
    check-cast v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 219
    .line 220
    check-cast v1, Landroid/media/metrics/PlaybackErrorEvent;

    .line 221
    .line 222
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_c
    check-cast v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 227
    .line 228
    check-cast v1, Landroid/media/metrics/NetworkEvent;

    .line 229
    .line 230
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/NetworkEvent;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_d
    check-cast v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 235
    .line 236
    check-cast v1, Landroid/media/metrics/TrackChangeEvent;

    .line 237
    .line 238
    invoke-static {v2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/TrackChangeEvent;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_e
    check-cast v1, Landroidx/media3/common/util/ConditionVariable;

    .line 243
    .line 244
    check-cast v2, Landroid/content/Context;

    .line 245
    .line 246
    invoke-static {v2, v1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_f
    check-cast v2, Landroidx/media3/common/SimpleBasePlayer;

    .line 251
    .line 252
    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 253
    .line 254
    invoke-static {v2, v1}, Landroidx/media3/common/SimpleBasePlayer;->p(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_10
    check-cast v1, Ljava/lang/Runnable;

    .line 259
    .line 260
    check-cast v2, Landroidx/appcompat/app/n0;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Landroidx/appcompat/app/n0;->a()V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    invoke-virtual {v2}, Landroidx/appcompat/app/n0;->a()V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
