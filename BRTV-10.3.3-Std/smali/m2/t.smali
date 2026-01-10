.class public final Lm2/t;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public final synthetic b:Lm2/u;


# direct methods
.method public constructor <init>(Lm2/u;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm2/t;->b:Lm2/u;

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
    .locals 1

    .line 1
    new-instance p1, Lm2/t;

    .line 2
    .line 3
    iget-object v0, p0, Lm2/t;->b:Lm2/u;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lm2/t;-><init>(Lm2/u;La9/d;)V

    .line 6
    .line 7
    .line 8
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lm2/t;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lm2/t;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lm2/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object p1, p0, Lm2/t;->b:Lm2/u;

    .line 5
    .line 6
    iget-object v0, p1, Lm2/u;->d:Lm2/s;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lm2/s;->e:Lt9/q0;

    .line 11
    .line 12
    invoke-static {v1}, Lt9/u;->c(Lt9/q0;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lm2/s;->c:Lo2/a;

    .line 16
    .line 17
    instance-of v2, v1, Landroidx/lifecycle/v;

    .line 18
    .line 19
    iget-object v3, v0, Lm2/s;->d:Landroidx/lifecycle/p;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v3, v0}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-object v0, p1, Lm2/u;->d:Lm2/s;

    .line 31
    .line 32
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 33
    .line 34
    return-object p1
.end method
