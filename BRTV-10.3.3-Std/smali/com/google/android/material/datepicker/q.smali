.class public final Lcom/google/android/material/datepicker/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/datepicker/a0;

.field public final synthetic c:Lcom/google/android/material/datepicker/r;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/a0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/material/datepicker/q;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/r;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/a0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/q;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/r;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/a0;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/android/material/datepicker/a0;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/google/android/material/datepicker/Month;->a:Ljava/util/Calendar;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/material/datepicker/g0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/datepicker/Month;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/r;->R(Lcom/google/android/material/datepicker/Month;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/r;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    iget-object v1, p1, Lcom/google/android/material/datepicker/r;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ge v0, v1, :cond_1

    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/a0;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/google/android/material/datepicker/a0;->a:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/google/android/material/datepicker/Month;->a:Ljava/util/Calendar;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/android/material/datepicker/g0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v2, 0x2

    .line 90
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/google/android/material/datepicker/Month;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/r;->R(Lcom/google/android/material/datepicker/Month;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
