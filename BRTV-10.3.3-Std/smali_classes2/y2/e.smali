.class public final Ly2/e;
.super Ld7/c2;
.source "MyApplication"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly2/e;->b:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Ld7/c2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e()Ly2/h;
    .locals 1

    .line 1
    iget v0, p0, Ly2/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly2/j;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ly2/j;-><init>(Ly2/e;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Ly2/d;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ly2/d;-><init>(Ly2/e;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
