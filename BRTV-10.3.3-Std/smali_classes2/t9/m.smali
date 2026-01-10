.class public final Lt9/m;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/p;


# static fields
.field public static final b:Lt9/m;

.field public static final c:Lt9/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lt9/m;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lt9/m;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lt9/m;->b:Lt9/m;

    .line 9
    .line 10
    new-instance v0, Lt9/m;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, v1, v2}, Lt9/m;-><init>(II)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lt9/m;->c:Lt9/m;

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lt9/m;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lt9/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, La9/i;

    .line 7
    .line 8
    check-cast p2, La9/g;

    .line 9
    .line 10
    invoke-interface {p1, p2}, La9/i;->f(La9/i;)La9/i;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p2, La9/g;

    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_1
    check-cast p1, La9/i;

    .line 24
    .line 25
    check-cast p2, La9/g;

    .line 26
    .line 27
    invoke-interface {p1, p2}, La9/i;->f(La9/i;)La9/i;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
