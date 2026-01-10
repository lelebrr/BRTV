.class public final Lb2/h;
.super Ln0/b;
.source "MyApplication"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb2/h;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Lb2/h;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ln0/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lb2/h;->d:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Ln0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :sswitch_0
    invoke-super {p0, p1, p2}, Ln0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lb2/h;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :sswitch_1
    invoke-super {p0, p1, p2}, Ln0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 24
    .line 25
    .line 26
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lb2/h;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->e:Lb2/a;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lb2/a;->c()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-le v0, v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v1, 0x1000

    .line 60
    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->e:Lb2/a;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lb2/a;->c()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 72
    .line 73
    .line 74
    iget v0, p1, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 77
    .line 78
    .line 79
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Landroid/view/View;Lo0/h;)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lb2/h;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v4, p0, Ln0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    .line 8
    iget v5, p0, Lb2/h;->d:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p2, p2, Lo0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 14
    .line 15
    invoke-virtual {v4, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 16
    .line 17
    .line 18
    check-cast v3, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 19
    .line 20
    iget-boolean p1, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p2, p2, Lo0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 27
    .line 28
    invoke-virtual {v4, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 29
    .line 30
    .line 31
    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 32
    .line 33
    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    iget-object v0, p2, Lo0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 47
    .line 48
    .line 49
    check-cast v3, Lcom/google/android/material/datepicker/r;

    .line 50
    .line 51
    iget-object p1, v3, Lcom/google/android/material/datepicker/r;->e0:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    const p1, 0x7f120199

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const p1, 0x7f120197

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-virtual {p2, p1}, Lo0/h;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    iget-object v5, p2, Lo0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 79
    .line 80
    invoke-virtual {v4, p1, v5}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 81
    .line 82
    .line 83
    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I

    .line 84
    .line 85
    check-cast v3, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    instance-of v4, p1, Lcom/google/android/material/button/MaterialButton;

    .line 91
    .line 92
    if-nez v4, :cond_1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-ge v4, v6, :cond_4

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-ne v6, p1, :cond_2

    .line 108
    .line 109
    move v0, v5

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    instance-of v6, v6, Lcom/google/android/material/button/MaterialButton;

    .line 116
    .line 117
    if-eqz v6, :cond_3

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    add-int/2addr v5, v2

    .line 126
    :cond_3
    add-int/2addr v4, v2

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    :goto_2
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 129
    .line 130
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton;->n:Z

    .line 131
    .line 132
    invoke-static {v1, v2, v0, v2, p1}, Lo0/g;->a(IIIIZ)Lo0/g;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p2, p1}, Lo0/h;->k(Lo0/g;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_3
    iget-object v5, p2, Lo0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 141
    .line 142
    invoke-virtual {v4, p1, v5}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 143
    .line 144
    .line 145
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p2, p1}, Lo0/h;->i(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 155
    .line 156
    iget-object p1, v3, Landroidx/viewpager/widget/ViewPager;->e:Lb2/a;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    invoke-virtual {p1}, Lb2/a;->c()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-le p1, v2, :cond_5

    .line 165
    .line 166
    const/4 v1, 0x1

    .line 167
    :cond_5
    invoke-virtual {p2, v1}, Lo0/h;->n(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    const/16 p1, 0x1000

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Lo0/h;->a(I)V

    .line 179
    .line 180
    .line 181
    :cond_6
    invoke-virtual {v3, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    const/16 p1, 0x2000

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Lo0/h;->a(I)V

    .line 190
    .line 191
    .line 192
    :cond_7
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget v0, p0, Lb2/h;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Ln0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Ln0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p3, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x1000

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lb2/h;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 25
    .line 26
    if-eq p2, p1, :cond_3

    .line 27
    .line 28
    const/16 p1, 0x2000

    .line 29
    .line 30
    if-eq p2, p1, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 p3, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, -0x1

    .line 35
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget p1, v1, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 42
    .line 43
    sub-int/2addr p1, p3

    .line 44
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget p1, v1, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 55
    .line 56
    add-int/2addr p1, p3

    .line 57
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return p3

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
