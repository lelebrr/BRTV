.class public final Landroidx/leanback/widget/c;
.super Landroid/view/animation/Animation;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final b:F

.field public final c:F

.field public final synthetic d:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseCardView;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/leanback/widget/c;->a:I

    .line 2
    .line 3
    packed-switch p4, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/leanback/widget/c;->d:Landroidx/leanback/widget/BaseCardView;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Landroidx/leanback/widget/c;->b:F

    .line 12
    .line 13
    sub-float/2addr p3, p2

    .line 14
    iput p3, p0, Landroidx/leanback/widget/c;->c:F

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-object p1, p0, Landroidx/leanback/widget/c;->d:Landroidx/leanback/widget/BaseCardView;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 20
    .line 21
    .line 22
    iput p2, p0, Landroidx/leanback/widget/c;->b:F

    .line 23
    .line 24
    sub-float/2addr p3, p2

    .line 25
    iput p3, p0, Landroidx/leanback/widget/c;->c:F

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iput-object p1, p0, Landroidx/leanback/widget/c;->d:Landroidx/leanback/widget/BaseCardView;

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    .line 32
    .line 33
    iput p2, p0, Landroidx/leanback/widget/c;->b:F

    .line 34
    .line 35
    sub-float/2addr p3, p2

    .line 36
    iput p3, p0, Landroidx/leanback/widget/c;->c:F

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget p2, p0, Landroidx/leanback/widget/c;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroidx/leanback/widget/c;->c:F

    .line 7
    .line 8
    mul-float p1, p1, p2

    .line 9
    .line 10
    iget p2, p0, Landroidx/leanback/widget/c;->b:F

    .line 11
    .line 12
    add-float/2addr p1, p2

    .line 13
    iget-object p2, p0, Landroidx/leanback/widget/c;->d:Landroidx/leanback/widget/BaseCardView;

    .line 14
    .line 15
    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget p2, p0, Landroidx/leanback/widget/c;->c:F

    .line 22
    .line 23
    mul-float p1, p1, p2

    .line 24
    .line 25
    iget p2, p0, Landroidx/leanback/widget/c;->b:F

    .line 26
    .line 27
    add-float/2addr p1, p2

    .line 28
    iget-object p2, p0, Landroidx/leanback/widget/c;->d:Landroidx/leanback/widget/BaseCardView;

    .line 29
    .line 30
    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget p2, p0, Landroidx/leanback/widget/c;->c:F

    .line 37
    .line 38
    mul-float p1, p1, p2

    .line 39
    .line 40
    iget p2, p0, Landroidx/leanback/widget/c;->b:F

    .line 41
    .line 42
    add-float/2addr p1, p2

    .line 43
    iget-object p2, p0, Landroidx/leanback/widget/c;->d:Landroidx/leanback/widget/BaseCardView;

    .line 44
    .line 45
    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    :goto_0
    iget-object v0, p2, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ge p1, v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p2, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/View;

    .line 63
    .line 64
    iget v1, p2, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
