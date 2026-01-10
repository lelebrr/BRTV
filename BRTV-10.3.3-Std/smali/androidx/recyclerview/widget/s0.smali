.class public abstract Landroidx/recyclerview/widget/s0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Landroidx/recyclerview/widget/q0;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(Landroidx/recyclerview/widget/p1;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p1;->mFlags:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p1;->getOldPosition()I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/r0;Landroidx/recyclerview/widget/r0;)Z
.end method

.method public final c(Landroidx/recyclerview/widget/p1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/s0;->a:Landroidx/recyclerview/widget/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Landroidx/recyclerview/widget/i0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/p1;->setIsRecyclable(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->mShadowedHolder:Landroidx/recyclerview/widget/p1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->mShadowingHolder:Landroidx/recyclerview/widget/p1;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iput-object v2, p1, Landroidx/recyclerview/widget/p1;->mShadowedHolder:Landroidx/recyclerview/widget/p1;

    .line 24
    .line 25
    :cond_0
    iput-object v2, p1, Landroidx/recyclerview/widget/p1;->mShadowingHolder:Landroidx/recyclerview/widget/p1;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->shouldBeKeptAsChild()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public abstract d(Landroidx/recyclerview/widget/p1;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
