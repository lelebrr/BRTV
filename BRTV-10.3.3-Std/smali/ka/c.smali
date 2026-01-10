.class public final Lka/c;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lorg/bitspark/android/beans/HistoryBean;

.field public final synthetic b:Lka/e;


# direct methods
.method public constructor <init>(Lka/e;Lorg/bitspark/android/beans/HistoryBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/c;->b:Lka/e;

    .line 2
    .line 3
    iput-object p2, p0, Lka/c;->a:Lorg/bitspark/android/beans/HistoryBean;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 1
    const-string p1, "D9nMP8P+SUg0\n"

    .line 2
    .line 3
    const-string v0, "TYqEVrCKJjo=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "grI0Vm/WyIaNti4YfNWMo5e4LVZ62M+tgPcvHQ==\n"

    .line 10
    .line 11
    const-string v1, "5ddAdhm5rMU=\n"

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
    .locals 4

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
    new-instance v0, Landroidx/media3/exoplayer/analytics/b;

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, p1}, Landroidx/media3/exoplayer/analytics/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lp8/c;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lp8/c;-><init>(Li8/b;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lka/c;->b:Lka/e;

    .line 20
    .line 21
    iget-object v1, v0, Lka/e;->h0:Lo8/a;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lo8/a;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v0, Lka/e;->h0:Lo8/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v1, Lu8/e;->a:Lq8/h;

    .line 40
    .line 41
    const-string v2, "scheduler is null"

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v2, Lp8/g;

    .line 47
    .line 48
    invoke-direct {v2, p1, v1}, Lp8/g;-><init>(Lo9/d;Lq8/h;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lh8/b;->a:Li8/f;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lo9/d;->v(Li8/f;)Lp8/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v1, Landroidx/media3/exoplayer/analytics/b;

    .line 60
    .line 61
    iget-object v2, p0, Lka/c;->a:Lorg/bitspark/android/beans/HistoryBean;

    .line 62
    .line 63
    const/16 v3, 0xf

    .line 64
    .line 65
    invoke-direct {v1, p0, v3, v2}, Landroidx/media3/exoplayer/analytics/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lo8/a;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Lo8/a;-><init>(Ll8/a;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lo9/d;->F(Li8/c;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lka/e;->h0:Lo8/a;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 80
    .line 81
    const-string v0, "scheduler == null"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method
