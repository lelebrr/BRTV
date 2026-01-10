.class public final Lfa/y;
.super Landroidx/fragment/app/n0;
.source "MyApplication"


# instance fields
.field public g:Ljava/util/ArrayList;

.field public h:Landroidx/fragment/app/s;


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/y;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(Landroidx/viewpager/widget/ViewPager;ILandroidx/fragment/app/s;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lfa/y;->h:Landroidx/fragment/app/s;

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/n0;->e(Landroidx/viewpager/widget/ViewPager;ILandroidx/fragment/app/s;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(I)Landroidx/fragment/app/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/y;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/fragment/app/s;

    .line 8
    .line 9
    return-object p1
.end method
