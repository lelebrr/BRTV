.class final Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageParser;,
        Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;
    }
.end annotation


# static fields
.field public static final CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_RTSP_PORT:I = 0x22a

.field private static final TAG:Ljava/lang/String; = "RtspMessageChannel"


# instance fields
.field private volatile closed:Z

.field private final interleavedBinaryDataListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final messageListener:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

.field private final receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

.field private sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sput-object v0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->messageListener:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 7
    .line 8
    const-string v0, "ExoPlayer:RtspMessageChannel:ReceiverLoader"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->interleavedBinaryDataListeners:Ljava/util/Map;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->messageListener:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->interleavedBinaryDataListeners:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;->close()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->release()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->socket:Ljava/net/Socket;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->closed:Z

    .line 33
    .line 34
    throw v1
.end method

.method public open(Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->socket:Ljava/net/Socket;

    .line 2
    .line 3
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->receiverLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 15
    .line 16
    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Receiver;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {p1, p0, v2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$LoaderCallbackImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$1;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public registerInterleavedBinaryDataListener(ILandroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->interleavedBinaryDataListeners:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public send(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->sender:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;->send(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
