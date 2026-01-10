.class public final Lfa/z0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lfa/z0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lfa/z0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x14

    .line 7
    .line 8
    if-eq p2, p1, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x13

    .line 11
    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lsa/g;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1

    .line 26
    :pswitch_0
    const/4 v0, 0x4

    .line 27
    const/4 v1, 0x1

    .line 28
    iget-object v2, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lka/d0;

    .line 31
    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    iget-object p1, v2, Lka/d0;->d:Lka/i0;

    .line 41
    .line 42
    iget-object p1, p1, Lka/i0;->U:Lta/a;

    .line 43
    .line 44
    invoke-virtual {p1}, Lta/a;->f()V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    const/16 p1, 0x13

    .line 61
    .line 62
    if-ne p2, p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    iget-object p1, v2, Lka/d0;->d:Lka/i0;

    .line 71
    .line 72
    iget-object p1, p1, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 73
    .line 74
    iget-object p2, v2, Lka/d0;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lx6/h;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    iget-object p1, p1, Lx6/h;->g:Lx6/k;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    const/4 v1, 0x0

    .line 95
    :cond_4
    :goto_2
    return v1

    .line 96
    :pswitch_1
    iget-object v0, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lfa/o1;

    .line 99
    .line 100
    iget-object v0, v0, Lfa/c;->d:Landroid/view/View$OnKeyListener;

    .line 101
    .line 102
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :pswitch_2
    iget-object v0, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lfa/o1;

    .line 110
    .line 111
    iget-object v0, v0, Lfa/c;->d:Landroid/view/View$OnKeyListener;

    .line 112
    .line 113
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    return p1

    .line 118
    :pswitch_3
    iget-object v0, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lfa/m1;

    .line 121
    .line 122
    iget-object v0, v0, Lfa/c;->d:Landroid/view/View$OnKeyListener;

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    const/4 p1, 0x0

    .line 132
    :goto_3
    return p1

    .line 133
    :pswitch_4
    iget-object v0, p0, Lfa/z0;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Lfa/b1;

    .line 136
    .line 137
    iget-object v0, v0, Lfa/c;->d:Landroid/view/View$OnKeyListener;

    .line 138
    .line 139
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    return p1

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
