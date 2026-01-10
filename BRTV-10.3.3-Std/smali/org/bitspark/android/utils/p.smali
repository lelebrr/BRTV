.class public final Lorg/bitspark/android/utils/p;
.super Lokhttp3/WebSocketListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/bitspark/android/utils/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitspark/android/utils/q;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bitspark/android/utils/p;->b:Lorg/bitspark/android/utils/q;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/bitspark/android/utils/p;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final native onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
.end method

.method public final native onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
.end method

.method public final native onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
.end method

.method public final native onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
.end method

.method public final native onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
.end method
