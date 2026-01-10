.class public final Lh8/e;
.super Li8/f;
.source "MyApplication"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/e;->a:Landroid/os/Handler;

    .line 5
    .line 6
    iput-boolean p2, p0, Lh8/e;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Li8/e;
    .locals 3

    .line 1
    new-instance v0, Lh8/c;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/e;->a:Landroid/os/Handler;

    .line 4
    .line 5
    iget-boolean v2, p0, Lh8/e;->b:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lh8/c;-><init>(Landroid/os/Handler;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(La3/c;Ljava/util/concurrent/TimeUnit;)Lj8/b;
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    new-instance v0, Lh8/d;

    .line 4
    .line 5
    iget-object v1, p0, Lh8/e;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lh8/d;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v2, p0, Lh8/e;->b:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/support/v4/media/session/a;->f(Landroid/os/Message;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string p2, "unit == null"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
