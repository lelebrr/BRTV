.class public final Lq8/a;
.super Li8/e;
.source "MyApplication"


# instance fields
.field public final a:Lj8/a;

.field public final b:Lj8/a;

.field public final c:Lj8/a;

.field public final d:Lq8/c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lq8/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq8/a;->d:Lq8/c;

    .line 5
    .line 6
    new-instance p1, Lj8/a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Lj8/a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lq8/a;->a:Lj8/a;

    .line 13
    .line 14
    new-instance v0, Lj8/a;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Lj8/a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lq8/a;->b:Lj8/a;

    .line 21
    .line 22
    new-instance v1, Lj8/a;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, v2}, Lj8/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lq8/a;->c:Lj8/a;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lj8/a;->b(Lj8/b;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lj8/a;->b(Lj8/b;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq8/a;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lq8/a;->e:Z

    .line 7
    .line 8
    iget-object v0, p0, Lq8/a;->c:Lj8/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj8/a;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lj8/b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq8/a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lm8/b;->a:Lm8/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lq8/a;->d:Lq8/c;

    .line 9
    .line 10
    iget-object v1, p0, Lq8/a;->b:Lj8/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1}, Lq8/j;->d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;Lj8/a;)Lq8/m;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final c(Lp8/d;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lq8/a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lq8/a;->d:Lq8/c;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    iget-object v2, p0, Lq8/a;->a:Lj8/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lq8/j;->d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;Lj8/a;)Lq8/m;

    .line 13
    .line 14
    .line 15
    return-void
.end method
