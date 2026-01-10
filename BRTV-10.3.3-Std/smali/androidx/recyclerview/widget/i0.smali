.class public final Landroidx/recyclerview/widget/i0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ln0/i;
.implements Landroidx/recyclerview/widget/d2;
.implements Landroidx/recyclerview/widget/q0;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/a;)V
    .locals 4

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v0, v3, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 22
    .line 23
    iget v3, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 24
    .line 25
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3, p1, v1}, Landroidx/recyclerview/widget/x0;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 32
    .line 33
    iget v1, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 34
    .line 35
    iget v3, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1, v3, p1}, Landroidx/recyclerview/widget/x0;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 44
    .line 45
    iget v1, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 46
    .line 47
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1, p1}, Landroidx/recyclerview/widget/x0;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 54
    .line 55
    iget v1, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 56
    .line 57
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1, p1}, Landroidx/recyclerview/widget/x0;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public b(I)Landroidx/recyclerview/widget/p1;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/p1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string p1, "RecyclerView"

    .line 31
    .line 32
    const-string v0, "assuming view holder cannot be find because it is hidden"

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    return-object v1

    .line 38
    :cond_2
    return-object p1
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public g(F)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x0;->canScrollVertically()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    float-to-int p1, p1

    .line 15
    move v1, p1

    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x0;->canScrollHorizontally()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    :goto_0
    const/4 v1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    if-nez p1, :cond_2

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->flingNoThresholdCheck(II)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public m()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x0;->canScrollVertically()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 14
    .line 15
    :goto_0
    neg-float v0, v0

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x0;->canScrollHorizontally()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
