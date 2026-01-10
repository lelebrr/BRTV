.class public final Ld7/r2;
.super Ld7/r5;
.source "MyApplication"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld7/a1;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld7/r2;->b:I

    .line 2
    iput-object p1, p0, Ld7/r2;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ld7/r5;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lb7/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld7/r2;->b:I

    .line 1
    iput-object p2, p0, Ld7/r2;->c:Ljava/lang/Object;

    invoke-direct {p0, p1}, Ld7/r5;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ld7/r2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    .line 8
    new-instance v0, Ld7/k4;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Ld7/k4;-><init>(Ld7/r2;Ljava/util/Map$Entry;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    iget-object v0, p0, Ld7/r2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lb7/i;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lb7/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
