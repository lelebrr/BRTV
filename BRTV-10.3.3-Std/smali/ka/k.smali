.class public final Lka/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/r;


# direct methods
.method public synthetic constructor <init>(Lka/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/k;->b:Lka/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lka/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lka/k;->b:Lka/r;

    .line 7
    .line 8
    iget-object v1, v0, Lka/r;->Y:Lfa/d0;

    .line 9
    .line 10
    invoke-virtual {v1}, Lfa/d0;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_0
    iget-object v2, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 19
    .line 20
    iget-object v0, v0, Lka/r;->Y:Lfa/d0;

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lo9/d;->A(Landroidx/recyclerview/widget/RecyclerView;Lfa/i0;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lka/k;->b:Lka/r;

    .line 27
    .line 28
    iget-object v0, v0, Lka/r;->Y:Lfa/d0;

    .line 29
    .line 30
    iget-object v0, v0, Lfa/d0;->e:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lka/k;->b:Lka/r;

    .line 37
    .line 38
    iget-object v0, v0, Lka/r;->Y:Lfa/d0;

    .line 39
    .line 40
    iget-object v0, v0, Lfa/d0;->e:Landroid/view/View;

    .line 41
    .line 42
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    iget-object v0, p0, Lka/k;->b:Lka/r;

    .line 47
    .line 48
    iget-object v0, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/j;->smoothScrollToPosition(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
