.class public final Lt3/b;
.super Landroidx/appcompat/app/c0;
.source "MyApplication"


# instance fields
.field public final synthetic c:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic d:Lt3/c;


# direct methods
.method public constructor <init>(Lt3/c;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt3/b;->d:Lt3/c;

    .line 2
    .line 3
    iput-object p2, p0, Lt3/b;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/c0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/b;->d:Lt3/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lt3/c;->getItemViewType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x555

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x111

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x333

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x222

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p0, Lt3/b;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 27
    .line 28
    iget p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 29
    .line 30
    :goto_1
    return p1
.end method
