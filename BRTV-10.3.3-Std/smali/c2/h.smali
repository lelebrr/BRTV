.class public final Lc2/h;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public b:I

.field public final synthetic c:Lc2/l;

.field public final synthetic d:Lm2/i;


# direct methods
.method public constructor <init>(Lc2/l;Lm2/i;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc2/h;->c:Lc2/l;

    .line 2
    .line 3
    iput-object p2, p0, Lc2/h;->d:Lm2/i;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lc9/i;-><init>(La9/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 2

    .line 1
    new-instance p1, Lc2/h;

    .line 2
    .line 3
    iget-object v0, p0, Lc2/h;->c:Lc2/l;

    .line 4
    .line 5
    iget-object v1, p0, Lc2/h;->d:Lm2/i;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lc2/h;-><init>(Lc2/l;Lm2/i;La9/d;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lc2/h;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lc2/h;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lc2/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lb9/a;->a:Lb9/a;

    .line 2
    .line 3
    iget v1, p0, Lc2/h;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lc2/h;->c:Lc2/l;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput v3, p0, Lc2/h;->b:I

    .line 28
    .line 29
    iget-object p1, p0, Lc2/h;->d:Lm2/i;

    .line 30
    .line 31
    invoke-static {v2, p1, p0}, Lc2/l;->a(Lc2/l;Lm2/i;Lc9/c;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    move-object v0, p1

    .line 39
    check-cast v0, Lm2/j;

    .line 40
    .line 41
    instance-of v0, v0, Lm2/e;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_3
    return-object p1
.end method
