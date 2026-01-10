.class public final Ld7/d3;
.super Lc7/n;
.source "MyApplication"


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ld7/c4;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld7/d3;->j:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lc7/n;-><init>(Ld7/c4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ld7/d3;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lc7/n;->next()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lc7/n;->e()Ld7/b4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Ld7/b4;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_1
    invoke-virtual {p0}, Lc7/n;->e()Ld7/b4;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Ld7/b4;->a:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
