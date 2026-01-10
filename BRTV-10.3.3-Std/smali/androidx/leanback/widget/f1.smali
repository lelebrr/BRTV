.class public final Landroidx/leanback/widget/f1;
.super Landroid/util/Property;
.source "MyApplication"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/leanback/widget/f1;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p2, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/f1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/leanback/widget/i0;

    .line 7
    .line 8
    iget p1, p1, Landroidx/leanback/widget/i0;->c:F

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    check-cast p1, Landroidx/leanback/widget/i0;

    .line 16
    .line 17
    iget p1, p1, Landroidx/leanback/widget/i0;->e:F

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_1
    check-cast p1, Landroidx/leanback/widget/i0;

    .line 25
    .line 26
    iget p1, p1, Landroidx/leanback/widget/i0;->a:F

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :pswitch_2
    check-cast p1, Landroidx/leanback/widget/StreamingTextView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/leanback/widget/StreamingTextView;->getStreamPosition()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/f1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/leanback/widget/i0;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget v0, p1, Landroidx/leanback/widget/i0;->h:F

    .line 15
    .line 16
    mul-float p2, p2, v0

    .line 17
    .line 18
    iget v0, p1, Landroidx/leanback/widget/i0;->i:F

    .line 19
    .line 20
    mul-float p2, p2, v0

    .line 21
    .line 22
    iput p2, p1, Landroidx/leanback/widget/i0;->c:F

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/leanback/widget/i0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p1, Landroidx/leanback/widget/i0;

    .line 31
    .line 32
    check-cast p2, Ljava/lang/Float;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p1, Landroidx/leanback/widget/i0;->e:F

    .line 39
    .line 40
    const/high16 v0, 0x40000000    # 2.0f

    .line 41
    .line 42
    div-float/2addr p2, v0

    .line 43
    iput p2, p1, Landroidx/leanback/widget/i0;->f:F

    .line 44
    .line 45
    iget-object v0, p1, Landroidx/leanback/widget/i0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 46
    .line 47
    iget v1, v0, Landroidx/leanback/widget/PagingIndicator;->v:F

    .line 48
    .line 49
    mul-float p2, p2, v1

    .line 50
    .line 51
    iput p2, p1, Landroidx/leanback/widget/i0;->g:F

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    check-cast p1, Landroidx/leanback/widget/i0;

    .line 58
    .line 59
    check-cast p2, Ljava/lang/Float;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iput p2, p1, Landroidx/leanback/widget/i0;->a:F

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/leanback/widget/i0;->a()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Landroidx/leanback/widget/i0;->j:Landroidx/leanback/widget/PagingIndicator;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    check-cast p1, Landroidx/leanback/widget/StreamingTextView;

    .line 77
    .line 78
    check-cast p2, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/StreamingTextView;->setStreamPosition(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
