.class public final Lcom/google/android/material/datepicker/j0;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/r;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/j0;->a:Lcom/google/android/material/datepicker/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/j0;->a:Lcom/google/android/material/datepicker/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->e:I

    .line 6
    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    check-cast p1, Lcom/google/android/material/datepicker/i0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/material/datepicker/j0;->a:Lcom/google/android/material/datepicker/r;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/android/material/datepicker/r;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 10
    .line 11
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->c:I

    .line 12
    .line 13
    add-int/2addr v3, p2

    .line 14
    iget-object p2, p1, Lcom/google/android/material/datepicker/i0;->a:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const v4, 0x7f120188

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-array v6, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v5, v6, v0

    .line 38
    .line 39
    const-string v5, "%d"

    .line 40
    .line 41
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object p1, p1, Lcom/google/android/material/datepicker/i0;->a:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    new-array v5, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v4, v5, v0

    .line 57
    .line 58
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, v2, Lcom/google/android/material/datepicker/r;->Z:Lcom/google/android/material/datepicker/c;

    .line 66
    .line 67
    invoke-static {}, Lcom/google/android/material/datepicker/g0;->g()Ljava/util/Calendar;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-ne v4, v3, :cond_0

    .line 76
    .line 77
    iget-object v4, p2, Lcom/google/android/material/datepicker/c;->f:Landroidx/appcompat/widget/u;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v4, p2, Lcom/google/android/material/datepicker/c;->d:Landroidx/appcompat/widget/u;

    .line 81
    .line 82
    :goto_0
    iget-object v2, v2, Lcom/google/android/material/datepicker/r;->V:Lcom/google/android/material/datepicker/DateSelector;

    .line 83
    .line 84
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->g()Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-ne v5, v3, :cond_1

    .line 116
    .line 117
    iget-object v4, p2, Lcom/google/android/material/datepicker/c;->e:Landroidx/appcompat/widget/u;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/u;->k(Landroid/widget/TextView;)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Lcom/google/android/material/datepicker/h0;

    .line 124
    .line 125
    invoke-direct {p2, p0, v3}, Lcom/google/android/material/datepicker/h0;-><init>(Lcom/google/android/material/datepicker/j0;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e00e6

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/widget/TextView;

    .line 10
    .line 11
    new-instance p2, Lcom/google/android/material/datepicker/i0;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/i0;-><init>(Landroid/widget/TextView;)V

    .line 14
    .line 15
    .line 16
    return-object p2
.end method
