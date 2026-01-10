.class public final Lq6/c;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq6/d;


# direct methods
.method public synthetic constructor <init>(Lq6/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq6/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq6/c;->b:Lq6/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lq6/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq6/c;->b:Lq6/d;

    .line 7
    .line 8
    iget-boolean v1, v0, Lq6/d;->f:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget v1, v0, Lq6/d;->g:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lq6/c;->b:Lq6/d;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lq6/d;->setIndeterminate(Z)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Lq6/d;->b:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lq6/d;->b(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
