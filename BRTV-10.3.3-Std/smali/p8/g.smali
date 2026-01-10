.class public final Lp8/g;
.super Lp8/a;
.source "MyApplication"


# instance fields
.field public final k:Lq8/h;


# direct methods
.method public constructor <init>(Lo9/d;Lq8/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp8/a;-><init>(Lo9/d;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lp8/g;->k:Lq8/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G(Li8/c;)V
    .locals 3

    .line 1
    new-instance v0, Lp8/f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lp8/f;-><init>(Li8/c;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Li8/c;->c(Lj8/b;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, La3/c;

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    invoke-direct {p1, p0, v1, v0}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lp8/g;->k:Lq8/h;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Li8/f;->b(La3/c;Ljava/util/concurrent/TimeUnit;)Lj8/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Lm8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lj8/b;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
