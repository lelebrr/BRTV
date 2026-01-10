.class public final Lx9/u;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/p;


# static fields
.field public static final b:Lx9/u;

.field public static final c:Lx9/u;

.field public static final d:Lx9/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx9/u;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lx9/u;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx9/u;->b:Lx9/u;

    .line 9
    .line 10
    new-instance v0, Lx9/u;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, v1, v2}, Lx9/u;-><init>(II)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lx9/u;->c:Lx9/u;

    .line 18
    .line 19
    new-instance v0, Lx9/u;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v0, v1, v2}, Lx9/u;-><init>(II)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lx9/u;->d:Lx9/u;

    .line 27
    .line 28
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lx9/u;->a:I

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
    iget v0, p0, Lx9/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx9/w;

    .line 7
    .line 8
    check-cast p2, La9/g;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-static {p1}, Lea/q;->n(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p2, La9/g;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :pswitch_1
    check-cast p2, La9/g;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
