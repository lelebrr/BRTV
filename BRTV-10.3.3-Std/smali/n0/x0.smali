.class public final Ln0/x0;
.super Lc9/h;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/x0;->c:Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lc9/h;-><init>(La9/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 2

    .line 1
    new-instance v0, Ln0/x0;

    .line 2
    .line 3
    iget-object v1, p0, Ln0/x0;->c:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Ln0/x0;-><init>(Landroid/view/View;La9/d;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Ln0/x0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lq9/e;

    .line 2
    .line 3
    check-cast p2, La9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ln0/x0;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ln0/x0;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ln0/x0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lb9/a;->a:Lb9/a;

    .line 2
    .line 3
    iget v1, p0, Ln0/x0;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Ln0/x0;->c:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    sget-object v4, Lw8/l;->a:Lw8/l;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Ln0/x0;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lq9/e;

    .line 32
    .line 33
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    instance-of p1, v2, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    check-cast v2, Landroid/view/ViewGroup;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Ln0/x0;->b:Ljava/lang/Object;

    .line 44
    .line 45
    iput v5, p0, Ln0/x0;->a:I

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance p1, Ln0/x;

    .line 51
    .line 52
    new-instance v3, Lj9/a;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-direct {v3, v6, v2}, Lj9/a;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v3}, Ln0/x;-><init>(Lj9/a;)V

    .line 59
    .line 60
    .line 61
    check-cast v1, Lq9/d;

    .line 62
    .line 63
    iget-object v2, p1, Ln0/x;->b:Ljava/util/Iterator;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    move-object p1, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iput-object p1, v1, Lq9/d;->c:Ljava/util/Iterator;

    .line 74
    .line 75
    iput v5, v1, Lq9/d;->a:I

    .line 76
    .line 77
    iput-object p0, v1, Lq9/d;->d:La9/d;

    .line 78
    .line 79
    move-object p1, v0

    .line 80
    :goto_0
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object p1, v4

    .line 84
    :goto_1
    if-ne p1, v0, :cond_4

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    :goto_2
    return-object v4

    .line 88
    :cond_5
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Ln0/x0;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lq9/e;

    .line 94
    .line 95
    iput-object p1, p0, Ln0/x0;->b:Ljava/lang/Object;

    .line 96
    .line 97
    iput v3, p0, Ln0/x0;->a:I

    .line 98
    .line 99
    check-cast p1, Lq9/d;

    .line 100
    .line 101
    iput-object v2, p1, Lq9/d;->b:Ljava/lang/Object;

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    iput v1, p1, Lq9/d;->a:I

    .line 105
    .line 106
    iput-object p0, p1, Lq9/d;->d:La9/d;

    .line 107
    .line 108
    return-object v0
.end method
