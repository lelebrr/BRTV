.class final Lio/binstream/libtvcar/Libtvcar$proxyListener;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lgo/Seq$Proxy;
.implements Lio/binstream/libtvcar/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/binstream/libtvcar/Libtvcar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "proxyListener"
.end annotation


# instance fields
.field private final refnum:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/binstream/libtvcar/Libtvcar$proxyListener;->refnum:I

    .line 5
    .line 6
    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final incRefnum()I
    .locals 1

    .line 1
    iget v0, p0, Lio/binstream/libtvcar/Libtvcar$proxyListener;->refnum:I

    .line 2
    .line 3
    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lio/binstream/libtvcar/Libtvcar$proxyListener;->refnum:I

    .line 7
    .line 8
    return v0
.end method

.method public native onInfo(Ljava/lang/String;)V
.end method

.method public native onInited(Ljava/lang/String;)V
.end method

.method public native onPrepared(Ljava/lang/String;)V
.end method

.method public native onQuit(Ljava/lang/String;)V
.end method

.method public native onStart(Ljava/lang/String;)V
.end method

.method public native onStop(Ljava/lang/String;)V
.end method
