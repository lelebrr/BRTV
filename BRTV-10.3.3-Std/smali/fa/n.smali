.class public final Lfa/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public b:Landroid/view/ViewGroup;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lfa/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfa/o;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfa/n;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfa/n;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lfa/n;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0b03f2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    sget v2, Lorg/bitspark/android/R$drawable;->shape_color_fff:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget v2, Lorg/bitspark/android/R$drawable;->shape_color_73ffffff:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 30
    .line 31
    iget-object p2, p0, Lfa/n;->b:Landroid/view/ViewGroup;

    .line 32
    .line 33
    check-cast p2, Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ge v1, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-ne p1, v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lfa/n;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 61
    .line 62
    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    return-void

    .line 67
    :pswitch_0
    iget-object p1, p0, Lfa/n;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lfa/o;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    iget v1, p1, Lfa/o;->d:I

    .line 74
    .line 75
    if-lez v1, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iput v0, p1, Lfa/o;->d:I

    .line 79
    .line 80
    :cond_5
    sget-object v1, Lfa/o;->i:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "ZPF/MXD9K3Jk8X9zM5ZpPDyvEXQ8vmE6aQ==\n"

    .line 88
    .line 89
    const-string v4, "SdxSHF3QBl8=\n"

    .line 90
    .line 91
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, "WYhtAl3kGr0cgXcTVOxZ\n"

    .line 102
    .line 103
    const-string v3, "eeU+ZzGBeck=\n"

    .line 104
    .line 105
    invoke-static {p2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget p2, p1, Lfa/o;->b:I

    .line 113
    .line 114
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 122
    .line 123
    invoke-static {v1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget p2, p1, Lfa/o;->b:I

    .line 127
    .line 128
    iget-object v1, p0, Lfa/n;->b:Landroid/view/ViewGroup;

    .line 129
    .line 130
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-ge p2, v1, :cond_6

    .line 141
    .line 142
    iget p2, p1, Lfa/o;->b:I

    .line 143
    .line 144
    iput p2, p1, Lfa/o;->b:I

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iput v0, p1, Lfa/o;->b:I

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 153
    .line 154
    .line 155
    :goto_2
    return-void

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
