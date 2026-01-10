.class public final Lcom/google/android/material/internal/o;
.super Landroidx/recyclerview/widget/r1;
.source "MyApplication"


# instance fields
.field public final synthetic f:Lcom/google/android/material/internal/r;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/r;Lcom/google/android/material/internal/NavigationMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/o;->f:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/r1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lo0/h;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/r1;->d(Landroid/view/View;Lo0/h;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/o;->f:Lcom/google/android/material/internal/r;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/material/internal/j;->d:Lcom/google/android/material/internal/r;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    :goto_0
    const/4 v2, 0x0

    .line 23
    :goto_1
    iget-object v3, p1, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/google/android/material/internal/j;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_2

    .line 32
    .line 33
    iget-object v3, p1, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/j;->getItemViewType(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p2, Lo0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
