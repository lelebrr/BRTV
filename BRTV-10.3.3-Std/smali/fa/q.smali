.class public final Lfa/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/k0;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/k0;II)V
    .locals 0

    .line 1
    iput p3, p0, Lfa/q;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    iput p2, p0, Lfa/q;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lfa/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 7
    .line 8
    check-cast v0, Lfa/o1;

    .line 9
    .line 10
    iget-object v0, v0, Lfa/c;->g:Lfa/o0;

    .line 11
    .line 12
    iget v1, p0, Lfa/q;->b:I

    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 19
    .line 20
    check-cast v0, Lfa/o1;

    .line 21
    .line 22
    iget-object v0, v0, Lfa/c;->g:Lfa/o0;

    .line 23
    .line 24
    iget v1, p0, Lfa/q;->b:I

    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 31
    .line 32
    check-cast v0, Lfa/b1;

    .line 33
    .line 34
    iget-object v0, v0, Lfa/c;->g:Lfa/o0;

    .line 35
    .line 36
    iget v1, p0, Lfa/q;->b:I

    .line 37
    .line 38
    invoke-interface {v0, v1, p1}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 43
    .line 44
    check-cast v0, Lfa/m0;

    .line 45
    .line 46
    iget-object v0, v0, Lfa/m0;->a:Lfa/o0;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget v1, p0, Lfa/q;->b:I

    .line 51
    .line 52
    invoke-interface {v0, v1, p1}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :pswitch_3
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 57
    .line 58
    check-cast v0, Lfa/g0;

    .line 59
    .line 60
    iget-object v0, v0, Lfa/g0;->f:Lka/n;

    .line 61
    .line 62
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 63
    .line 64
    iget v2, p0, Lfa/q;->b:I

    .line 65
    .line 66
    invoke-virtual {v0, p1, v2, v1}, Lka/n;->a(Landroid/view/View;ILjava/lang/Boolean;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_4
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 71
    .line 72
    check-cast v0, Lfa/d0;

    .line 73
    .line 74
    iget-object v0, v0, Lfa/d0;->f:Lka/n;

    .line 75
    .line 76
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    iget v2, p0, Lfa/q;->b:I

    .line 79
    .line 80
    invoke-virtual {v0, p1, v2, v1}, Lka/n;->a(Landroid/view/View;ILjava/lang/Boolean;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_5
    iget-object v0, p0, Lfa/q;->c:Landroidx/recyclerview/widget/k0;

    .line 85
    .line 86
    check-cast v0, Lfa/t;

    .line 87
    .line 88
    iget-object v0, v0, Lfa/t;->h:Lfa/o0;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget v1, p0, Lfa/q;->b:I

    .line 93
    .line 94
    invoke-interface {v0, v1, p1}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
