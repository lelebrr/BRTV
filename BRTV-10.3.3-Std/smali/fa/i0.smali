.class public abstract Lfa/i0;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public a:I

.field public b:Lka/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lfa/i0;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lfa/i0;->a:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lfa/i0;->a:I

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 20
    .line 21
    .line 22
    iput v1, p0, Lfa/i0;->a:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method
