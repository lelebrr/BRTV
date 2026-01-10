.class public final La7/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La7/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La7/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget v0, p0, La7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, La7/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, La7/c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lorg/bitspark/android/view/CircularProgressBar;

    .line 38
    .line 39
    iput p1, v0, Lorg/bitspark/android/view/CircularProgressBar;->b:I

    .line 40
    .line 41
    iget p1, v0, Lorg/bitspark/android/view/CircularProgressBar;->b:I

    .line 42
    .line 43
    int-to-float v1, p1

    .line 44
    const/high16 v2, 0x43b40000    # 360.0f

    .line 45
    .line 46
    mul-float v1, v1, v2

    .line 47
    .line 48
    iget v2, v0, Lorg/bitspark/android/view/CircularProgressBar;->c:I

    .line 49
    .line 50
    int-to-float v2, v2

    .line 51
    div-float/2addr v1, v2

    .line 52
    iput v1, v0, Lorg/bitspark/android/view/CircularProgressBar;->h:F

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lorg/bitspark/android/view/CircularProgressBar;->setProgress(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    iget-object v0, p0, La7/c;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Lcom/google/android/material/internal/d;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->q(F)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Float;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object v0, p0, La7/c;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lcom/google/android/material/textfield/m;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Float;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iget-object v0, p0, La7/c;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget-object v0, p0, La7/c;->b:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/Float;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iget-object v0, p0, La7/c;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:Lu6/h;

    .line 152
    .line 153
    if-eqz v0, :cond_0

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Lu6/h;->o(F)V

    .line 156
    .line 157
    .line 158
    :cond_0
    return-void

    .line 159
    :pswitch_6
    iget-object p1, p0, La7/c;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
