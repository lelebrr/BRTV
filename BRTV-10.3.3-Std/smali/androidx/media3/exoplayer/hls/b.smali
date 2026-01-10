.class public final synthetic Landroidx/media3/exoplayer/hls/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Lj4/b;
.implements Li4/e;
.implements Li8/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/exoplayer/hls/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lp8/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lka/l0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "sU7MxaI=\n"

    .line 13
    .line 14
    const-string v3, "8x2aqsa/97w=\n"

    .line 15
    .line 16
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const-string v2, "fdoOvBwFo/xn3hGnHBqV2m7RX6YXJaLcbNoMukNW\n"

    .line 20
    .line 21
    const-string v3, "D79/yXl2178=\n"

    .line 22
    .line 23
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-string v2, "Kg==\n"

    .line 27
    .line 28
    const-string v3, "cTPGa62Qc6o=\n"

    .line 29
    .line 30
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const-string p1, "of7LtMw=\n"

    .line 45
    .line 46
    const-string v0, "462d26jF1sE=\n"

    .line 47
    .line 48
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "ma0HUgOV1CCF+XTP32JUyGgkzqOGbh61Y3OznOQZDd8fX9TPxnfyO5etOkIMEx7qHnL1\n"

    .line 53
    .line 54
    const-string v1, "9sNUJ2D2sVM=\n"

    .line 55
    .line 56
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_0
    const-string v2, "Bg==\n"

    .line 68
    .line 69
    const-string v4, "fdHLvdYSZpY=\n"

    .line 70
    .line 71
    invoke-static {v2, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/JSONReader;

    .line 82
    .line 83
    new-instance v4, Ljava/io/StringReader;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .line 90
    .line 91
    const-class v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean;

    .line 98
    .line 99
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_1

    .line 104
    .line 105
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_1

    .line 114
    .line 115
    const-string v0, "gUWq8t8=\n"

    .line 116
    .line 117
    const-string v1, "wxb8nbu3MUs=\n"

    .line 118
    .line 119
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v3, "PmiETYNPUeciPPc=\n"

    .line 129
    .line 130
    const-string v4, "UQbXOOAsNJQ=\n"

    .line 131
    .line 132
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 155
    .line 156
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Lp8/b;->c(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_0
    move-exception p1

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 166
    .line 167
    new-instance v2, La/f;

    .line 168
    .line 169
    const/16 v3, 0x19

    .line 170
    .line 171
    invoke-direct {v2, v3, v1}, La/f;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    iget-object p1, v1, Lka/l0;->d:Lka/m0;

    .line 178
    .line 179
    iget-object v1, p1, Lka/m0;->v0:Lta/a;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    iput-boolean v2, v1, Lta/a;->v:Z

    .line 183
    .line 184
    iget-object p1, p1, Lka/m0;->z0:Ljava/util/HashMap;

    .line 185
    .line 186
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 193
    .line 194
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :cond_2
    :goto_1
    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/media3/common/MediaItem;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Landroidx/media3/common/AdViewProvider;

    .line 35
    .line 36
    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->a(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroidx/media3/common/Timeline;

    .line 51
    .line 52
    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->e(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "bytes"

    .line 4
    .line 5
    const-string v3, "PRAGMA page_size"

    .line 6
    .line 7
    const-string v4, "PRAGMA page_count"

    .line 8
    .line 9
    const/4 v6, 0x5

    .line 10
    const/4 v7, 0x4

    .line 11
    const/4 v8, 0x3

    .line 12
    sget-object v9, Le4/c;->d:Le4/c;

    .line 13
    .line 14
    const/4 v10, 0x2

    .line 15
    iget-object v11, v1, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v12, 0x0

    .line 18
    iget-object v13, v1, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v14, v1, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v15, 0x1

    .line 23
    iget v0, v1, Landroidx/media3/exoplayer/hls/b;->a:I

    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object/from16 v0, p1

    .line 29
    .line 30
    check-cast v0, Landroid/database/Cursor;

    .line 31
    .line 32
    check-cast v14, Li4/g;

    .line 33
    .line 34
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    move-object v5, v13

    .line 42
    check-cast v5, Ljava/util/HashMap;

    .line 43
    .line 44
    if-eqz v2, :cond_8

    .line 45
    .line 46
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    sget-object v16, Le4/c;->b:Le4/c;

    .line 55
    .line 56
    if-nez v12, :cond_0

    .line 57
    .line 58
    :goto_1
    move-object v12, v9

    .line 59
    move-object/from16 v6, v16

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    if-ne v12, v15, :cond_1

    .line 63
    .line 64
    sget-object v16, Le4/c;->c:Le4/c;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    if-ne v12, v10, :cond_2

    .line 68
    .line 69
    move-object v6, v9

    .line 70
    move-object v12, v6

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    if-ne v12, v8, :cond_3

    .line 73
    .line 74
    sget-object v16, Le4/c;->e:Le4/c;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    if-ne v12, v7, :cond_4

    .line 78
    .line 79
    sget-object v16, Le4/c;->f:Le4/c;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    if-ne v12, v6, :cond_5

    .line 83
    .line 84
    sget-object v16, Le4/c;->g:Le4/c;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const/4 v6, 0x6

    .line 88
    if-ne v12, v6, :cond_6

    .line 89
    .line 90
    sget-object v16, Le4/c;->h:Le4/c;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const-string v12, "SQLiteEventStore"

    .line 98
    .line 99
    const-string v7, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 100
    .line 101
    invoke-static {v12, v7, v6}, Lo9/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_2
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    if-nez v16, :cond_7

    .line 114
    .line 115
    new-instance v7, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/util/List;

    .line 128
    .line 129
    new-instance v5, Le4/d;

    .line 130
    .line 131
    invoke-direct {v5, v8, v9, v6}, Le4/d;-><init>(JLe4/c;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-object v9, v12

    .line 138
    const/4 v6, 0x5

    .line 139
    const/4 v7, 0x4

    .line 140
    const/4 v8, 0x3

    .line 141
    const/4 v12, 0x0

    .line 142
    goto :goto_0

    .line 143
    :cond_8
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    move-object v5, v11

    .line 156
    check-cast v5, La0/f;

    .line 157
    .line 158
    if-eqz v2, :cond_9

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .line 166
    sget v6, Le4/e;->c:I

    .line 167
    .line 168
    new-instance v6, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Ljava/util/List;

    .line 184
    .line 185
    new-instance v7, Le4/e;

    .line 186
    .line 187
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-direct {v7, v6, v2}, Le4/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, v5, La0/f;->d:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_9
    iget-object v0, v14, Li4/g;->b:Lk4/a;

    .line 203
    .line 204
    invoke-interface {v0}, Lk4/a;->c()J

    .line 205
    .line 206
    .line 207
    move-result-wide v6

    .line 208
    invoke-virtual {v14}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 213
    .line 214
    .line 215
    const/4 v0, 0x0

    .line 216
    :try_start_0
    new-array v8, v0, [Ljava/lang/String;

    .line 217
    .line 218
    const-string v9, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 219
    .line 220
    invoke-virtual {v2, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 221
    .line 222
    .line 223
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 225
    .line 226
    .line 227
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 228
    .line 229
    .line 230
    move-result-wide v9

    .line 231
    new-instance v0, Le4/g;

    .line 232
    .line 233
    invoke-direct {v0, v9, v10, v6, v7}, Le4/g;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    .line 235
    .line 236
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 243
    .line 244
    .line 245
    iput-object v0, v5, La0/f;->b:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-virtual {v14}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 256
    .line 257
    .line 258
    move-result-wide v6

    .line 259
    invoke-virtual {v14}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    mul-long v2, v2, v6

    .line 272
    .line 273
    sget-object v0, Li4/a;->f:Li4/a;

    .line 274
    .line 275
    new-instance v4, Le4/f;

    .line 276
    .line 277
    iget-wide v6, v0, Li4/a;->a:J

    .line 278
    .line 279
    invoke-direct {v4, v2, v3, v6, v7}, Le4/f;-><init>(JJ)V

    .line 280
    .line 281
    .line 282
    new-instance v0, Le4/b;

    .line 283
    .line 284
    invoke-direct {v0, v4}, Le4/b;-><init>(Le4/f;)V

    .line 285
    .line 286
    .line 287
    iput-object v0, v5, La0/f;->c:Ljava/lang/Object;

    .line 288
    .line 289
    iget-object v0, v14, Li4/g;->e:Lc4/a;

    .line 290
    .line 291
    invoke-interface {v0}, Lc4/a;->get()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Ljava/lang/String;

    .line 296
    .line 297
    iput-object v0, v5, La0/f;->e:Ljava/lang/Object;

    .line 298
    .line 299
    new-instance v0, Le4/a;

    .line 300
    .line 301
    iget-object v2, v5, La0/f;->b:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v2, Le4/g;

    .line 304
    .line 305
    iget-object v3, v5, La0/f;->d:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v3, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    iget-object v4, v5, La0/f;->c:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v4, Le4/b;

    .line 316
    .line 317
    iget-object v5, v5, La0/f;->e:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v5, Ljava/lang/String;

    .line 320
    .line 321
    invoke-direct {v0, v2, v3, v4, v5}, Le4/a;-><init>(Le4/g;Ljava/util/List;Le4/b;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    goto :goto_4

    .line 327
    :catchall_1
    move-exception v0

    .line 328
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    .line 330
    .line 331
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    :goto_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 333
    .line 334
    .line 335
    throw v0

    .line 336
    :pswitch_0
    move-object/from16 v0, p1

    .line 337
    .line 338
    check-cast v0, Landroid/database/Cursor;

    .line 339
    .line 340
    check-cast v14, Li4/g;

    .line 341
    .line 342
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_12

    .line 350
    .line 351
    const/4 v3, 0x0

    .line 352
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v4

    .line 356
    const/4 v3, 0x7

    .line 357
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_a

    .line 362
    .line 363
    const/4 v3, 0x1

    .line 364
    goto :goto_6

    .line 365
    :cond_a
    const/4 v3, 0x0

    .line 366
    :goto_6
    new-instance v6, La4/h;

    .line 367
    .line 368
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 369
    .line 370
    .line 371
    new-instance v7, Ljava/util/HashMap;

    .line 372
    .line 373
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 374
    .line 375
    .line 376
    iput-object v7, v6, La4/h;->f:Ljava/lang/Object;

    .line 377
    .line 378
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    if-eqz v7, :cond_11

    .line 383
    .line 384
    iput-object v7, v6, La4/h;->a:Ljava/io/Serializable;

    .line 385
    .line 386
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 387
    .line 388
    .line 389
    move-result-wide v7

    .line 390
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    iput-object v7, v6, La4/h;->d:Ljava/lang/Object;

    .line 395
    .line 396
    const/4 v7, 0x3

    .line 397
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 398
    .line 399
    .line 400
    move-result-wide v8

    .line 401
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    iput-object v8, v6, La4/h;->e:Ljava/io/Serializable;

    .line 406
    .line 407
    if-eqz v3, :cond_c

    .line 408
    .line 409
    new-instance v3, La4/n;

    .line 410
    .line 411
    const/4 v8, 0x4

    .line 412
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    if-nez v9, :cond_b

    .line 417
    .line 418
    sget-object v8, Li4/g;->f:Lx3/b;

    .line 419
    .line 420
    :goto_7
    const/4 v9, 0x5

    .line 421
    goto :goto_8

    .line 422
    :cond_b
    new-instance v8, Lx3/b;

    .line 423
    .line 424
    invoke-direct {v8, v9}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto :goto_7

    .line 428
    :goto_8
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 429
    .line 430
    .line 431
    move-result-object v12

    .line 432
    invoke-direct {v3, v8, v12}, La4/n;-><init>(Lx3/b;[B)V

    .line 433
    .line 434
    .line 435
    iput-object v3, v6, La4/h;->c:Ljava/lang/Object;

    .line 436
    .line 437
    move-object/from16 v19, v14

    .line 438
    .line 439
    :goto_9
    const/4 v1, 0x6

    .line 440
    goto/16 :goto_d

    .line 441
    .line 442
    :cond_c
    const/4 v9, 0x5

    .line 443
    new-instance v3, La4/n;

    .line 444
    .line 445
    const/4 v8, 0x4

    .line 446
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v12

    .line 450
    if-nez v12, :cond_d

    .line 451
    .line 452
    sget-object v12, Li4/g;->f:Lx3/b;

    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_d
    new-instance v7, Lx3/b;

    .line 456
    .line 457
    invoke-direct {v7, v12}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    move-object v12, v7

    .line 461
    :goto_a
    invoke-virtual {v14}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 462
    .line 463
    .line 464
    move-result-object v17

    .line 465
    filled-new-array {v2}, [Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v19

    .line 469
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    filled-new-array {v7}, [Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v21

    .line 477
    const/16 v23, 0x0

    .line 478
    .line 479
    const-string v24, "sequence_num"

    .line 480
    .line 481
    const-string v18, "event_payloads"

    .line 482
    .line 483
    const-string v20, "event_id = ?"

    .line 484
    .line 485
    const/16 v22, 0x0

    .line 486
    .line 487
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .line 495
    .line 496
    const/4 v9, 0x0

    .line 497
    :goto_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 498
    .line 499
    .line 500
    move-result v17

    .line 501
    if-eqz v17, :cond_e

    .line 502
    .line 503
    const/4 v10, 0x0

    .line 504
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 505
    .line 506
    .line 507
    move-result-object v15

    .line 508
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    array-length v10, v15

    .line 512
    add-int/2addr v9, v10

    .line 513
    const/4 v10, 0x2

    .line 514
    const/4 v15, 0x1

    .line 515
    goto :goto_b

    .line 516
    :cond_e
    new-array v9, v9, [B

    .line 517
    .line 518
    const/4 v10, 0x0

    .line 519
    const/4 v15, 0x0

    .line 520
    :goto_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-ge v10, v1, :cond_f

    .line 525
    .line 526
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    check-cast v1, [B

    .line 531
    .line 532
    move-object/from16 p1, v8

    .line 533
    .line 534
    array-length v8, v1

    .line 535
    move-object/from16 v19, v14

    .line 536
    .line 537
    const/4 v14, 0x0

    .line 538
    invoke-static {v1, v14, v9, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    .line 540
    .line 541
    array-length v1, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 542
    add-int/2addr v15, v1

    .line 543
    const/4 v1, 0x1

    .line 544
    add-int/2addr v10, v1

    .line 545
    move-object/from16 v8, p1

    .line 546
    .line 547
    move-object/from16 v14, v19

    .line 548
    .line 549
    goto :goto_c

    .line 550
    :cond_f
    move-object/from16 v19, v14

    .line 551
    .line 552
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 553
    .line 554
    .line 555
    invoke-direct {v3, v12, v9}, La4/n;-><init>(Lx3/b;[B)V

    .line 556
    .line 557
    .line 558
    iput-object v3, v6, La4/h;->c:Ljava/lang/Object;

    .line 559
    .line 560
    goto :goto_9

    .line 561
    :goto_d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    if-nez v3, :cond_10

    .line 566
    .line 567
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    iput-object v3, v6, La4/h;->b:Ljava/io/Serializable;

    .line 576
    .line 577
    :cond_10
    invoke-virtual {v6}, La4/h;->c()La4/i;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    new-instance v6, Li4/b;

    .line 582
    .line 583
    move-object v7, v11

    .line 584
    check-cast v7, La4/j;

    .line 585
    .line 586
    invoke-direct {v6, v4, v5, v7, v3}, Li4/b;-><init>(JLa4/j;La4/i;)V

    .line 587
    .line 588
    .line 589
    move-object v3, v13

    .line 590
    check-cast v3, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-object/from16 v1, p0

    .line 596
    .line 597
    move-object/from16 v14, v19

    .line 598
    .line 599
    const/4 v10, 0x2

    .line 600
    const/4 v15, 0x1

    .line 601
    goto/16 :goto_5

    .line 602
    .line 603
    :catchall_2
    move-exception v0

    .line 604
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 605
    .line 606
    .line 607
    throw v0

    .line 608
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    .line 609
    .line 610
    const-string v1, "Null transportName"

    .line 611
    .line 612
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :cond_12
    const/4 v0, 0x0

    .line 617
    return-object v0

    .line 618
    :pswitch_1
    move-object v12, v9

    .line 619
    move-object/from16 v0, p1

    .line 620
    .line 621
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 622
    .line 623
    check-cast v14, Li4/g;

    .line 624
    .line 625
    invoke-virtual {v14}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 634
    .line 635
    .line 636
    move-result-wide v4

    .line 637
    invoke-virtual {v14}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 646
    .line 647
    .line 648
    move-result-wide v6

    .line 649
    mul-long v6, v6, v4

    .line 650
    .line 651
    iget-object v1, v14, Li4/g;->d:Li4/a;

    .line 652
    .line 653
    iget-wide v3, v1, Li4/a;->a:J

    .line 654
    .line 655
    check-cast v13, La4/i;

    .line 656
    .line 657
    iget-object v5, v13, La4/i;->a:Ljava/lang/String;

    .line 658
    .line 659
    cmp-long v8, v6, v3

    .line 660
    .line 661
    if-ltz v8, :cond_13

    .line 662
    .line 663
    const-wide/16 v0, 0x1

    .line 664
    .line 665
    invoke-virtual {v14, v0, v1, v12, v5}, Li4/g;->d(JLe4/c;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    const-wide/16 v0, -0x1

    .line 669
    .line 670
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    goto/16 :goto_13

    .line 675
    .line 676
    :cond_13
    check-cast v11, La4/j;

    .line 677
    .line 678
    invoke-static {v0, v11}, Li4/g;->b(Landroid/database/sqlite/SQLiteDatabase;La4/j;)Ljava/lang/Long;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    if-eqz v3, :cond_14

    .line 683
    .line 684
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 685
    .line 686
    .line 687
    move-result-wide v3

    .line 688
    goto :goto_e

    .line 689
    :cond_14
    new-instance v3, Landroid/content/ContentValues;

    .line 690
    .line 691
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 692
    .line 693
    .line 694
    const-string v4, "backend_name"

    .line 695
    .line 696
    iget-object v6, v11, La4/j;->a:Ljava/lang/String;

    .line 697
    .line 698
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    iget-object v4, v11, La4/j;->c:Lx3/c;

    .line 702
    .line 703
    invoke-static {v4}, Ll4/a;->a(Lx3/c;)I

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    const-string v6, "priority"

    .line 712
    .line 713
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    .line 715
    .line 716
    const/4 v4, 0x0

    .line 717
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 718
    .line 719
    .line 720
    move-result-object v6

    .line 721
    const-string v7, "next_request_ms"

    .line 722
    .line 723
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    .line 725
    .line 726
    iget-object v6, v11, La4/j;->b:[B

    .line 727
    .line 728
    if-eqz v6, :cond_15

    .line 729
    .line 730
    invoke-static {v6, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v6

    .line 734
    const-string v4, "extras"

    .line 735
    .line 736
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    :cond_15
    const-string v4, "transport_contexts"

    .line 740
    .line 741
    const/4 v6, 0x0

    .line 742
    invoke-virtual {v0, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 743
    .line 744
    .line 745
    move-result-wide v3

    .line 746
    :goto_e
    iget-object v6, v13, La4/i;->c:La4/n;

    .line 747
    .line 748
    iget-object v7, v6, La4/n;->b:[B

    .line 749
    .line 750
    array-length v8, v7

    .line 751
    iget v1, v1, Li4/a;->e:I

    .line 752
    .line 753
    if-gt v8, v1, :cond_16

    .line 754
    .line 755
    const/4 v8, 0x1

    .line 756
    goto :goto_f

    .line 757
    :cond_16
    const/4 v8, 0x0

    .line 758
    :goto_f
    new-instance v9, Landroid/content/ContentValues;

    .line 759
    .line 760
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 761
    .line 762
    .line 763
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    const-string v4, "context_id"

    .line 768
    .line 769
    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 770
    .line 771
    .line 772
    const-string v3, "transport_name"

    .line 773
    .line 774
    invoke-virtual {v9, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    iget-wide v3, v13, La4/i;->d:J

    .line 778
    .line 779
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    const-string v4, "timestamp_ms"

    .line 784
    .line 785
    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 786
    .line 787
    .line 788
    iget-wide v3, v13, La4/i;->e:J

    .line 789
    .line 790
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    const-string v4, "uptime_ms"

    .line 795
    .line 796
    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 797
    .line 798
    .line 799
    iget-object v3, v6, La4/n;->a:Lx3/b;

    .line 800
    .line 801
    iget-object v3, v3, Lx3/b;->a:Ljava/lang/String;

    .line 802
    .line 803
    const-string v4, "payload_encoding"

    .line 804
    .line 805
    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const-string v3, "code"

    .line 809
    .line 810
    iget-object v4, v13, La4/i;->b:Ljava/lang/Integer;

    .line 811
    .line 812
    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    .line 814
    .line 815
    const/4 v3, 0x0

    .line 816
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    const-string v5, "num_attempts"

    .line 821
    .line 822
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    .line 824
    .line 825
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    const-string v5, "inline"

    .line 830
    .line 831
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 832
    .line 833
    .line 834
    if-eqz v8, :cond_17

    .line 835
    .line 836
    move-object v3, v7

    .line 837
    goto :goto_10

    .line 838
    :cond_17
    new-array v3, v3, [B

    .line 839
    .line 840
    :goto_10
    const-string v4, "payload"

    .line 841
    .line 842
    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 843
    .line 844
    .line 845
    const-string v3, "events"

    .line 846
    .line 847
    const/4 v4, 0x0

    .line 848
    invoke-virtual {v0, v3, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 849
    .line 850
    .line 851
    move-result-wide v5

    .line 852
    const-string v3, "event_id"

    .line 853
    .line 854
    if-nez v8, :cond_18

    .line 855
    .line 856
    array-length v4, v7

    .line 857
    int-to-double v8, v4

    .line 858
    int-to-double v10, v1

    .line 859
    div-double/2addr v8, v10

    .line 860
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 861
    .line 862
    .line 863
    move-result-wide v8

    .line 864
    double-to-int v4, v8

    .line 865
    const/4 v8, 0x1

    .line 866
    :goto_11
    if-gt v8, v4, :cond_18

    .line 867
    .line 868
    const/4 v9, 0x1

    .line 869
    add-int/lit8 v10, v8, -0x1

    .line 870
    .line 871
    mul-int v10, v10, v1

    .line 872
    .line 873
    mul-int v9, v8, v1

    .line 874
    .line 875
    array-length v11, v7

    .line 876
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 877
    .line 878
    .line 879
    move-result v9

    .line 880
    invoke-static {v7, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 881
    .line 882
    .line 883
    move-result-object v9

    .line 884
    new-instance v10, Landroid/content/ContentValues;

    .line 885
    .line 886
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 887
    .line 888
    .line 889
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 890
    .line 891
    .line 892
    move-result-object v11

    .line 893
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 894
    .line 895
    .line 896
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 897
    .line 898
    .line 899
    move-result-object v11

    .line 900
    const-string v12, "sequence_num"

    .line 901
    .line 902
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v10, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 906
    .line 907
    .line 908
    const-string v9, "event_payloads"

    .line 909
    .line 910
    const/4 v11, 0x0

    .line 911
    invoke-virtual {v0, v9, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 912
    .line 913
    .line 914
    const/4 v9, 0x1

    .line 915
    add-int/2addr v8, v9

    .line 916
    goto :goto_11

    .line 917
    :cond_18
    iget-object v1, v13, La4/i;->f:Ljava/util/HashMap;

    .line 918
    .line 919
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 932
    .line 933
    .line 934
    move-result v2

    .line 935
    if-eqz v2, :cond_19

    .line 936
    .line 937
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    check-cast v2, Ljava/util/Map$Entry;

    .line 942
    .line 943
    new-instance v4, Landroid/content/ContentValues;

    .line 944
    .line 945
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 946
    .line 947
    .line 948
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 949
    .line 950
    .line 951
    move-result-object v7

    .line 952
    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 953
    .line 954
    .line 955
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v7

    .line 959
    check-cast v7, Ljava/lang/String;

    .line 960
    .line 961
    const-string v8, "name"

    .line 962
    .line 963
    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    check-cast v2, Ljava/lang/String;

    .line 971
    .line 972
    const-string v7, "value"

    .line 973
    .line 974
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    const-string v2, "event_metadata"

    .line 978
    .line 979
    const/4 v7, 0x0

    .line 980
    invoke-virtual {v0, v2, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 981
    .line 982
    .line 983
    goto :goto_12

    .line 984
    :cond_19
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    :goto_13
    return-object v0

    .line 989
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, v0

    .line 4
    check-cast v3, Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    move v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move-object v6, p3

    .line 19
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public execute()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg4/a;

    .line 4
    .line 5
    iget-object v1, v0, Lg4/a;->d:Li4/d;

    .line 6
    .line 7
    check-cast v1, Li4/g;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, La4/j;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, La4/i;

    .line 19
    .line 20
    const-string v4, "TransportRuntime."

    .line 21
    .line 22
    const-string v5, "SQLiteEventStore"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v6, "Storing event with priority="

    .line 31
    .line 32
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v6, v2, La4/j;->c:Lx3/c;

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, ", name="

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v6, v3, La4/i;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, " for destination "

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v6, v2, La4/j;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    new-instance v4, Landroidx/media3/exoplayer/hls/b;

    .line 68
    .line 69
    const/4 v5, 0x5

    .line 70
    invoke-direct {v4, v1, v3, v2, v5}, Landroidx/media3/exoplayer/hls/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Li4/g;->c(Li4/e;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Lg4/a;->a:Lh4/d;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v3, 0x1

    .line 86
    invoke-virtual {v0, v2, v3, v1}, Lh4/d;->a(La4/j;IZ)V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    return-object v0
.end method
