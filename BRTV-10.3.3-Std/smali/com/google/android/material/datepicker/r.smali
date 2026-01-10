.class public final Lcom/google/android/material/datepicker/r;
.super Lcom/google/android/material/datepicker/b0;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/b0;"
    }
.end annotation


# instance fields
.field public U:I

.field public V:Lcom/google/android/material/datepicker/DateSelector;

.field public W:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public X:Lcom/google/android/material/datepicker/Month;

.field public Y:I

.field public Z:Lcom/google/android/material/datepicker/c;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/b0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/datepicker/r;->U:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "GRID_SELECTOR_KEY"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->V:Lcom/google/android/material/datepicker/DateSelector;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "CURRENT_MONTH_KEY"

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final Q(Lcom/google/android/material/datepicker/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/b0;->T:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final R(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/a0;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/material/datepicker/a0;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/Month;->p(Lcom/google/android/material/datepicker/Month;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/material/datepicker/a0;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/Month;->p(Lcom/google/android/material/datepicker/Month;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int v0, v1, v0

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-le v2, v3, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    add-int/lit8 v0, v1, -0x3

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 60
    .line 61
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Lcom/google/android/material/datepicker/r;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    add-int/lit8 v0, v1, 0x3

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 80
    .line 81
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Lcom/google/android/material/datepicker/r;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 91
    .line 92
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Lcom/google/android/material/datepicker/r;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method public final S(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/r;->Y:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/material/datepicker/j0;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 24
    .line 25
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->c:I

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/material/datepicker/j0;->a:Lcom/google/android/material/datepicker/r;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 32
    .line 33
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    .line 34
    .line 35
    sub-int/2addr v3, v0

    .line 36
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/x0;->scrollToPosition(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->d0:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->e0:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x1

    .line 51
    if-ne p1, v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->d0:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->e0:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/r;->R(Lcom/google/android/material/datepicker/Month;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->s(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 7
    .line 8
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/google/android/material/datepicker/r;->U:I

    .line 15
    .line 16
    const-string v0, "GRID_SELECTOR_KEY"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/material/datepicker/r;->V:Lcom/google/android/material/datepicker/DateSelector;

    .line 25
    .line 26
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 35
    .line 36
    const-string v0, "CURRENT_MONTH_KEY"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 45
    .line 46
    return-void
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/r;->U:I

    .line 8
    .line 9
    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/material/datepicker/c;

    .line 13
    .line 14
    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/r;->Z:Lcom/google/android/material/datepicker/c;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 26
    .line 27
    const v1, 0x101020d

    .line 28
    .line 29
    .line 30
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/u;->V(Landroid/content/Context;I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const v2, 0x7f0e00e5

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v2, 0x7f0e00e0

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/s;->K()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const v2, 0x7f070300

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const v6, 0x7f070301

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    add-int/2addr v6, v2

    .line 74
    const v2, 0x7f0702ff

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    add-int/2addr v2, v6

    .line 82
    const v6, 0x7f0702f0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    sget v7, Lcom/google/android/material/datepicker/x;->f:I

    .line 90
    .line 91
    const v8, 0x7f0702eb

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    mul-int v8, v8, v7

    .line 99
    .line 100
    sub-int/2addr v7, v3

    .line 101
    const v9, 0x7f0702fe

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    mul-int v9, v9, v7

    .line 109
    .line 110
    add-int/2addr v9, v8

    .line 111
    const v7, 0x7f0702e8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    add-int/2addr v2, v6

    .line 119
    add-int/2addr v2, v9

    .line 120
    add-int/2addr v2, p2

    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 122
    .line 123
    .line 124
    const p2, 0x7f0b02fc

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Landroid/widget/GridView;

    .line 132
    .line 133
    new-instance v2, Landroidx/core/widget/i;

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    invoke-direct {v2, v6}, Landroidx/core/widget/i;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v2}, Ln0/s0;->q(Landroid/view/View;Ln0/b;)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Lcom/google/android/material/datepicker/k;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/google/android/material/datepicker/k;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    .line 149
    .line 150
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    .line 157
    .line 158
    const p2, 0x7f0b02ff

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    iput-object p2, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    .line 169
    new-instance p2, Lcom/google/android/material/datepicker/m;

    .line 170
    .line 171
    invoke-direct {p2, p0, v5, v5}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/r;II)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    .line 181
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 182
    .line 183
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    new-instance p2, Lcom/google/android/material/datepicker/a0;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->V:Lcom/google/android/material/datepicker/DateSelector;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 191
    .line 192
    new-instance v4, Lcom/google/android/material/datepicker/n;

    .line 193
    .line 194
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/n;-><init>(Lcom/google/android/material/datepicker/r;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p2, p3, v0, v2, v4}, Lcom/google/android/material/datepicker/a0;-><init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/n;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const v2, 0x7f0c0055

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    const v2, 0x7f0b0302

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    iput-object v4, p0, Lcom/google/android/material/datepicker/r;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    if-eqz v4, :cond_1

    .line 228
    .line 229
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 230
    .line 231
    .line 232
    iget-object v4, p0, Lcom/google/android/material/datepicker/r;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    .line 234
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 235
    .line 236
    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    new-instance v4, Lcom/google/android/material/datepicker/j0;

    .line 245
    .line 246
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/j0;-><init>(Lcom/google/android/material/datepicker/r;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    .line 254
    new-instance v4, Lcom/google/android/material/datepicker/o;

    .line 255
    .line 256
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/o;-><init>(Lcom/google/android/material/datepicker/r;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 260
    .line 261
    .line 262
    :cond_1
    const v0, 0x7f0b02b6

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-eqz v4, :cond_2

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 276
    .line 277
    const-string v4, "SELECTOR_TOGGLE_TAG"

    .line 278
    .line 279
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    new-instance v4, Lb2/h;

    .line 283
    .line 284
    const/4 v5, 0x2

    .line 285
    invoke-direct {v4, v5, p0}, Lb2/h;-><init>(ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v0, v4}, Ln0/s0;->q(Landroid/view/View;Ln0/b;)V

    .line 289
    .line 290
    .line 291
    const v4, 0x7f0b02b8

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 299
    .line 300
    const-string v5, "NAVIGATION_PREV_TAG"

    .line 301
    .line 302
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    const v5, 0x7f0b02b7

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 313
    .line 314
    const-string v6, "NAVIGATION_NEXT_TAG"

    .line 315
    .line 316
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    iput-object v2, p0, Lcom/google/android/material/datepicker/r;->d0:Landroid/view/View;

    .line 324
    .line 325
    const v2, 0x7f0b02fb

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    iput-object v2, p0, Lcom/google/android/material/datepicker/r;->e0:Landroid/view/View;

    .line 333
    .line 334
    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/r;->S(I)V

    .line 335
    .line 336
    .line 337
    iget-object v2, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/Month;->o()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    iget-object v2, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 347
    .line 348
    new-instance v3, Lcom/google/android/material/datepicker/p;

    .line 349
    .line 350
    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/material/datepicker/p;-><init>(Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/a0;Lcom/google/android/material/button/MaterialButton;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    .line 354
    .line 355
    .line 356
    new-instance v2, Landroidx/appcompat/app/a;

    .line 357
    .line 358
    const/4 v3, 0x3

    .line 359
    invoke-direct {v2, v3, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Lcom/google/android/material/datepicker/q;

    .line 366
    .line 367
    const/4 v2, 0x0

    .line 368
    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/material/datepicker/q;-><init>(Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/a0;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Lcom/google/android/material/datepicker/q;

    .line 375
    .line 376
    const/4 v2, 0x1

    .line 377
    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/material/datepicker/q;-><init>(Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/a0;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    :cond_2
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/u;->V(Landroid/content/Context;I)Z

    .line 384
    .line 385
    .line 386
    move-result p3

    .line 387
    if-nez p3, :cond_3

    .line 388
    .line 389
    new-instance p3, Landroidx/recyclerview/widget/f0;

    .line 390
    .line 391
    invoke-direct {p3}, Landroidx/recyclerview/widget/t1;-><init>()V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 395
    .line 396
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/t1;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 397
    .line 398
    .line 399
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 400
    .line 401
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->X:Lcom/google/android/material/datepicker/Month;

    .line 402
    .line 403
    iget-object p2, p2, Lcom/google/android/material/datepicker/a0;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 404
    .line 405
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 406
    .line 407
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/Month;->p(Lcom/google/android/material/datepicker/Month;)I

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 412
    .line 413
    .line 414
    return-object p1
.end method
