.class public final Lea/x;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/bitspark/android/Spark;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;I)V
    .locals 0

    .line 1
    iput p2, p0, Lea/x;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lea/x;->b:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lea/x;->b:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget v0, p0, Lea/x;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lorg/bitspark/android/Spark;->p1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->T()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->x0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->y0()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->u0()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->i0()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 40
    .line 41
    iget-object v1, p1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 42
    .line 43
    iget-object v1, v1, Lka/r;->Y:Lfa/d0;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lfa/d0;->a()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, -0x1

    .line 53
    :goto_0
    if-ltz v1, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lka/r;->j0(Lorg/bitspark/android/beans/ChannelBean;I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void

    .line 61
    :pswitch_4
    sget-boolean v0, Lorg/bitspark/android/Spark;->g2:Z

    .line 62
    .line 63
    xor-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 69
    .line 70
    iget-boolean v0, p1, Lorg/bitspark/android/utils/o;->e:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/bitspark/android/utils/o;->g()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :pswitch_5
    sget-boolean v0, Lorg/bitspark/android/Spark;->g2:Z

    .line 79
    .line 80
    xor-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 86
    .line 87
    new-instance v0, La/f;

    .line 88
    .line 89
    const/16 v1, 0xe

    .line 90
    .line 91
    invoke-direct {v0, v1, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v1, 0x1f4

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_6
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 101
    .line 102
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->G0()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
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
