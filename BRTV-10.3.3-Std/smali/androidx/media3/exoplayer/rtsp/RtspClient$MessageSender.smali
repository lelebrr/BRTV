.class final Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessageSender"
.end annotation


# instance fields
.field private cSeq:I

.field private lastRequest:Landroidx/media3/exoplayer/rtsp/RtspRequest;

.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspClient;Landroidx/media3/exoplayer/rtsp/RtspClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;-><init>(Landroidx/media3/exoplayer/rtsp/RtspClient;)V

    return-void
.end method

.method private getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroidx/media3/exoplayer/rtsp/RtspRequest;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$400(Landroidx/media3/exoplayer/rtsp/RtspClient;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->cSeq:I

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    iput v3, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->cSeq:I

    .line 14
    .line 15
    invoke-direct {v0, v1, p2, v2}, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 19
    .line 20
    invoke-static {p2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$500(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 27
    .line 28
    invoke-static {p2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$600(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-string p2, "Authorization"

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 38
    .line 39
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$500(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 44
    .line 45
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$600(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2, p4, p1}, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->getAuthorizationHeaderValue(Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;Landroid/net/Uri;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, p2, v1}, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p2

    .line 58
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 59
    .line 60
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 61
    .line 62
    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$700(Landroidx/media3/exoplayer/rtsp/RtspClient;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;->addAll(Ljava/util/Map;)Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;

    .line 69
    .line 70
    .line 71
    new-instance p2, Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;->build()Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const-string v0, ""

    .line 78
    .line 79
    invoke-direct {p2, p4, p1, p3, v0}, Landroidx/media3/exoplayer/rtsp/RtspRequest;-><init>(Landroid/net/Uri;ILandroidx/media3/exoplayer/rtsp/RtspHeaders;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object p2
.end method

.method private sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/rtsp/RtspRequest;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 2
    .line 3
    const-string v1, "CSeq"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 20
    .line 21
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$800(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 38
    .line 39
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$800(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->serializeRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)Ld7/u1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$900(Landroidx/media3/exoplayer/rtsp/RtspClient;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 56
    .line 57
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$1000(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->send(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->lastRequest:Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 65
    .line 66
    return-void
.end method

.method private sendResponse(Landroidx/media3/exoplayer/rtsp/RtspResponse;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->serializeResponse(Landroidx/media3/exoplayer/rtsp/RtspResponse;)Ld7/u1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$900(Landroidx/media3/exoplayer/rtsp/RtspClient;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$1000(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->send(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public retryLastRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->lastRequest:Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->lastRequest:Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtspRequest;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspHeaders;->asMultiMap()Ld7/w1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Ld7/g2;->f:Ld7/h5;

    .line 20
    .line 21
    invoke-virtual {v2}, Ld7/z1;->e()Ld7/k2;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ld7/f5;

    .line 26
    .line 27
    invoke-virtual {v2}, Ld7/f5;->i()Ld7/s5;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_0
    :goto_0
    move-object v3, v2

    .line 32
    check-cast v3, Ld7/a;

    .line 33
    .line 34
    invoke-virtual {v3}, Ld7/a;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "CSeq"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    const-string v4, "User-Agent"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    const-string v4, "Session"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_0

    .line 69
    .line 70
    const-string v4, "Authorization"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0, v3}, Ld7/w1;->s(Ljava/lang/Object;)Ld7/u1;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4}, Ld7/d0;->n(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->lastRequest:Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 94
    .line 95
    iget v0, v0, Landroidx/media3/exoplayer/rtsp/RtspRequest;->method:I

    .line 96
    .line 97
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 98
    .line 99
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$300(Landroidx/media3/exoplayer/rtsp/RtspClient;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->lastRequest:Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 104
    .line 105
    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtspRequest;->uri:Landroid/net/Uri;

    .line 106
    .line 107
    invoke-direct {p0, v0, v2, v1, v3}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public sendDescribeRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    .line 5
    const-string v3, "Accept"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    aput-object v3, v2, v4

    .line 9
    .line 10
    const-string v3, "application/sdp"

    .line 11
    .line 12
    aput-object v3, v2, v0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v2, v3}, Ld7/h5;->g(I[Ljava/lang/Object;Ld7/y1;)Ld7/h5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v1, p2, v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public sendMethodNotAllowedResponse(I)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspResponse;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 6
    .line 7
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$400(Landroidx/media3/exoplayer/rtsp/RtspClient;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 12
    .line 13
    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$300(Landroidx/media3/exoplayer/rtsp/RtspClient;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3, p1}, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspHeaders$Builder;->build()Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x195

    .line 25
    .line 26
    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/rtsp/RtspResponse;-><init>(ILandroidx/media3/exoplayer/rtsp/RtspHeaders;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendResponse(Landroidx/media3/exoplayer/rtsp/RtspResponse;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->cSeq:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->cSeq:I

    .line 41
    .line 42
    return-void
.end method

.method public sendOptionsRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ld7/h5;->g:Ld7/h5;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v1, p2, v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendPauseRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$100(Landroidx/media3/exoplayer/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Ld7/h5;->g:Ld7/h5;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {p0, v1, p2, v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 28
    .line 29
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$202(Landroidx/media3/exoplayer/rtsp/RtspClient;Z)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public sendPlayRequest(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 4
    .line 5
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$100(Landroidx/media3/exoplayer/rtsp/RtspClient;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$100(Landroidx/media3/exoplayer/rtsp/RtspClient;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 24
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;->getOffsetStartTimeTiming(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, "Range"

    .line 32
    .line 33
    invoke-static {p3, p2}, Ld7/d0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p3, v1, v0

    .line 39
    .line 40
    aput-object p2, v1, v3

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-static {v3, v1, p2}, Ld7/h5;->g(I[Ljava/lang/Object;Ld7/y1;)Ld7/h5;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 p3, 0x6

    .line 48
    invoke-direct {p0, p3, p4, p2, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public sendSetupRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$102(Landroidx/media3/exoplayer/rtsp/RtspClient;I)I

    .line 6
    .line 7
    .line 8
    const-string v1, "Transport"

    .line 9
    .line 10
    invoke-static {v1, p2}, Ld7/d0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object v1, v3, v2

    .line 17
    .line 18
    aput-object p2, v3, v0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {v0, v3, p2}, Ld7/h5;->g(I[Ljava/lang/Object;Ld7/y1;)Ld7/h5;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    invoke-direct {p0, v0, p3, p2, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public sendTeardownRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$100(Landroidx/media3/exoplayer/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$100(Landroidx/media3/exoplayer/rtsp/RtspClient;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->this$0:Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->access$102(Landroidx/media3/exoplayer/rtsp/RtspClient;I)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Ld7/h5;->g:Ld7/h5;

    .line 26
    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    invoke-direct {p0, v1, p2, v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspRequest;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendRequest(Landroidx/media3/exoplayer/rtsp/RtspRequest;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
