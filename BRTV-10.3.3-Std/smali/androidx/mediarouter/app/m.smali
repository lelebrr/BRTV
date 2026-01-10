.class public final Landroidx/mediarouter/app/m;
.super Landroid/view/animation/Animation;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(IIILandroid/view/View;)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/mediarouter/app/m;->a:I

    .line 2
    .line 3
    iput p1, p0, Landroidx/mediarouter/app/m;->b:I

    .line 4
    .line 5
    iput p2, p0, Landroidx/mediarouter/app/m;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/mediarouter/app/m;->d:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget-object p2, p0, Landroidx/mediarouter/app/m;->d:Landroid/view/View;

    .line 2
    .line 3
    iget v0, p0, Landroidx/mediarouter/app/m;->c:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/mediarouter/app/m;->b:I

    .line 6
    .line 7
    iget v2, p0, Landroidx/mediarouter/app/m;->a:I

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    int-to-float v1, v1

    .line 14
    mul-float v1, v1, p1

    .line 15
    .line 16
    float-to-int p1, v1

    .line 17
    add-int/2addr v0, p1

    .line 18
    sget p1, Landroidx/mediarouter/app/q0;->S:I

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sub-int v0, v1, v0

    .line 31
    .line 32
    int-to-float v0, v0

    .line 33
    mul-float v0, v0, p1

    .line 34
    .line 35
    float-to-int p1, v0

    .line 36
    sub-int/2addr v1, p1

    .line 37
    invoke-static {v1, p2}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
