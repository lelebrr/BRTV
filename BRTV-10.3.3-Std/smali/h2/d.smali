.class public final Lh2/d;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public b:I

.field public final synthetic c:Lh2/i;

.field public final synthetic d:Lj9/n;

.field public final synthetic e:Lj9/n;

.field public final synthetic f:Lm2/i;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lj9/n;

.field public final synthetic i:Lc2/d;


# direct methods
.method public constructor <init>(Lh2/i;Lj9/n;Lj9/n;Lm2/i;Ljava/lang/Object;Lj9/n;Lc2/d;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/d;->c:Lh2/i;

    .line 2
    .line 3
    iput-object p2, p0, Lh2/d;->d:Lj9/n;

    .line 4
    .line 5
    iput-object p3, p0, Lh2/d;->e:Lj9/n;

    .line 6
    .line 7
    iput-object p4, p0, Lh2/d;->f:Lm2/i;

    .line 8
    .line 9
    iput-object p5, p0, Lh2/d;->g:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lh2/d;->h:Lj9/n;

    .line 12
    .line 13
    iput-object p7, p0, Lh2/d;->i:Lc2/d;

    .line 14
    .line 15
    invoke-direct {p0, p8}, Lc9/i;-><init>(La9/d;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 9

    .line 1
    new-instance p1, Lh2/d;

    .line 2
    .line 3
    iget-object v6, p0, Lh2/d;->h:Lj9/n;

    .line 4
    .line 5
    iget-object v7, p0, Lh2/d;->i:Lc2/d;

    .line 6
    .line 7
    iget-object v1, p0, Lh2/d;->c:Lh2/i;

    .line 8
    .line 9
    iget-object v2, p0, Lh2/d;->d:Lj9/n;

    .line 10
    .line 11
    iget-object v3, p0, Lh2/d;->e:Lj9/n;

    .line 12
    .line 13
    iget-object v4, p0, Lh2/d;->f:Lm2/i;

    .line 14
    .line 15
    iget-object v5, p0, Lh2/d;->g:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lh2/d;-><init>(Lh2/i;Lj9/n;Lj9/n;Lm2/i;Ljava/lang/Object;Lj9/n;Lc2/d;La9/d;)V

    .line 20
    .line 21
    .line 22
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
    invoke-virtual {p0, p1, p2}, Lh2/d;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lh2/d;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lh2/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lb9/a;->a:Lb9/a;

    .line 2
    .line 3
    iget v1, p0, Lh2/d;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lh2/d;->d:Lj9/n;

    .line 26
    .line 27
    iget-object p1, p1, Lj9/n;->a:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    check-cast v4, Lg2/m;

    .line 31
    .line 32
    iget-object p1, p0, Lh2/d;->e:Lj9/n;

    .line 33
    .line 34
    iget-object p1, p1, Lj9/n;->a:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v5, p1

    .line 37
    check-cast v5, Lc2/c;

    .line 38
    .line 39
    iget-object p1, p0, Lh2/d;->h:Lj9/n;

    .line 40
    .line 41
    iget-object p1, p1, Lj9/n;->a:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v8, p1

    .line 44
    check-cast v8, Lm2/m;

    .line 45
    .line 46
    iput v2, p0, Lh2/d;->b:I

    .line 47
    .line 48
    iget-object v6, p0, Lh2/d;->f:Lm2/i;

    .line 49
    .line 50
    iget-object v7, p0, Lh2/d;->g:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v9, p0, Lh2/d;->i:Lc2/d;

    .line 53
    .line 54
    iget-object v3, p0, Lh2/d;->c:Lh2/i;

    .line 55
    .line 56
    move-object v10, p0

    .line 57
    invoke-static/range {v3 .. v10}, Lh2/i;->a(Lh2/i;Lg2/m;Lc2/c;Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;Lc9/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    :goto_0
    return-object p1
.end method
