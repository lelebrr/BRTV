.class public final Ld7/g1;
.super Ld7/a;
.source "MyApplication"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ld7/f1;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld7/g1;->c:I

    .line 1
    iput-object p1, p0, Ld7/g1;->d:Ljava/lang/Iterable;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Ld7/a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ld7/u1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld7/g1;->c:I

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ld7/a;-><init>(II)V

    .line 4
    iput-object p1, p0, Ld7/g1;->d:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ld7/g1;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld7/g1;->d:Ljava/lang/Iterable;

    .line 7
    .line 8
    check-cast v0, Ld7/u1;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    iget-object v0, p0, Ld7/g1;->d:Ljava/lang/Iterable;

    .line 16
    .line 17
    check-cast v0, Ld7/f1;

    .line 18
    .line 19
    iget-object v0, v0, Ld7/f1;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, [Ljava/lang/Iterable;

    .line 22
    .line 23
    aget-object p1, v0, p1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
