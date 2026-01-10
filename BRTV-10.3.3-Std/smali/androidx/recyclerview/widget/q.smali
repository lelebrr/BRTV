.class public final Landroidx/recyclerview/widget/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/s;

    .line 2
    .line 3
    check-cast p2, Landroidx/recyclerview/widget/s;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    iget-object v4, p2, Landroidx/recyclerview/widget/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v4, 0x0

    .line 21
    :goto_1
    const/4 v5, -0x1

    .line 22
    if-eq v3, v4, :cond_4

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    :cond_2
    const/4 v1, 0x1

    .line 27
    goto :goto_3

    .line 28
    :cond_3
    :goto_2
    const/4 v1, -0x1

    .line 29
    goto :goto_3

    .line 30
    :cond_4
    iget-boolean v0, p1, Landroidx/recyclerview/widget/s;->a:Z

    .line 31
    .line 32
    iget-boolean v3, p2, Landroidx/recyclerview/widget/s;->a:Z

    .line 33
    .line 34
    if-eq v0, v3, :cond_5

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_5
    iget v0, p2, Landroidx/recyclerview/widget/s;->b:I

    .line 40
    .line 41
    iget v2, p1, Landroidx/recyclerview/widget/s;->b:I

    .line 42
    .line 43
    sub-int/2addr v0, v2

    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    move v1, v0

    .line 47
    goto :goto_3

    .line 48
    :cond_6
    iget p1, p1, Landroidx/recyclerview/widget/s;->c:I

    .line 49
    .line 50
    iget p2, p2, Landroidx/recyclerview/widget/s;->c:I

    .line 51
    .line 52
    sub-int/2addr p1, p2

    .line 53
    if-eqz p1, :cond_7

    .line 54
    .line 55
    move v1, p1

    .line 56
    :cond_7
    :goto_3
    return v1
.end method
