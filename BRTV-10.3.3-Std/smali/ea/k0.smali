.class public final Lea/k0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lea/k0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    const-string p1, "IsiM1ryj\n"

    .line 5
    .line 6
    const-string p2, "YJvBt9XNP6o=\n"

    .line 7
    .line 8
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "zUFLD7DO9v35QV1Go/v0+OVWRgi2vvTz9wQBSP+w\n"

    .line 13
    .line 14
    const-string p3, "gCQvZtGempw=\n"

    .line 15
    .line 16
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-boolean p3, Lorg/bitspark/android/utils/m;->b:Z

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iget-object p3, p0, Lea/k0;->a:Lorg/bitspark/android/Spark;

    .line 30
    .line 31
    iput-wide p1, p3, Lorg/bitspark/android/Spark;->i1:J

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p3, Lorg/bitspark/android/Spark;->G0:Z

    .line 35
    .line 36
    invoke-virtual {p3}, Lorg/bitspark/android/Spark;->i0()V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method
