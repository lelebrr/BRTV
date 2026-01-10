.class public final Lqa/f;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public final synthetic b:Lqa/g;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lqa/g;Ljava/lang/String;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/f;->b:Lqa/g;

    .line 2
    .line 3
    iput-object p2, p0, Lqa/f;->c:Ljava/lang/String;

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
    new-instance p1, Lqa/f;

    .line 2
    .line 3
    iget-object v0, p0, Lqa/f;->b:Lqa/g;

    .line 4
    .line 5
    iget-object v1, p0, Lqa/f;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lqa/f;-><init>(Lqa/g;Ljava/lang/String;La9/d;)V

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
    invoke-virtual {p0, p1, p2}, Lqa/f;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lqa/f;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lqa/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "8TdJFAL9QRj2K1MYG/BWEPYuWQk=\n"

    .line 5
    .line 6
    const-string v0, "omcWR1e/FVE=\n"

    .line 7
    .line 8
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lqa/f;->b:Lqa/g;

    .line 13
    .line 14
    iget-object v1, v0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 15
    .line 16
    iget-object v1, v1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 17
    .line 18
    iget v1, v1, Lta/a;->f:I

    .line 19
    .line 20
    invoke-static {v1, p1}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 26
    .line 27
    iget-object p1, p1, Lta/a;->j:Landroidx/lifecycle/d0;

    .line 28
    .line 29
    iget-object v0, p0, Lqa/f;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 35
    .line 36
    return-object p1
.end method
