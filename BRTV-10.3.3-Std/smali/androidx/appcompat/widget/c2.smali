.class public final Landroidx/appcompat/widget/c2;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/c2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/c2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/c2;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/c2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lla/d;

    .line 9
    .line 10
    iget-object p2, p1, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lla/d;->S()V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    float-to-int v0, v0

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    float-to-int p2, p2

    .line 34
    iget-object v1, p0, Landroidx/appcompat/widget/c2;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Landroidx/appcompat/widget/ListPopupWindow;

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    if-ltz v0, :cond_0

    .line 51
    .line 52
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ge v0, v2, :cond_0

    .line 59
    .line 60
    if-ltz p2, :cond_0

    .line 61
    .line 62
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-ge p2, v0, :cond_0

    .line 69
    .line 70
    iget-object p1, v1, Landroidx/appcompat/widget/ListPopupWindow;->u:Landroid/os/Handler;

    .line 71
    .line 72
    iget-object p2, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:Landroidx/appcompat/widget/z1;

    .line 73
    .line 74
    const-wide/16 v0, 0xfa

    .line 75
    .line 76
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 p2, 0x1

    .line 81
    if-ne p1, p2, :cond_1

    .line 82
    .line 83
    iget-object p1, v1, Landroidx/appcompat/widget/ListPopupWindow;->u:Landroid/os/Handler;

    .line 84
    .line 85
    iget-object p2, v1, Landroidx/appcompat/widget/ListPopupWindow;->q:Landroidx/appcompat/widget/z1;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 91
    return p1

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
