.class public final Ld7/f1;
.super Ld7/h1;
.source "MyApplication"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld7/f1;->b:I

    .line 1
    iput-object p2, p0, Ld7/f1;->c:Ljava/lang/Object;

    invoke-direct {p0, p1}, Ld7/h1;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Iterable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld7/f1;->b:I

    .line 2
    iput-object p1, p0, Ld7/f1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ld7/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Ld7/f1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ld7/g1;

    .line 7
    .line 8
    iget-object v1, p0, Ld7/f1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, [Ljava/lang/Iterable;

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    invoke-direct {v0, p0, v1}, Ld7/g1;-><init>(Ld7/f1;I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ld7/t2;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Ld7/s2;->d:Ld7/s2;

    .line 22
    .line 23
    iput-object v2, v1, Ld7/t2;->b:Ljava/util/Iterator;

    .line 24
    .line 25
    iput-object v0, v1, Ld7/t2;->c:Ljava/util/Iterator;

    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    iget-object v0, p0, Ld7/f1;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
