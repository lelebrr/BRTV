.class public final synthetic Landroidx/media3/common/util/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg4/a;La4/j;La4/s;La4/i;)V
    .locals 0

    .line 2
    const/4 p3, 0x6

    iput p3, p0, Landroidx/media3/common/util/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/media3/common/util/i;->a:I

    iput-object p1, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/common/util/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, La4/j;

    .line 9
    .line 10
    iget-object v1, v0, La4/j;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, La4/i;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lg4/a;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v4, Lg4/a;->f:Ljava/util/logging/Logger;

    .line 24
    .line 25
    const-string v5, "Transport backend \'"

    .line 26
    .line 27
    :try_start_0
    iget-object v6, v3, Lg4/a;->c:Lb4/f;

    .line 28
    .line 29
    invoke-virtual {v6, v1}, Lb4/f;->a(Ljava/lang/String;)Lb4/g;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\' is not registered"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    check-cast v6, Ly3/d;

    .line 64
    .line 65
    invoke-virtual {v6, v2}, Ly3/d;->a(La4/i;)La4/i;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, v3, Lg4/a;->e:Lj4/c;

    .line 70
    .line 71
    new-instance v5, Landroidx/media3/exoplayer/hls/b;

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    invoke-direct {v5, v3, v0, v1, v6}, Landroidx/media3/exoplayer/hls/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    check-cast v2, Li4/g;

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "Error scheduling event "

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, La4/k;

    .line 108
    .line 109
    iget-object v1, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, La2/a;

    .line 112
    .line 113
    iget-object v2, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    :try_start_1
    iget-object v0, v0, La4/k;->b:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v0}, Lu7/d;->f(Landroid/content/Context;)Lb1/p;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    iget-object v3, v0, Lb1/p;->a:Lb1/h;

    .line 129
    .line 130
    check-cast v3, Lb1/o;

    .line 131
    .line 132
    iget-object v4, v3, Lb1/o;->d:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    iput-object v2, v3, Lb1/o;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 136
    .line 137
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :try_start_3
    iget-object v0, v0, Lb1/p;->a:Lb1/h;

    .line 139
    .line 140
    new-instance v3, Lb1/k;

    .line 141
    .line 142
    invoke-direct {v3, v1, v2}, Lb1/k;-><init>(La2/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v3}, Lb1/h;->a(La2/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    goto :goto_2

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :try_start_5
    throw v0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 155
    .line 156
    const-string v3, "EmojiCompat font provider not available on this device."

    .line 157
    .line 158
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    :goto_2
    invoke-virtual {v1, v0}, La2/a;->H(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 166
    .line 167
    .line 168
    :goto_3
    return-void

    .line 169
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource;

    .line 172
    .line 173
    iget-object v1, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    .line 176
    .line 177
    iget-object v2, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v2, Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 180
    .line 181
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->c(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Ljava/lang/Exception;

    .line 188
    .line 189
    iget-object v1, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 192
    .line 193
    iget-object v2, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 196
    .line 197
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_3
    iget-object v0, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 204
    .line 205
    iget-object v1, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 208
    .line 209
    iget-object v2, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v2, Landroidx/media3/common/Format;

    .line 212
    .line 213
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->h(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_4
    iget-object v0, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 218
    .line 219
    iget-object v1, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 222
    .line 223
    iget-object v2, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Ljava/lang/Runnable;

    .line 226
    .line 227
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Util;->a(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_5
    iget-object v0, p0, Landroidx/media3/common/util/i;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 234
    .line 235
    iget-object v1, p0, Landroidx/media3/common/util/i;->d:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v1, Lcom/google/common/util/concurrent/AsyncFunction;

    .line 238
    .line 239
    iget-object v2, p0, Landroidx/media3/common/util/i;->c:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 242
    .line 243
    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Util;->c(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
