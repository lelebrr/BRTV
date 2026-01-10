.class public final Lfa/m0;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public a:Lfa/o0;

.field public b:Landroid/view/View$OnKeyListener;

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:Lorg/bitspark/android/beans/ChannelBean;


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/m0;->d:Ljava/util/ArrayList;

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

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 7

    .line 1
    check-cast p1, Lfa/l0;

    .line 2
    .line 3
    iget-object v0, p0, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p1, Lfa/l0;->a:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lfa/m0;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lga/i;->a(ILjava/lang/String;)Lorg/bitspark/android/beans/HistoryBean;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-wide v4, v1, Lorg/bitspark/android/beans/HistoryBean;->lastPosition:J

    .line 53
    .line 54
    cmp-long v6, v4, v2

    .line 55
    .line 56
    if-lez v6, :cond_0

    .line 57
    .line 58
    move-wide v2, v4

    .line 59
    :cond_0
    const/4 v4, 0x0

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget v1, v1, Lorg/bitspark/android/beans/HistoryBean;->duration:I

    .line 63
    .line 64
    if-lez v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v5, p1, Lfa/l0;->b:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 69
    .line 70
    if-lez v1, :cond_2

    .line 71
    .line 72
    long-to-int v3, v2

    .line 73
    mul-int/lit8 v3, v3, 0x64

    .line 74
    .line 75
    div-int/2addr v3, v1

    .line 76
    invoke-virtual {v5, v3}, Lorg/bitspark/android/view/MyProcessRelativeLayout;->setProgress(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v5, v4}, Lorg/bitspark/android/view/MyProcessRelativeLayout;->setProgress(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 89
    .line 90
    new-instance v1, Lfa/q;

    .line 91
    .line 92
    const/4 v2, 0x3

    .line 93
    invoke-direct {v1, p0, p2, v2}, Lfa/q;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 100
    .line 101
    new-instance v1, Lfa/j0;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-direct {v1, p0, p1, p2, v2}, Lfa/j0;-><init>(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/p1;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 111
    .line 112
    new-instance v1, Landroidx/appcompat/widget/r2;

    .line 113
    .line 114
    const/4 v2, 0x5

    .line 115
    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/r2;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 122
    .line 123
    new-instance v1, Lfa/k0;

    .line 124
    .line 125
    invoke-direct {v1, p0, p2, p1}, Lfa/k0;-><init>(Lfa/m0;ILfa/l0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e012d

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
    new-instance p2, Lfa/l0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b0219

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p2, Lfa/l0;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    const v0, 0x7f0b021c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 33
    .line 34
    iput-object p1, p2, Lfa/l0;->b:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 35
    .line 36
    return-object p2
.end method
