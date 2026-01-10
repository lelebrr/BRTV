.class public final Landroidx/lifecycle/q;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/lifecycle/r;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/r;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/r;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lc9/i;-><init>(La9/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/q;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/r;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroidx/lifecycle/q;-><init>(Landroidx/lifecycle/r;La9/d;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lt9/s;

    .line 2
    .line 3
    check-cast p2, La9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/q;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/lifecycle/q;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/lifecycle/q;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lt9/s;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/r;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/p;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/lifecycle/p;->b()Landroidx/lifecycle/o;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ltz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1}, Lt9/s;->d()La9/i;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lt9/u;->b(La9/i;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 36
    .line 37
    return-object p1
.end method
