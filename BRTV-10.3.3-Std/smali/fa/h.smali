.class public final Lfa/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/h;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Lfa/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lfa/h;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lfa/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfa/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lfa/g0;

    .line 9
    .line 10
    iget-object v1, v0, Lfa/i0;->b:Lka/n;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lka/n;->b:Lka/r;

    .line 16
    .line 17
    iget-object v1, v1, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/j;->setFocusScrollStrategy(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v1, 0x0

    .line 29
    if-ne p2, v2, :cond_2

    .line 30
    .line 31
    iget-boolean p2, v0, Lfa/g0;->h:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iput-boolean v1, v0, Lfa/g0;->h:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, v0, Lfa/g0;->f:Lka/n;

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    iget v2, p0, Lfa/h;->b:I

    .line 43
    .line 44
    invoke-virtual {p2, p1, v2, v0}, Lka/n;->a(Landroid/view/View;ILjava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return v1

    .line 48
    :pswitch_0
    iget-object v0, p0, Lfa/h;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lfa/d0;

    .line 51
    .line 52
    iget-object v1, v0, Lfa/i0;->b:Lka/n;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    iget-object v1, v1, Lka/n;->b:Lka/r;

    .line 58
    .line 59
    iget-object v1, v1, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/j;->setFocusScrollStrategy(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    const/4 v1, 0x0

    .line 71
    if-ne p2, v2, :cond_5

    .line 72
    .line 73
    iget-boolean p2, v0, Lfa/d0;->h:Z

    .line 74
    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    iput-boolean v1, v0, Lfa/d0;->h:Z

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-object p2, v0, Lfa/d0;->f:Lka/n;

    .line 81
    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    iget v2, p0, Lfa/h;->b:I

    .line 85
    .line 86
    invoke-virtual {p2, p1, v2, v0}, Lka/n;->a(Landroid/view/View;ILjava/lang/Boolean;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_1
    return v1

    .line 90
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/4 p2, 0x1

    .line 95
    if-ne p1, p2, :cond_6

    .line 96
    .line 97
    iget-object p1, p0, Lfa/h;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lfa/k;

    .line 100
    .line 101
    iget-object p2, p1, Lfa/k;->m:Lka/n;

    .line 102
    .line 103
    iget-object p1, p1, Lfa/k;->b:Landroid/widget/ExpandableListView;

    .line 104
    .line 105
    iget-object p2, p2, Lka/n;->b:Lka/r;

    .line 106
    .line 107
    iget v0, p0, Lfa/h;->b:I

    .line 108
    .line 109
    invoke-static {p2, p1, v0}, Lka/r;->R(Lka/r;Landroid/widget/ExpandableListView;I)V

    .line 110
    .line 111
    .line 112
    :cond_6
    const/4 p1, 0x0

    .line 113
    return p1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
