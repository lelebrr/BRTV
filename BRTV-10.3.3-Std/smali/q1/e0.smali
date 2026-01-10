.class public abstract Lq1/e0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj7/c;

.field public final c:Landroidx/mediarouter/app/c;

.field public d:Lu7/d;

.field public e:Lq1/x;

.field public f:Z

.field public g:Landroidx/appcompat/app/r0;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj7/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/mediarouter/app/c;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/app/c;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lq1/e0;->c:Landroidx/mediarouter/app/c;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iput-object p1, p0, Lq1/e0;->a:Landroid/content/Context;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Lj7/c;

    .line 20
    .line 21
    new-instance v0, Landroid/content/ComponentName;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x19

    .line 31
    .line 32
    invoke-direct {p2, p1, v0}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lq1/e0;->b:Lj7/c;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p2, p0, Lq1/e0;->b:Lj7/c;

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "context must not be null"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lq1/d0;)Lq1/b0;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    const-string p2, "initialMemberRouteId cannot be null."

    .line 8
    .line 9
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw p1
.end method

.method public b(Ljava/lang/String;)Lq1/c0;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    const-string v0, "routeId cannot be null"

    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lq1/c0;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lq1/d0;->b:Lq1/d0;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lq1/e0;->d(Ljava/lang/String;Lq1/d0;)Lq1/c0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "routeGroupId cannot be null"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "routeId cannot be null"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public d(Ljava/lang/String;Lq1/d0;)Lq1/c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq1/e0;->b(Ljava/lang/String;)Lq1/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract e(Lq1/x;)V
.end method

.method public final f(Landroidx/appcompat/app/r0;)V
    .locals 1

    .line 1
    invoke-static {}, Lq1/u0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 9
    .line 10
    iget-boolean p1, p0, Lq1/e0;->h:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lq1/e0;->h:Z

    .line 16
    .line 17
    iget-object v0, p0, Lq1/e0;->c:Landroidx/mediarouter/app/c;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final g(Lq1/x;)V
    .locals 1

    .line 1
    invoke-static {}, Lq1/u0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq1/e0;->e:Lq1/x;

    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lq1/e0;->e:Lq1/x;

    .line 14
    .line 15
    iget-boolean p1, p0, Lq1/e0;->f:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lq1/e0;->f:Z

    .line 21
    .line 22
    iget-object p1, p0, Lq1/e0;->c:Landroidx/mediarouter/app/c;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
