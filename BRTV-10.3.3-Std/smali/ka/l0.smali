.class public final Lka/l0;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic c:I

.field public final synthetic d:Lka/m0;


# direct methods
.method public constructor <init>(Lka/m0;Ljava/lang/String;Lorg/bitspark/android/beans/ChannelBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/l0;->d:Lka/m0;

    .line 2
    .line 3
    iput-object p2, p0, Lka/l0;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lka/l0;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 6
    .line 7
    iput p4, p0, Lka/l0;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 1
    const-string p1, "W1Kgv70=\n"

    .line 2
    .line 3
    const-string v0, "GQH20NnoVyw=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "T0VwwLfxbelAQWqOpPIpzFpPacCi/2rCTQBriw==\n"

    .line 10
    .line 11
    const-string v1, "KCAE4MGeCao=\n"

    .line 12
    .line 13
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onError(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/exoplayer/hls/b;

    .line 8
    .line 9
    iget-object v3, p0, Lka/l0;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, v3, v1}, Landroidx/media3/exoplayer/hls/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lp8/c;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lp8/c;-><init>(Li8/b;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lka/l0;->d:Lka/m0;

    .line 22
    .line 23
    iget-object v1, v0, Lka/m0;->A0:Lo8/a;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lo8/a;->g()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, v0, Lka/m0;->A0:Lo8/a;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object v1, Lu8/e;->a:Lq8/h;

    .line 42
    .line 43
    const-string v2, "scheduler is null"

    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v2, Lp8/g;

    .line 49
    .line 50
    invoke-direct {v2, p1, v1}, Lp8/g;-><init>(Lo9/d;Lq8/h;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lh8/b;->a:Li8/f;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lo9/d;->v(Li8/f;)Lp8/e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v7, Landroidx/media3/exoplayer/analytics/w;

    .line 62
    .line 63
    iget-object v4, p0, Lka/l0;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 64
    .line 65
    iget v5, p0, Lka/l0;->c:I

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    move-object v1, v7

    .line 69
    move-object v2, p0

    .line 70
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lo8/a;

    .line 74
    .line 75
    invoke-direct {v1, v7}, Lo8/a;-><init>(Ll8/a;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lo9/d;->F(Li8/c;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, v0, Lka/m0;->A0:Lo8/a;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 85
    .line 86
    const-string v0, "scheduler == null"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method
