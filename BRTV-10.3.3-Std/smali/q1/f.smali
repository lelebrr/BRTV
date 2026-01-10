.class public final Lq1/f;
.super Lu7/d;
.source "MyApplication"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq1/f;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lq1/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final w(Lq1/e0;Landroidx/appcompat/app/r0;)V
    .locals 1

    .line 1
    iget v0, p0, Lq1/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lq1/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lq1/k0;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lq1/k0;->g(Landroidx/appcompat/app/r0;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lq1/f;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lq1/h;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lq1/h;->d(Lq1/e0;)Lq1/r0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lq1/h;->n(Lq1/r0;Landroidx/appcompat/app/r0;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
