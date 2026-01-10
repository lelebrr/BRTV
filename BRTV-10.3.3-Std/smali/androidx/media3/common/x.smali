.class public final synthetic Landroidx/media3/common/x;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;
.implements Landroidx/media3/common/util/Consumer;
.implements Lokhttp3/EventListener$Factory;
.implements Lj4/b;
.implements Li8/b;
.implements Ll8/a;
.implements Lq1/a0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/x;->a:I

    iput-object p2, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq1/n1;Lq1/m1;)V
    .locals 0

    .line 2
    const/16 p2, 0x13

    iput p2, p0, Landroidx/media3/common/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lp8/b;)V
    .locals 5

    .line 1
    const-string v0, "ZXnv2yaC31hAc+zK\n"

    .line 2
    .line 3
    const-string v1, "LRaCvmDwvj8=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const-string v0, "1nWk1zntY5TMcbvMOfJVssV+9c0yzWK0x3Wm0Wa+\n"

    .line 9
    .line 10
    const-string v1, "pBDVolyeF9c=\n"

    .line 11
    .line 12
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const-string v0, "lA==\n"

    .line 16
    .line 17
    const-string v1, "z7tvmr+sUp0=\n"

    .line 18
    .line 19
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string p1, "GC9RxZPVJdI9JVLU\n"

    .line 34
    .line 35
    const-string v0, "UEA8oNWnRLU=\n"

    .line 36
    .line 37
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "6PVbcsNEmaH0oSjvH7MZSRl8koNGv1M0EivvvCTIQF5uB4jvBqa/uub1ZmLMwlNrbyqp\n"

    .line 42
    .line 43
    const-string v1, "h5sIB6An/NI=\n"

    .line 44
    .line 45
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    const-string v0, "Vw==\n"

    .line 57
    .line 58
    const-string v2, "LKTBSir4Abg=\n"

    .line 59
    .line 60
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONReader;

    .line 71
    .line 72
    new-instance v2, Ljava/io/StringReader;

    .line 73
    .line 74
    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;)V

    .line 78
    .line 79
    .line 80
    const-class v1, Lorg/bitspark/android/beans/ChannelBean;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_1

    .line 103
    .line 104
    const-string v1, "+VsYowFY9YfcURuy\n"

    .line 105
    .line 106
    const-string v2, "sTR1xkcqlOA=\n"

    .line 107
    .line 108
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v3, "1r6/PXXJ0ejK6sw=\n"

    .line 118
    .line 119
    const-string v4, "udDsSBaqtJs=\n"

    .line 120
    .line 121
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 144
    .line 145
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lp8/b;->c(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception p1

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    const-string p1, "2Y6Bvn7B3/H8hIKv\n"

    .line 155
    .line 156
    const-string v0, "keHs2zizvpY=\n"

    .line 157
    .line 158
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v0, "7jQrLAZUfQvyYFi/+pL8wAy/8OmDoqieDPQ=\n"

    .line 163
    .line 164
    const-string v1, "gVp4WWU3GHg=\n"

    .line 165
    .line 166
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 171
    .line 172
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 177
    .line 178
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_2
    :goto_1
    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lka/f;

    .line 11
    .line 12
    iget-object v0, v0, Lka/f;->b:Lka/j;

    .line 13
    .line 14
    iget-object v1, v0, Lka/j;->Z:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lka/j;->Y:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 28
    .line 29
    const-string v3, "XP1Yrg==\n"

    .line 30
    .line 31
    const-string v4, "NJI1y/qWcJc=\n"

    .line 32
    .line 33
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, p1, v3}, Lorg/bitspark/android/utils/o;->c(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v0, Lka/j;->Y:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    iget-object v3, v0, Lka/j;->V:Lcom/youth/banner/Banner;

    .line 43
    .line 44
    iget-object v4, v0, Lka/j;->Z:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    invoke-virtual {v1, v0, p1, v3, v4}, Lorg/bitspark/android/utils/o;->a(Lka/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lka/i0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroidx/fragment/app/a;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0b0487

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/a;->i(ILandroidx/fragment/app/s;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/fragment/app/a;->c()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->e(Z)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_0
    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ld7/s1;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Landroidx/media3/extractor/text/SubtitleExtractor;

    .line 88
    .line 89
    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 90
    .line 91
    invoke-static {v0, p1}, Landroidx/media3/extractor/text/SubtitleExtractor;->a(Landroidx/media3/extractor/text/SubtitleExtractor;Landroidx/media3/extractor/text/CuesWithTiming;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Ly3/c;
    .locals 21

    .line 1
    const-string v1, "TransportRuntime."

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, Ly3/b;

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ly3/d;

    .line 12
    .line 13
    iget-object v4, v0, Ly3/b;->a:Ljava/net/URL;

    .line 14
    .line 15
    const-string v5, "Making request to: %s"

    .line 16
    .line 17
    const-string v6, "CctTransportBackend"

    .line 18
    .line 19
    invoke-static {v6, v5, v4}, Lo9/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Ly3/b;->a:Ljava/net/URL;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    const/16 v5, 0x7530

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 33
    .line 34
    .line 35
    iget v5, v3, Ly3/d;->g:I

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 46
    .line 47
    .line 48
    const-string v5, "POST"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v5, "User-Agent"

    .line 54
    .line 55
    const-string v7, "datatransport/3.1.3 android/"

    .line 56
    .line 57
    invoke-virtual {v4, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v5, "Content-Encoding"

    .line 61
    .line 62
    const-string v7, "gzip"

    .line 63
    .line 64
    invoke-virtual {v4, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v8, "Content-Type"

    .line 68
    .line 69
    const-string v9, "application/json"

    .line 70
    .line 71
    invoke-virtual {v4, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v9, "Accept-Encoding"

    .line 75
    .line 76
    invoke-virtual {v4, v9, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v9, v0, Ly3/b;->c:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v9, :cond_0

    .line 82
    .line 83
    const-string v10, "X-Goog-Api-Key"

    .line 84
    .line 85
    invoke-virtual {v4, v10, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v12
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lh7/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    .line 93
    .line 94
    invoke-direct {v13, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 95
    .line 96
    .line 97
    :try_start_2
    iget-object v3, v3, Ly3/d;->a:Lj7/c;

    .line 98
    .line 99
    iget-object v0, v0, Ly3/b;->b:Lz3/i;

    .line 100
    .line 101
    new-instance v15, Ljava/io/BufferedWriter;

    .line 102
    .line 103
    new-instance v14, Ljava/io/OutputStreamWriter;

    .line 104
    .line 105
    invoke-direct {v14, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v15, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 109
    .line 110
    .line 111
    new-instance v14, Lj7/f;

    .line 112
    .line 113
    iget-object v3, v3, Lj7/c;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Lj7/e;

    .line 116
    .line 117
    iget-object v9, v3, Lj7/e;->a:Ljava/util/HashMap;

    .line 118
    .line 119
    iget-object v10, v3, Lj7/e;->b:Ljava/util/HashMap;

    .line 120
    .line 121
    iget-object v11, v3, Lj7/e;->c:Lj7/a;

    .line 122
    .line 123
    iget-boolean v3, v3, Lj7/e;->d:Z

    .line 124
    .line 125
    move-object/from16 v20, v14

    .line 126
    .line 127
    move-object/from16 v14, v20

    .line 128
    .line 129
    move-object/from16 v16, v9

    .line 130
    .line 131
    move-object/from16 v17, v10

    .line 132
    .line 133
    move-object/from16 v18, v11

    .line 134
    .line 135
    move/from16 v19, v3

    .line 136
    .line 137
    invoke-direct/range {v14 .. v19}, Lj7/f;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;Lj7/a;Z)V

    .line 138
    .line 139
    .line 140
    move-object/from16 v3, v20

    .line 141
    .line 142
    invoke-virtual {v3, v0}, Lj7/f;->e(Ljava/lang/Object;)Lj7/f;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lj7/f;->g()V

    .line 146
    .line 147
    .line 148
    iget-object v0, v3, Lj7/f;->b:Landroid/util/JsonWriter;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 151
    .line 152
    .line 153
    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 154
    .line 155
    .line 156
    if-eqz v12, :cond_1

    .line 157
    .line 158
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lh7/b; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    goto/16 :goto_c

    .line 164
    .line 165
    :catch_1
    move-exception v0

    .line 166
    goto/16 :goto_c

    .line 167
    .line 168
    :catch_2
    move-exception v0

    .line 169
    goto/16 :goto_d

    .line 170
    .line 171
    :catch_3
    move-exception v0

    .line 172
    goto/16 :goto_d

    .line 173
    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const-string v3, "Status Code: "

    .line 179
    .line 180
    invoke-static {v0, v3}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v9, "Content-Type: "

    .line 194
    .line 195
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v8, "Content-Encoding: "

    .line 219
    .line 220
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    const/16 v1, 0x12e

    .line 242
    .line 243
    if-eq v0, v1, :cond_9

    .line 244
    .line 245
    const/16 v1, 0x12d

    .line 246
    .line 247
    if-eq v0, v1, :cond_9

    .line 248
    .line 249
    const/16 v1, 0x133

    .line 250
    .line 251
    if-ne v0, v1, :cond_2

    .line 252
    .line 253
    goto/16 :goto_6

    .line 254
    .line 255
    :cond_2
    const/16 v1, 0xc8

    .line 256
    .line 257
    if-eq v0, v1, :cond_3

    .line 258
    .line 259
    new-instance v1, Ly3/c;

    .line 260
    .line 261
    const-wide/16 v3, 0x0

    .line 262
    .line 263
    const/4 v5, 0x0

    .line 264
    invoke-direct {v1, v0, v5, v3, v4}, Ly3/c;-><init>(ILjava/net/URL;J)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_e

    .line 268
    .line 269
    :cond_3
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :try_start_5
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_4

    .line 282
    .line 283
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 284
    .line 285
    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_4
    move-object v3, v1

    .line 290
    :goto_1
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    .line 291
    .line 292
    new-instance v5, Ljava/io/InputStreamReader;

    .line 293
    .line 294
    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    .line 296
    .line 297
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v4}, Lz3/m;->a(Ljava/io/BufferedReader;)Lz3/m;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    iget-wide v4, v4, Lz3/m;->a:J

    .line 305
    .line 306
    new-instance v6, Ly3/c;

    .line 307
    .line 308
    const/4 v7, 0x0

    .line 309
    invoke-direct {v6, v0, v7, v4, v5}, Ly3/c;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 310
    .line 311
    .line 312
    if-eqz v3, :cond_5

    .line 313
    .line 314
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :catchall_0
    move-exception v0

    .line 319
    move-object v3, v0

    .line 320
    goto :goto_4

    .line 321
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 324
    .line 325
    .line 326
    :cond_6
    move-object v1, v6

    .line 327
    goto/16 :goto_e

    .line 328
    .line 329
    :catchall_1
    move-exception v0

    .line 330
    move-object v4, v0

    .line 331
    if-eqz v3, :cond_7

    .line 332
    .line 333
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :catchall_2
    move-exception v0

    .line 338
    move-object v3, v0

    .line 339
    :try_start_9
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    :cond_7
    :goto_3
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 343
    :goto_4
    if-eqz v1, :cond_8

    .line 344
    .line 345
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 346
    .line 347
    .line 348
    goto :goto_5

    .line 349
    :catchall_3
    move-exception v0

    .line 350
    move-object v1, v0

    .line 351
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    :cond_8
    :goto_5
    throw v3

    .line 355
    :cond_9
    :goto_6
    const-string v1, "Location"

    .line 356
    .line 357
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    new-instance v3, Ly3/c;

    .line 362
    .line 363
    new-instance v4, Ljava/net/URL;

    .line 364
    .line 365
    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-wide/16 v5, 0x0

    .line 369
    .line 370
    invoke-direct {v3, v0, v4, v5, v6}, Ly3/c;-><init>(ILjava/net/URL;J)V

    .line 371
    .line 372
    .line 373
    move-object v1, v3

    .line 374
    goto :goto_e

    .line 375
    :catchall_4
    move-exception v0

    .line 376
    move-object v3, v0

    .line 377
    goto :goto_a

    .line 378
    :goto_7
    move-object v3, v0

    .line 379
    goto :goto_8

    .line 380
    :catchall_5
    move-exception v0

    .line 381
    goto :goto_7

    .line 382
    :goto_8
    :try_start_b
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :catchall_6
    move-exception v0

    .line 387
    move-object v4, v0

    .line 388
    :try_start_c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 389
    .line 390
    .line 391
    :goto_9
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 392
    :goto_a
    if-eqz v12, :cond_a

    .line 393
    .line 394
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 395
    .line 396
    .line 397
    goto :goto_b

    .line 398
    :catchall_7
    move-exception v0

    .line 399
    move-object v4, v0

    .line 400
    :try_start_e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    :cond_a
    :goto_b
    throw v3
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lh7/b; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 404
    :goto_c
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const-string v3, "Couldn\'t encode request, returning with 400"

    .line 409
    .line 410
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .line 412
    .line 413
    new-instance v1, Ly3/c;

    .line 414
    .line 415
    const/16 v0, 0x190

    .line 416
    .line 417
    const-wide/16 v3, 0x0

    .line 418
    .line 419
    const/4 v5, 0x0

    .line 420
    invoke-direct {v1, v0, v5, v3, v4}, Ly3/c;-><init>(ILjava/net/URL;J)V

    .line 421
    .line 422
    .line 423
    goto :goto_e

    .line 424
    :goto_d
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    const-string v3, "Couldn\'t open connection, returning with 500"

    .line 429
    .line 430
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .line 432
    .line 433
    new-instance v1, Ly3/c;

    .line 434
    .line 435
    const/16 v0, 0x1f4

    .line 436
    .line 437
    const-wide/16 v3, 0x0

    .line 438
    .line 439
    const/4 v5, 0x0

    .line 440
    invoke-direct {v1, v0, v5, v3, v4}, Ly3/c;-><init>(ILjava/net/URL;J)V

    .line 441
    .line 442
    .line 443
    :goto_e
    return-object v1
.end method

.method public c(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq1/h0;

    .line 4
    .line 5
    iget-object v0, v0, Lq1/h0;->i:Lq1/v;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lq1/v;->g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/extractor/ts/SeiReader;

    .line 9
    .line 10
    invoke-static {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/SeiReader;->a(Landroidx/media3/extractor/ts/SeiReader;JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 17
    .line 18
    invoke-static {v0, p1, p2, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->a(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-static {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->b(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    check-cast v0, Lokhttp3/EventListener;

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->a(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public createAdaptiveTrackSelection(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;->a(Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Lj7/c;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    and-int/2addr p2, v3

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object p2, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Ls0/g;

    .line 15
    .line 16
    invoke-interface {p2}, Ls0/g;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, Ls0/g;

    .line 22
    .line 23
    invoke-interface {p2}, Ls0/g;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/os/Parcelable;

    .line 28
    .line 29
    if-nez p3, :cond_0

    .line 30
    .line 31
    new-instance p3, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    move-object p3, v1

    .line 43
    :goto_0
    const-string v1, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 44
    .line 45
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    const-string p2, "InputConnectionCompat"

    .line 51
    .line 52
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 53
    .line 54
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 59
    .line 60
    iget-object v1, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ls0/g;

    .line 63
    .line 64
    invoke-interface {v1}, Ls0/g;->a()Landroid/content/ClipDescription;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v4, Landroid/content/ClipData$Item;

    .line 69
    .line 70
    iget-object p1, p1, Lj7/c;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Ls0/g;

    .line 73
    .line 74
    invoke-interface {p1}, Ls0/g;->c()Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, v1, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x1f

    .line 85
    .line 86
    const/4 v4, 0x2

    .line 87
    if-lt v0, v1, :cond_2

    .line 88
    .line 89
    new-instance v0, Lj7/c;

    .line 90
    .line 91
    invoke-direct {v0, p2, v4}, Lj7/c;-><init>(Landroid/content/ClipData;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance v0, Ln0/e;

    .line 96
    .line 97
    invoke-direct {v0}, Ln0/e;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p2, v0, Ln0/e;->b:Ljava/lang/Object;

    .line 101
    .line 102
    iput v4, v0, Ln0/e;->c:I

    .line 103
    .line 104
    :goto_2
    invoke-interface {p1}, Ls0/g;->e()Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v0, p1}, Ln0/d;->m(Landroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, p3}, Ln0/d;->setExtras(Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Ln0/d;->f()Ln0/g;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p2, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p2, Landroidx/appcompat/widget/AppCompatEditText;

    .line 121
    .line 122
    invoke-static {p2, p1}, Ln0/s0;->l(Landroid/view/View;Ln0/g;)Ln0/g;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    :cond_3
    :goto_3
    return v2
.end method

.method public execute()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget v4, p0, Landroidx/media3/common/x;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Lh4/j;

    .line 12
    .line 13
    iget-object v4, v3, Lh4/j;->b:Li4/d;

    .line 14
    .line 15
    check-cast v4, Li4/g;

    .line 16
    .line 17
    new-instance v5, La4/s;

    .line 18
    .line 19
    const/16 v6, 0x19

    .line 20
    .line 21
    invoke-direct {v5, v6}, La4/s;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Li4/g;->c(Li4/e;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, La4/j;

    .line 45
    .line 46
    iget-object v6, v3, Lh4/j;->c:Lh4/d;

    .line 47
    .line 48
    invoke-virtual {v6, v5, v0, v2}, Lh4/d;->a(La4/j;IZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object v1

    .line 53
    :pswitch_0
    check-cast v3, Lh4/i;

    .line 54
    .line 55
    iget-object v0, v3, Lh4/i;->i:Li4/c;

    .line 56
    .line 57
    check-cast v0, Li4/g;

    .line 58
    .line 59
    invoke-virtual {v0}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 64
    .line 65
    .line 66
    :try_start_0
    const-string v3, "DELETE FROM log_event_dropped"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Li4/g;->b:Lk4/a;

    .line 83
    .line 84
    invoke-interface {v0}, Lk4/a;->c()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :pswitch_1
    check-cast v3, Li4/d;

    .line 115
    .line 116
    check-cast v3, Li4/g;

    .line 117
    .line 118
    iget-object v1, v3, Li4/g;->b:Lk4/a;

    .line 119
    .line 120
    invoke-interface {v1}, Lk4/a;->c()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    iget-object v1, v3, Li4/g;->d:Li4/a;

    .line 125
    .line 126
    iget-wide v6, v1, Li4/a;->d:J

    .line 127
    .line 128
    sub-long/2addr v4, v6

    .line 129
    invoke-virtual {v3}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    .line 135
    .line 136
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    filled-new-array {v4}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 145
    .line 146
    invoke-virtual {v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 147
    .line 148
    .line 149
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_1

    .line 155
    .line 156
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    int-to-long v8, v6

    .line 165
    sget-object v6, Le4/c;->c:Le4/c;

    .line 166
    .line 167
    invoke-virtual {v3, v8, v9, v6, v7}, Li4/g;->d(JLe4/c;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 172
    .line 173
    .line 174
    const-string v0, "events"

    .line 175
    .line 176
    const-string v2, "timestamp_ms < ?"

    .line 177
    .line 178
    invoke-virtual {v1, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    return-object v0

    .line 193
    :catchall_1
    move-exception v0

    .line 194
    goto :goto_2

    .line 195
    :catchall_2
    move-exception v0

    .line 196
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 197
    .line 198
    .line 199
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :pswitch_2
    check-cast v3, Li4/c;

    .line 205
    .line 206
    check-cast v3, Li4/g;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    sget v0, Le4/a;->e:I

    .line 212
    .line 213
    new-instance v0, La0/f;

    .line 214
    .line 215
    const/4 v4, 0x3

    .line 216
    invoke-direct {v0, v4, v2}, La0/f;-><init>(IZ)V

    .line 217
    .line 218
    .line 219
    iput-object v1, v0, La0/f;->b:Ljava/lang/Object;

    .line 220
    .line 221
    new-instance v4, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v4, v0, La0/f;->d:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v1, v0, La0/f;->c:Ljava/lang/Object;

    .line 229
    .line 230
    const-string v1, ""

    .line 231
    .line 232
    iput-object v1, v0, La0/f;->e:Ljava/lang/Object;

    .line 233
    .line 234
    new-instance v1, Ljava/util/HashMap;

    .line 235
    .line 236
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v4, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 240
    .line 241
    invoke-virtual {v3}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 246
    .line 247
    .line 248
    :try_start_5
    new-array v2, v2, [Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v5, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    new-instance v4, Landroidx/media3/exoplayer/hls/b;

    .line 255
    .line 256
    const/4 v6, 0x7

    .line 257
    invoke-direct {v4, v3, v1, v0, v6}, Landroidx/media3/exoplayer/hls/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v2, v4}, Li4/g;->g(Landroid/database/Cursor;Li4/e;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Le4/a;

    .line 265
    .line 266
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 270
    .line 271
    .line 272
    return-object v0

    .line 273
    :catchall_3
    move-exception v0

    .line 274
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadException;

    check-cast p1, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->d(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource;

    check-cast p1, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->e(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->s(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method public timeUsToTargetTime(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method
