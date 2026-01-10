.class public abstract Lio/binstream/libtvcar/Libtvcar;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/binstream/libtvcar/Libtvcar$proxyListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lgo/Seq;->touch()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/binstream/libtvcar/Libtvcar;->_init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native _init()V
.end method

.method public static native init()J
.end method

.method public static native release()V
.end method

.method public static native run()V
.end method

.method public static native setAuthURL(Ljava/lang/String;)V
.end method

.method public static native setListener(Lio/binstream/libtvcar/Listener;)V
.end method

.method public static native setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setPassword(Ljava/lang/String;)V
.end method

.method public static native setPlayPort(J)V
.end method

.method public static native setUsername(Ljava/lang/String;)V
.end method

.method public static native start(Ljava/lang/String;)V
.end method

.method public static touch()V
    .locals 0

    .line 1
    return-void
.end method
