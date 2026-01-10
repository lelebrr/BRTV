.class public final Lc7/i;
.super Ld7/s5;
.source "MyApplication"


# instance fields
.field public a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/AbstractQueue;


# direct methods
.method public constructor <init>(Ljava/util/AbstractQueue;Lc7/c0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc7/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lc7/i;->c:Ljava/util/AbstractQueue;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lc7/i;->a:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc7/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lc7/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lc7/i;->b:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lc7/c0;

    .line 12
    .line 13
    invoke-interface {v1}, Lc7/c0;->o()Lc7/c0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lc7/i;->c:Ljava/util/AbstractQueue;

    .line 18
    .line 19
    check-cast v2, Lc7/j;

    .line 20
    .line 21
    iget-object v2, v2, Lc7/j;->b:Lc7/g;

    .line 22
    .line 23
    check-cast v2, Lc7/h;

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    :goto_0
    const/4 v1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :pswitch_0
    move-object v1, v0

    .line 30
    check-cast v1, Lc7/c0;

    .line 31
    .line 32
    invoke-interface {v1}, Lc7/c0;->i()Lc7/c0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lc7/i;->c:Ljava/util/AbstractQueue;

    .line 37
    .line 38
    check-cast v2, Lc7/j;

    .line 39
    .line 40
    iget-object v2, v2, Lc7/j;->b:Lc7/g;

    .line 41
    .line 42
    check-cast v2, Lc7/h;

    .line 43
    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    :goto_1
    iput-object v1, p0, Lc7/i;->a:Ljava/lang/Object;

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
