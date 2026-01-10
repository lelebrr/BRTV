.class public final Lr2/g;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lokhttp3/Callback;
.implements Li9/l;


# instance fields
.field public final a:Lokhttp3/Call;

.field public final b:Lt9/e;


# direct methods
.method public constructor <init>(Lokhttp3/Call;Lt9/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/g;->a:Lokhttp3/Call;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/g;->b:Lt9/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lr2/g;->a:Lokhttp3/Call;

    .line 4
    .line 5
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 9
    .line 10
    return-object p1
.end method

.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lr2/g;->b:Lt9/e;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lt9/e;->resumeWith(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lr2/g;->b:Lt9/e;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lt9/e;->resumeWith(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
