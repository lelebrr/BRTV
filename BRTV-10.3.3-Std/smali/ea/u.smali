.class public final Lea/u;
.super Landroid/os/Handler;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_33

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_32

    const/16 v3, 0x47

    if-eq v2, v3, :cond_31

    const/16 v3, 0x48

    if-eq v2, v3, :cond_30

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x51

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x5d

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x82

    if-eq v2, v3, :cond_29

    const/16 v3, 0x83

    if-eq v2, v3, :cond_26

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_25

    const/16 v3, 0xca

    if-eq v2, v3, :cond_23

    const/16 v3, 0x270e

    if-eq v2, v3, :cond_22

    const/16 v3, 0x270f

    if-eq v2, v3, :cond_21

    packed-switch v2, :pswitch_data_0

    const-string v3, "JxxXsPN2zSk=\n"

    const-string v6, "S3Mw2Z0=\n"

    const-wide/16 v7, 0xa

    const-wide/16 v9, 0x64

    const/16 v11, 0x8c

    const/4 v12, -0x1

    const/16 v13, 0x8

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    goto/16 :goto_7

    .line 2
    :pswitch_0
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lga/i;->e:Lorg/bitspark/android/utils/LimitQueue;

    invoke-virtual {v0}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lga/i;->f:Lorg/bitspark/android/utils/LimitQueue;

    invoke-virtual {v0}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    const v1, 0x7f0b0365

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    goto/16 :goto_7

    .line 9
    :cond_0
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    invoke-virtual {v0, v12}, Landroid/view/View;->setNextFocusRightId(I)V

    goto/16 :goto_7

    .line 10
    :pswitch_1
    const-string v1, "G1CuFoZT\n"

    const-string v2, "WQPjd+89AHs=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fpJXgB8b+a8TsnK2MCjD03y0caAhL9nBZ75qtCE+ycFnuGo=\n"

    const-string v3, "M/ck8358nJU=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 11
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 13
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->G:Landroid/widget/RadioButton;

    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 14
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->G:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 15
    :pswitch_2
    const-string v1, "ArR6OBlY\n"

    const-string v2, "QOc3WXA2XT0=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zw1jvjZJyRSiLUaIGXrzaM0rRZ4IZuV91idClAhs+XrWJ14=\n"

    const-string v3, "gmgQzVcurC4=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 16
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 18
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 19
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 20
    :pswitch_3
    const-string v1, "NuyK4gdc\n"

    const-string v2, "dL/Hg24yhTs=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8B5HIhOgy+2dPmIUPJPxkfI4YQIti+eB+CR2BCaT4Zk=\n"

    const-string v3, "vXs0UXLHrtc=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 21
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 23
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 24
    :pswitch_4
    const-string v2, "eyJ0cb6l\n"

    const-string v3, "OXE5ENfLaJw=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BjxXdOEp8S5rHHJCzhrLUgQacVTfCtFSCgxoU98D0Voe\n"

    const-string v4, "S1kkB4BOlBQ=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 25
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sput-boolean v0, Lorg/bitspark/android/Spark;->a2:Z

    .line 27
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 28
    iget-object v2, v2, Lorg/bitspark/android/Spark;->c0:Landroid/widget/TextView;

    .line 29
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 31
    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->Q()V

    .line 32
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v2, Lorg/bitspark/android/Spark;->N:Lka/j;

    if-eqz v2, :cond_2

    .line 33
    iget-object v3, v2, Lka/j;->U:Landroid/view/View;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f0b01f2

    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v3, v2, Lka/j;->V:Lcom/youth/banner/Banner;

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    iget-object v2, v2, Lka/j;->V:Lcom/youth/banner/Banner;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 37
    :cond_2
    :goto_0
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 38
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->Z(I)V

    goto/16 :goto_7

    .line 39
    :pswitch_5
    const-string v0, "phH6D0Kl\n"

    const-string v1, "5EK3bivLv2w=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kBLbdNuNuDT9Mv5C9L6CSJI0/VTluZhPjzTgWPi+kw==\n"

    const-string v2, "3XeoB7rq3Q4=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 40
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->h0()V

    goto/16 :goto_7

    .line 42
    :pswitch_6
    const-string v0, "aTaazd49\n"

    const-string v1, "K2XXrLdTqYM=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qqRBTSgWHtfHhGR7ByUkq6iCZ20WIj6stYJ6YQwl\n"

    const-string v2, "58EyPklxe+0=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 43
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    iget-object v1, v0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_34

    sget-boolean v1, Lka/m0;->G0:Z

    if-eqz v1, :cond_34

    .line 45
    iget-object v0, v0, Lka/m0;->m0:Landroid/widget/ImageButton;

    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 46
    :pswitch_7
    const-string v1, "lCzu8ANu\n"

    const-string v2, "1n+jkWoAlZI=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PqDSs07cikNTgPeFYe+wPzyG9JNw+r8pIJrjlXvvoDc=\n"

    const-string v3, "c8WhwC+773k=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 47
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->F:Landroid/widget/RadioButton;

    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 49
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->F:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 50
    :pswitch_8
    const-string v1, "x9kZg9cM\n"

    const-string v2, "hYpU4r5iR3g=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "g0n+v2BRfLPuaduJT2JGz4Fv2J9eYFbNkW7YmFV5Vw==\n"

    const-string v3, "ziyNzAE2GYk=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 51
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 53
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 54
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 55
    :pswitch_9
    const-string v1, "Om1QBtcq\n"

    const-string v2, "eD4dZ75EW2k=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8wNE5bPv5P2eI2HTnNzelPYpYMmfzc+S\n"

    const-string v3, "vmY3ltKIgcc=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 56
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v2, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 58
    invoke-virtual {v1, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    goto/16 :goto_7

    .line 59
    :pswitch_a
    const-string v0, "Du9Byb2T\n"

    const-string v2, "TLwMqNT9yrs=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "97mHqchYs/+amaKf52uJjfOYsYXkepiQ\n"

    const-string v3, "utz02qk/1sU=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 60
    invoke-static {v0, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 62
    iget-object v0, v0, Lorg/bitspark/android/Spark;->p1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->T()V

    .line 65
    :cond_3
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 66
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->F0(Z)V

    goto/16 :goto_7

    .line 67
    :pswitch_b
    const-string v2, "vSUAw78Z\n"

    const-string v3, "/3ZNotZ3MX0=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bdn6bF0VEqEA+d9aciYoyGjz3kB5ICXUcg==\n"

    const-string v4, "ILyJHzxyd5s=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 68
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->V()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    invoke-static {}, Lra/f;->b()Lra/f;

    move-result-object v2

    invoke-virtual {v2}, Lra/f;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lorg/bitspark/android/Spark;->g2:Z

    if-nez v2, :cond_6

    .line 71
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->T()V

    .line 72
    invoke-static {}, Lra/f;->b()Lra/f;

    move-result-object v2

    invoke-virtual {v2}, Lra/f;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/bitspark/android/Spark;->I(Lorg/bitspark/android/Spark;I)V

    .line 74
    invoke-static {}, Lra/f;->b()Lra/f;

    move-result-object v0

    invoke-virtual {v0}, Lra/f;->a()V

    goto/16 :goto_7

    .line 75
    :cond_4
    invoke-static {}, Lra/f;->b()Lra/f;

    move-result-object v2

    .line 76
    iget-object v3, v2, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    if-eqz v3, :cond_34

    .line 77
    invoke-virtual {v2}, Lra/f;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    iput v1, v2, Lra/f;->f:I

    goto :goto_1

    .line 79
    :cond_5
    iget v1, v2, Lra/f;->f:I

    add-int/2addr v1, v0

    iput v1, v2, Lra/f;->f:I

    .line 80
    :goto_1
    iget-object v0, v2, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    iget-boolean v1, v2, Lra/f;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v3, v2, Lra/f;->f:I

    iget-object v4, v2, Lra/f;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3, v4}, Lra/f;->e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 81
    :cond_6
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/bitspark/android/Spark;->I(Lorg/bitspark/android/Spark;I)V

    goto/16 :goto_7

    .line 82
    :cond_7
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/bitspark/android/Spark;->I(Lorg/bitspark/android/Spark;I)V

    goto/16 :goto_7

    .line 83
    :pswitch_c
    const-string v0, "LSJy53jB\n"

    const-string v1, "b3E/hhGvcf4=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tShAC0HPXHXYCGU9bvxmH7QMaj1y93oAtR1/PXThdgE=\n"

    const-string v2, "+E0zeCCoOU8=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 84
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 85
    :pswitch_d
    const-string v0, "H7/mnmfZ\n"

    const-string v1, "Xeyr/w63y9s=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lnVALBnA/jn7VWUaNvPEU5dRahoq+MhXmkRmDCfk00KVV3Yb\n"

    const-string v2, "2xAzX3inmwM=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 86
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 87
    :pswitch_e
    const-string v0, "ESPKgvCV\n"

    const-string v1, "U3CH45n756M=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ihGIKzSSgJbnMa0dG6G65I4wvgcFp6rvgieoBxe0tw==\n"

    const-string v2, "x3T7WFX15aw=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 88
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->T()V

    goto/16 :goto_7

    .line 90
    :pswitch_f
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lb6+wUjsOH0=\n"

    const-string v3, "+NvQtByVSBg=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lea/d;->valueOf(Ljava/lang/String;)Lea/d;

    move-result-object v1

    iput-object v1, v0, Lorg/bitspark/android/Spark;->J0:Lea/d;

    goto/16 :goto_7

    .line 91
    :pswitch_10
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 92
    iget-object v2, v0, Lorg/bitspark/android/Spark;->b0:Landroid/widget/ImageView;

    .line 93
    new-instance v3, Lea/v;

    invoke-direct {v3, v0, v1}, Lea/v;-><init>(Lorg/bitspark/android/Spark;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    const-string v0, "evloZzOz\n"

    const-string v1, "OKolBlrdwkk=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UZZxfXmwRZ08tlRLVoN/91CyW1FLknLuWaA=\n"

    const-string v2, "HPMCDhjXIKc=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 95
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    iput-object v1, v0, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 98
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 99
    iget-object v1, v0, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 100
    invoke-static {v0, v1}, Lorg/bitspark/android/Spark;->D(Lorg/bitspark/android/Spark;Landroid/os/Bundle;)Z

    goto/16 :goto_7

    .line 101
    :pswitch_11
    const-string v1, "XMsVauOQ\n"

    const-string v2, "HphYC4r++3U=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rzVuUrJ3Cc/CFUtknUQzp6cDSGyWTzy0rglYcw==\n"

    const-string v3, "4lAdIdMQbPU=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 102
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0xfa0

    add-long/2addr v2, v6

    .line 104
    iput-wide v2, v1, Lorg/bitspark/android/Spark;->i1:J

    .line 105
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 106
    sget v2, Lorg/bitspark/android/Spark;->m2:I

    .line 107
    iget-object v3, v1, Lorg/bitspark/android/Spark;->x:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H7OA+zSI3AoMr5b8eZ71FU2/gP41jPUPA7HJ\n"

    const-string v6, "bdbzjlntjGY=\n"

    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v2}, Lra/a;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v3, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v0}, Lra/a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v0}, Lra/a;->c()V

    .line 112
    :cond_8
    iget-object v0, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    iget-object v2, v1, Lorg/bitspark/android/Spark;->Z:Ljava/lang/String;

    invoke-interface {v0, v2}, Lra/a;->h(Ljava/lang/String;)V

    .line 113
    iget-object v0, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v0}, Lra/a;->start()V

    .line 114
    iget-wide v6, v1, Lorg/bitspark/android/Spark;->G1:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_34

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k3ArBglBZLmAbD0BRFdNpsFmPRYPBEC62w==\n"

    const-string v4, "4RVYc2QkNNU=\n"

    invoke-static {v2, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lorg/bitspark/android/Spark;->G1:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v3, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    iget-wide v1, v1, Lorg/bitspark/android/Spark;->G1:J

    invoke-interface {v0, v1, v2}, Lra/a;->seekTo(J)V

    goto/16 :goto_7

    .line 118
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gp+XDQH9iJmRg4EKTP2gmtCTlwgA+aGcnp3e\n"

    const-string v5, "8PrkeGyY2PU=\n"

    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v4}, Lra/a;->isPlaying()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v3, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v2, v0}, Lra/a;->setPlayWhenReady(Z)V

    .line 121
    invoke-virtual {v1, v0}, Lorg/bitspark/android/Spark;->c0(Z)V

    .line 122
    iget-object v0, v1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v0}, Lra/a;->b()V

    goto/16 :goto_7

    .line 123
    :pswitch_12
    const-string v1, "hYW0tZes\n"

    const-string v2, "x9b51P7Cvfo=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DkLsVJxE5hljYslis3fccBdoz3itYs96BnU=\n"

    const-string v3, "QyefJ/0jgyM=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 124
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v1}, Lorg/bitspark/android/Spark;->s(Lorg/bitspark/android/Spark;)V

    .line 126
    sget-boolean v1, Lorg/bitspark/android/Spark;->a2:Z

    if-eqz v1, :cond_34

    .line 127
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 128
    invoke-virtual {v1, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    goto/16 :goto_7

    .line 129
    :pswitch_13
    const-string v0, "J+lvI4/q\n"

    const-string v1, "ZboiQuaEaq8=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9VDqvSnNk0KYcM+LBv6pLvdxxo0A67g2/XnGigfksw==\n"

    const-string v2, "uDWZzkiq9ng=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->X()Z

    .line 131
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    invoke-virtual {v0}, Lka/m0;->X()V

    .line 132
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    sget-object v1, Lea/d;->d:Lea/d;

    sput-object v1, Lka/m0;->F0:Lea/d;

    .line 133
    invoke-static {v0}, Lorg/bitspark/android/Spark;->A(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 134
    :pswitch_14
    const-string v0, "ft+3K0Gh\n"

    const-string v2, "PIz6SijPEU4=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2CLnb/RTVnS1AsJZ22BsDd0G2lLQeGwLxxU=\n"

    const-string v3, "lUeUHJU0M04=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    const-string v2, "6EYU0aTuJVzBRgzRq+83Ro9GEoOo9GU=\n"

    const-string v3, "ryNg8ceGRDI=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bitspark/android/Spark;->B0(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 136
    :pswitch_15
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    if-nez v0, :cond_a

    .line 137
    new-instance v0, Lga/i;

    invoke-direct {v0}, Lga/i;-><init>()V

    sput-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 138
    :cond_a
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->K:Lka/e;

    invoke-virtual {v0}, Lka/e;->Q()V

    .line 139
    const-string v0, "160ndR0C\n"

    const-string v2, "lf5qFHRsJLU=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "zr3ewP1cN3ajnfv20m8ND8uZ4/3Zdw0IzJbo\n"

    const-string v3, "g9its5w7Ukw=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sput-boolean v1, Lorg/bitspark/android/Spark;->f2:Z

    .line 141
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->y(Lorg/bitspark/android/Spark;)V

    .line 142
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->X()Z

    goto/16 :goto_7

    .line 144
    :pswitch_16
    const-string v0, "wg6+vl8G\n"

    const-string v1, "gF3z3zZoi1s=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kDzDdFVgfI79HOZCelNG4pId70R8Rlf6mBXvQHFT\n"

    const-string v2, "3VmwBzQHGbQ=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-boolean v0, Lea/h;->m:Z

    if-eqz v0, :cond_b

    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->enabledVoD:Z

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->z(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 147
    :cond_b
    sget-boolean v0, Lorg/bitspark/android/Spark;->f2:Z

    if-nez v0, :cond_34

    .line 148
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->A(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 149
    :pswitch_17
    const-string v0, "rhtIdX/K\n"

    const-string v2, "7EgFFBaknvM=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ws7q8MDtVoSv7s/G795s/cfq183kxmz5yv8=\n"

    const-string v3, "j6uZg6GKM74=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->x(Lorg/bitspark/android/Spark;)V

    .line 151
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 152
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->Z(I)V

    goto/16 :goto_7

    .line 153
    :pswitch_18
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0, p1}, Lorg/bitspark/android/Spark;->H0(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 154
    :pswitch_19
    const-string v1, "tFqjXIlb\n"

    const-string v2, "9gnuPeA1wzo=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "R/Ki8p7APY0q0ofEsfMH4UPTlM6g9BflXt6fxqDkEPZE0JTF\n"

    const-string v3, "CpfRgf+nWLc=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 155
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->J:Lka/m0;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lka/m0;->e0(I)V

    .line 157
    sget-object v1, Lka/m0;->H0:Lc7/o;

    .line 158
    iget-object v1, v1, Lc7/o;->a:Lc7/b0;

    .line 159
    invoke-virtual {v1}, Lc7/b0;->clear()V

    .line 160
    sget-object v1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 161
    :pswitch_1a
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->N:Lka/j;

    .line 162
    iget-object v1, v0, Lka/j;->V:Lcom/youth/banner/Banner;

    if-eqz v1, :cond_c

    .line 163
    invoke-virtual {v0}, Lka/j;->S()V

    .line 164
    sget-object v0, Lea/h;->a:Ljava/lang/String;

    goto/16 :goto_7

    .line 165
    :cond_c
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    invoke-virtual {v0, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 166
    :pswitch_1b
    const-string v0, "BUr8AVOB\n"

    const-string v1, "RxmxYDrvNJA=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WJ5w69Fw9KY1vlXd/kPO2FC3QsHvX9jYUKRP1/5QzsxHvlDL9VPOzEe0RMr1RMLDQa0=\n"

    const-string v2, "FfsDmLAXkZw=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 167
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 169
    iget-object v1, v0, Lorg/bitspark/android/Spark;->H1:Lea/f0;

    .line 170
    invoke-virtual {v1}, Lea/f0;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_7

    .line 171
    :cond_d
    iget-object v0, v0, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 172
    :pswitch_1c
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    invoke-virtual {v0}, Lka/m0;->c0()V

    goto/16 :goto_7

    .line 173
    :pswitch_1d
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v1, Lorg/bitspark/android/Spark;->J:Lka/m0;

    iget-boolean v3, v2, Lka/m0;->r0:Z

    if-eqz v3, :cond_e

    .line 174
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 175
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 176
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v1, v1, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 177
    :cond_e
    sget-boolean v0, Lka/m0;->G0:Z

    if-eqz v0, :cond_f

    .line 178
    iget-object v0, v2, Lka/m0;->j0:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 179
    :cond_f
    iget-object v0, v2, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 180
    :sswitch_0
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tvbus/engine/TVService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 183
    sget-boolean v0, Lea/h;->m:Z

    if-eqz v0, :cond_34

    .line 184
    invoke-static {}, Lio/binstream/libtvcar/Libtvcar;->release()V

    goto/16 :goto_7

    .line 185
    :sswitch_1
    const-string v1, "67MmicNG\n"

    const-string v2, "qeBr6Kook+k=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZvxZvSfgtFcLyn6BFtiBIWrAb5wZyJ8ybsF6hxTC\n"

    const-string v3, "K5kqzkaH0W0=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 186
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v2, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    new-instance v2, Lsa/k;

    invoke-direct {v2, v1}, Lsa/k;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1200ea

    .line 190
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lsa/k;->b:Ljava/lang/String;

    .line 191
    const-string v3, "iCaTwMYIzTI=\n"

    const-string v4, "+kP+qahsqEA=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    iput-object v3, v2, Lsa/k;->c:Ljava/lang/String;

    const v3, 0x7f0f0016

    .line 193
    iput v3, v2, Lsa/k;->g:I

    .line 194
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1201d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    new-instance v5, Lea/r;

    .line 197
    invoke-direct {v5, v0}, Lea/r;-><init>(I)V

    .line 198
    iput-object v3, v2, Lsa/k;->d:Ljava/lang/String;

    .line 199
    iput-object v5, v2, Lsa/k;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    new-instance v3, Lea/l;

    invoke-direct {v3, v1, v0}, Lea/l;-><init>(Lorg/bitspark/android/Spark;I)V

    .line 201
    iput-object v4, v2, Lsa/k;->e:Ljava/lang/String;

    .line 202
    iput-object v3, v2, Lsa/k;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 203
    invoke-virtual {v2}, Lsa/k;->a()Lsa/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_7

    .line 204
    :sswitch_2
    const-string v0, "ZB78Kq4t\n"

    const-string v1, "Jk2xS8dDGhk=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y5h4ejmWTqwOuF1MFqV022uuWEgftHTTfK8=\n"

    const-string v2, "Lv0LCVjxK5Y=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 205
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    new-instance v0, Lga/k;

    .line 209
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {v6, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lga/k;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 211
    :sswitch_3
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->I:Lka/r;

    iget-object v0, v0, Lka/r;->Y:Lfa/d0;

    if-eqz v0, :cond_34

    .line 212
    iget-object v1, v0, Lfa/d0;->e:Landroid/view/View;

    if-eqz v1, :cond_34

    .line 213
    iget-object v0, v0, Lfa/d0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 214
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v2, Lorg/bitspark/android/Spark;->I:Lka/r;

    iget-object v2, v2, Lka/r;->Y:Lfa/d0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 215
    new-instance v2, Landroidx/appcompat/widget/r0;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 216
    :sswitch_4
    const-string v0, "nEV6RVPy\n"

    const-string v1, "3hY3JDqcfVQ=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nce3DHOtZ8jw55I6XJ5doYfrkDxalVGnkvaNK16P\n"

    const-string v2, "0KLEfxLKAvI=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 217
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 218
    :sswitch_5
    const-string v0, "seyN4g7J\n"

    const-string v1, "87/Ag2enEsI=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "076tUdBsrN++nohn/1+WptKen3DuXKiM6rKwRfZkvYrEvqxN4WS6jOqysUw=\n"

    const-string v2, "ntveIrELyeU=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 219
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 220
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 221
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "6FG8RQ==\n"

    const-string v2, "nDTEMZy+L6k=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 223
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v0}, Lorg/bitspark/android/Spark;->B0(ILjava/lang/String;)V

    .line 224
    const-string v1, "xZ+YQDNa\n"

    const-string v2, "h8zVIVo0CjY=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/QnbxXxCrpGQKf7zU3GU//8t++JCaI744y3v8z0I6w==\n"

    const-string v4, "sGyoth0ly6s=\n"

    .line 225
    invoke-static {v3, v4, v2, v0}, Lea/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 227
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 228
    :sswitch_7
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    iget-boolean v1, v0, Lka/m0;->r0:Z

    if-eqz v1, :cond_10

    .line 229
    iget-object v0, v0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 230
    :cond_10
    iget-object v0, v0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 231
    :sswitch_8
    const-string v2, "f6DOSpaP\n"

    const-string v3, "PfODK//hwUk=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2A/3OQ9KJi+1L9IPIHkcR9AmywsqchBMxj7BBzFvGkrAOcEY\n"

    const-string v4, "lWqESm4tQxU=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v2}, Lorg/bitspark/android/Spark;->s(Lorg/bitspark/android/Spark;)V

    .line 233
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 234
    invoke-virtual {v2, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    .line 235
    sput-boolean v1, Lorg/bitspark/android/Spark;->a2:Z

    .line 236
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->M()V

    goto/16 :goto_7

    .line 237
    :sswitch_9
    const-string v0, "r8hnKs9o\n"

    const-string v1, "7ZsqS6YGHpM=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WvIcUhEHneo30jlkPjSnnVLEPGA3JaeUWNkq\n"

    const-string v2, "F5dvIXBg+NA=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    new-instance v0, Lga/k;

    .line 241
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {v6, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lga/k;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 243
    :sswitch_a
    const-string v1, "lh+srtZO\n"

    const-string v2, "1Ezhz78gdaY=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "krqYACdx7uX/mr02CELUmo+YtCEDUc6L\n"

    const-string v3, "39/rc0YWi98=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sput-boolean v0, Lorg/bitspark/android/Spark;->f2:Z

    .line 245
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->y(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 246
    :sswitch_b
    const-string v0, "J1O/6OAZ\n"

    const-string v2, "ZQDyiYl3kJY=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "p02aPJCue87Kbb8Kv51Bsbpvtgu+h1s=\n"

    const-string v3, "6ijpT/HJHvQ=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->X()Z

    .line 248
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 249
    iget-object v0, v0, Lorg/bitspark/android/Spark;->P:Landroid/widget/FrameLayout;

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->I:Lka/r;

    invoke-virtual {v0}, Lka/r;->Z()V

    .line 252
    sget-boolean v0, Lorg/bitspark/android/Spark;->a2:Z

    if-nez v0, :cond_34

    .line 253
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 254
    :sswitch_c
    sput-boolean v1, Lorg/bitspark/android/Spark;->a2:Z

    .line 255
    const-string v2, "1vP7sYuF\n"

    const-string v3, "lKC20OLrE5s=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "J8ykUTr1TwlK7IFnFcZ1fyXunmwE1mV9Lw==\n"

    const-string v4, "aqnXIluSKjM=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "1YHjGqUGQUbVmPgXrgNW\n"

    const-string v3, "htG8UuxCBBk=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_12

    .line 257
    sget-boolean v2, Lea/h;->T:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    goto :goto_2

    :cond_11
    const/4 v2, 0x1

    .line 258
    :cond_12
    :goto_2
    const-string v3, "GwlpBOFwFuMNBmIZ9GM=\n"

    const-string v4, "SFk2QKQmX6A=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 259
    iget-object v4, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v4, v4, Lorg/bitspark/android/Spark;->i0:Lta/a;

    iget-object v4, v4, Lta/a;->d:Landroidx/lifecycle/d0;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 260
    iget-object v3, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v3, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    iget-object v3, v3, Lta/a;->e:Landroidx/lifecycle/d0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/d0;->j(Ljava/lang/Object;)V

    .line 261
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v2}, Lorg/bitspark/android/Spark;->u(Lorg/bitspark/android/Spark;)V

    .line 262
    sget-boolean v2, Lea/h;->m:Z

    if-eqz v2, :cond_13

    .line 263
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->C0()V

    .line 264
    :cond_13
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v2, v1}, Lorg/bitspark/android/Spark;->d0(Z)V

    .line 265
    const-string v2, "apeVYf56\n"

    const-string v3, "KMTYAJcURQQ=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lea/h;->o:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v4}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v4

    iget-object v4, v4, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_3

    :cond_14
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-boolean v2, Lea/h;->o:Z

    if-eqz v2, :cond_15

    .line 267
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 268
    iget-object v2, v2, Lorg/bitspark/android/Spark;->P:Landroid/widget/FrameLayout;

    .line 269
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v2, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    sget v3, Lea/g;->j:I

    invoke-virtual {v2, v3, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 271
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v2}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v2

    iget-object v2, v2, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    if-eqz v2, :cond_15

    .line 272
    const-string v2, "NBGbvDLy\n"

    const-string v3, "dkLW3VucdZQ=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AYms/bx55+kkm67qmD7x+wC5vP2YdezqPY6s4sJF0dsmpY/dq1fP2zqulsOlV8vQK6iM3L9c1rc=\n"

    const-string v4, "dPrJj+oQgp4=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v2}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v2

    iget-object v2, v2, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 274
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->W:Lla/e;

    invoke-virtual {v0}, Lla/e;->R()V

    .line 275
    :cond_15
    sget-boolean v0, Lea/h;->M:Z

    if-eqz v0, :cond_17

    .line 276
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 277
    iget-object v0, v0, Lorg/bitspark/android/Spark;->P:Landroid/widget/FrameLayout;

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    sget v2, Lea/g;->m:I

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 280
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->H:Landroid/widget/RadioButton;

    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 281
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->N:Lka/j;

    .line 282
    iget-object v2, v0, Lka/j;->V:Lcom/youth/banner/Banner;

    if-eqz v2, :cond_16

    .line 283
    invoke-virtual {v0}, Lka/j;->S()V

    goto :goto_4

    .line 284
    :cond_16
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    invoke-virtual {v0, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :cond_17
    :goto_4
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    if-eqz v0, :cond_1c

    .line 286
    iget-boolean v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->enabledLive:Z

    if-nez v0, :cond_18

    .line 287
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_18
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    iget-boolean v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->enabledVoD:Z

    if-nez v0, :cond_19

    .line 289
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_19
    sget-boolean v0, Lea/h;->E:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_1a
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v2, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    iget-object v2, v2, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->logo:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/bitspark/android/Spark;->v(Lorg/bitspark/android/Spark;Ljava/lang/String;)V

    .line 292
    sget-boolean v0, Lea/h;->o:Z

    if-eqz v0, :cond_1b

    .line 293
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 294
    iget-object v0, v0, Lorg/bitspark/android/Spark;->c0:Landroid/widget/TextView;

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_1b
    sget-object v0, Lga/l;->k:Lga/l;

    invoke-static {v0}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 298
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v2, v0}, Lorg/bitspark/android/Spark;->w(Lorg/bitspark/android/Spark;Ljava/lang/String;)V

    .line 299
    :cond_1c
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->x(Lorg/bitspark/android/Spark;)V

    .line 300
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 301
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->Z(I)V

    goto/16 :goto_7

    .line 302
    :pswitch_1e
    const-string v0, "PW25vdNq\n"

    const-string v1, "fz703LoEt9Y=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gkY14+KFVB/vZhDVzbZudpphC9nXvWR2inEI0c6nbnWOcBXHzLB1\n"

    const-string v2, "zyNGkIPiMSU=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->q(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 304
    :pswitch_1f
    const-string v0, "8oJnYuUg\n"

    const-string v1, "sNEqA4xO0zI=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "angKn7OUB/sHWC+pnKc9k2JaML+GtjCeY1gvpZG2K4V4WCu+\n"

    const-string v2, "Jx157NLzYsE=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 305
    :pswitch_20
    const-string v0, "OetbUZ7u\n"

    const-string v1, "e7gWMPeAH10=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m6b4P9V34AH2ht0J+kTaaZOEwh/gVddkkobdBfdVzH+Jh8QC8Q==\n"

    const-string v2, "1sOLTLQQhTs=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->q(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 307
    :pswitch_21
    sput-boolean v0, Lorg/bitspark/android/Spark;->a2:Z

    .line 308
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 309
    iget-object v2, v2, Lorg/bitspark/android/Spark;->P:Landroid/widget/FrameLayout;

    .line 310
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    const-string v2, "KZtBM0f4\n"

    const-string v3, "a8gMUi6WKV4=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "9vnchOGxm6ub2fmyzoKh1vTI4KjVn6Hd9NvmuQ==\n"

    const-string v4, "u5yv94DW/pE=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v2, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    sget v3, Lea/g;->j:I

    invoke-virtual {v2, v3, v1}, Landroidx/viewpager/widget/ViewPager;->u(IZ)V

    .line 313
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v2, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    if-eqz v2, :cond_1d

    .line 314
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 315
    :cond_1d
    const-string v2, "DSHWqdk4\n"

    const-string v3, "T3KbyLBWrCk=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "niUE4UYXFHCGMw/nLhAGcpkACPZ3NRRwjiRArm4QGXvLe1+z\n"

    const-string v5, "61ZhkwBldRc=\n"

    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v4}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v4

    iget-object v4, v4, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_5

    :cond_1e
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v2}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v2

    iget-object v2, v2, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    if-eqz v2, :cond_34

    .line 317
    sget-object v2, Lea/g;->a:Ljava/lang/String;

    const v3, -0xffff

    invoke-static {v3, v2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, -0xc

    if-ne v4, v5, :cond_1f

    .line 318
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v1}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v1

    iget-object v1, v1, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_7

    .line 319
    :cond_1f
    invoke-static {v3, v2}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_34

    .line 320
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->X:Lorg/bitspark/android/view/MyViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 321
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->V:Lla/d;

    invoke-virtual {v0}, Lla/d;->Q()V

    .line 322
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->V:Lla/d;

    invoke-virtual {v0}, Lla/d;->S()V

    .line 323
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->V:Lla/d;

    invoke-virtual {v0}, Lla/d;->R()V

    goto/16 :goto_7

    .line 324
    :pswitch_22
    const-string v0, "Q5DKRAy1\n"

    const-string v1, "AcOHJWXb9fA=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J/NFJH5umVlK02ASUV2jMS/RfwRLTK48LtNgHlxM\n"

    const-string v2, "apY2Vx8J/GM=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 326
    iget-object v1, v0, Lorg/bitspark/android/Spark;->T:Lga/m;

    if-nez v1, :cond_20

    .line 327
    new-instance v1, Lga/m;

    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-direct {v1, v2}, Lga/m;-><init>(Landroid/content/Context;)V

    .line 328
    iput-object v1, v0, Lorg/bitspark/android/Spark;->T:Lga/m;

    .line 329
    :cond_20
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 330
    iget-object v0, v0, Lorg/bitspark/android/Spark;->T:Lga/m;

    .line 331
    invoke-virtual {v0}, Lga/m;->f()V

    goto/16 :goto_7

    .line 332
    :pswitch_23
    const-string v0, "iUk64WfM\n"

    const-string v1, "yxp3gA6iSg4=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1XUPK082di+4VSodYAVMVtBVPxNxH1ZBz18uE3EVXFvd\n"

    const-string v2, "mBB8WC5RExU=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->q(Lorg/bitspark/android/Spark;)V

    .line 334
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->r(Lorg/bitspark/android/Spark;)V

    .line 335
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->X()Z

    goto/16 :goto_7

    .line 336
    :pswitch_24
    const-string v0, "pIlvEnP0\n"

    const-string v1, "5toicxqa1FI=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5a8GuTU79nmIjyOPGgjMAOCPNoELEtYX/4UngQ==\n"

    const-string v2, "qMp1ylRck0M=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->M()V

    goto/16 :goto_7

    .line 338
    :cond_21
    const-string v0, "rJn4RMJ0\n"

    const-string v1, "7sq1JasatD8=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/hpHYkbXpP+TOmxYc++SnOArcVw=\n"

    const-string v2, "s380ESewwcU=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 339
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lra/f;->b()Lra/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    new-instance v1, Ll7/k;

    invoke-direct {v1}, Ll7/k;-><init>()V

    iget-object v2, v0, Lra/f;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ll7/k;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v0, v0, Lra/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lra/f;->b()Lra/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    new-instance v1, Ll7/k;

    invoke-direct {v1}, Ll7/k;-><init>()V

    iget-object v2, v0, Lra/f;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ll7/k;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    iget-object v0, v0, Lra/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 347
    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->f0()V

    goto/16 :goto_7

    .line 348
    :cond_22
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "YcRXrxlKfg==\n"

    const-string v3, "DKEk3HgtG7c=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v2, Lsa/d;

    iget-object v3, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-direct {v2, v3}, Lsa/d;-><init>(Landroid/content/Context;)V

    .line 350
    iput-object v0, v2, Lsa/d;->b:Ljava/lang/String;

    .line 351
    invoke-virtual {v3}, Lorg/bitspark/android/Spark;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1201c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    new-instance v4, Lea/r;

    .line 353
    invoke-direct {v4, v1}, Lea/r;-><init>(I)V

    .line 354
    iput-object v3, v2, Lsa/d;->c:Ljava/lang/String;

    .line 355
    iput-object v4, v2, Lsa/d;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 356
    invoke-virtual {v2}, Lsa/d;->a()Lsa/e;

    move-result-object v3

    .line 357
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 358
    new-instance v4, Lea/s;

    invoke-direct {v4, v0, v2, v3}, Lea/s;-><init>(Ljava/lang/String;Lsa/d;Lsa/e;)V

    .line 359
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 360
    new-instance v0, Lea/t;

    invoke-direct {v0, v1, v4}, Lea/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_7

    .line 361
    :cond_23
    const-string v0, "Xl4FY7nb\n"

    const-string v2, "HA1IAtC1IZw=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ONdHD5HdVutV92I5vu5shTrtZDCx42yCPPZrP7j7fZ8w/g==\n"

    const-string v3, "dbI0fPC6M9E=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 362
    invoke-static {v0, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "MfQVbkY7\n"

    const-string v2, "c6dYDy9VjZ0=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h8fXxaZHDWiAwZOP\n"

    const-string v4, "86j3tcomdEg=\n"

    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v3, v3, Lorg/bitspark/android/Spark;->d0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {v0, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lga/d;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_34

    .line 366
    sget-object v0, Lga/d;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v2, v2, Lorg/bitspark/android/Spark;->d0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitspark/android/beans/ChannelBean;

    if-eqz v0, :cond_24

    .line 367
    const-string v2, "xUdrM8BS\n"

    const-string v3, "hxQmUqk8EnQ=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YjDnEg==\n"

    const-string v5, "EVmDKDX1l1Q=\n"

    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget v4, v4, Lorg/bitspark/android/Spark;->d0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "jq+QenII20PA5p0nOg/aWMvuhw==\n"

    const-string v5, "roK9RFJutDY=\n"

    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v2, Lorg/bitspark/android/Spark;->I:Lka/r;

    invoke-virtual {v2, v0}, Lka/r;->b0(Lorg/bitspark/android/beans/ChannelBean;)V

    .line 370
    :cond_24
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iput v1, v0, Lorg/bitspark/android/Spark;->d0:I

    goto/16 :goto_7

    .line 371
    :cond_25
    const-string v0, "SByGLqe+\n"

    const-string v1, "Ck/LT87Q0lM=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mTJlDEROid/0EkA6a32zppwSVTR6eaCkjRJE\n"

    const-string v1, "1FcWfyUp7OU=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->B(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 373
    :cond_26
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    if-eqz v0, :cond_28

    .line 374
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 375
    sget-boolean v3, Lka/m0;->G0:Z

    if-eqz v3, :cond_27

    .line 376
    invoke-virtual {v0}, Lka/m0;->S()V

    .line 377
    :cond_27
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->J:Lka/m0;

    invoke-virtual {v0, v2}, Lka/m0;->U(I)V

    .line 378
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v0, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 379
    :cond_28
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 380
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->Z(I)V

    goto/16 :goto_7

    .line 381
    :cond_29
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->I:Lka/r;

    if-eqz v0, :cond_2a

    .line 382
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 383
    invoke-virtual {v0, v2}, Lka/r;->V(I)V

    .line 384
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v2, v0, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Lorg/bitspark/android/Spark;->t0(Landroid/widget/RadioButton;)V

    .line 385
    :cond_2a
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 386
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->Z(I)V

    goto/16 :goto_7

    .line 387
    :cond_2b
    const-string v0, "4WB/Eik0\n"

    const-string v1, "ozMyc0BaC4k=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mWUNf+76+E30RShJwcnCMZVEO0PaycI+mkYx\n"

    const-string v2, "1AB+DI+dnXc=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->J(Lorg/bitspark/android/Spark;)V

    goto/16 :goto_7

    .line 389
    :cond_2c
    const-string v0, "giu5JVsJ\n"

    const-string v1, "wHj0RDJn9ws=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tyZDWjWhIvPaBmZsGpIYmr8Ge30bmQOMthdx\n"

    const-string v2, "+kMwKVTGR8k=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v0}, Lra/a;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_2d

    goto :goto_6

    :cond_2d
    move-wide v4, v0

    .line 391
    :goto_6
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    iget-object v0, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    invoke-interface {v0, v4, v5}, Lra/a;->seekTo(J)V

    .line 392
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    .line 394
    :cond_2e
    const-string v0, "L0n+7Ct5\n"

    const-string v1, "bRqzjUIXfyw=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZAiTFIbzwZoJKLYiqcD782w5vzGu0OHvdj2hM6/L8O92PawmvtH2\n"

    const-string v2, "KW3gZ+eUpKA=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "IVqCnXsgazk/\n"

    const-string v3, "VzPm+BRwCk0=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/Spark;->E(Lorg/bitspark/android/Spark;Ljava/lang/String;)V

    .line 396
    const-string v0, "Mov3vbu6\n"

    const-string v1, "cNi63NLUO9U=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U3ZagSexMt1ZZ02cEr4y4wo=\n"

    const-string v3, "MAMo80LfRos=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 397
    iget-object v2, v2, Lorg/bitspark/android/Spark;->Z:Ljava/lang/String;

    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 400
    iget-object v1, v0, Lorg/bitspark/android/Spark;->Z:Ljava/lang/String;

    .line 401
    invoke-static {v0, v1}, Lorg/bitspark/android/Spark;->F(Lorg/bitspark/android/Spark;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 402
    :cond_2f
    invoke-static {}, Lorg/bitspark/android/utils/b;->c()Lorg/bitspark/android/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    const-string v0, "O9h5VhMU\n"

    const-string v2, "eYs0N3p66hk=\n"

    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RyM5zGVwv8YqAxz6SkOFrEYHE+BSXp65RQ==\n"

    const-string v3, "CkZKvwQX2vw=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    const/4 v2, 0x0

    .line 405
    iput-object v2, v0, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 406
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->G0:Z

    .line 407
    iget-object v2, v0, Lorg/bitspark/android/Spark;->b0:Landroid/widget/ImageView;

    new-instance v3, Lea/v;

    invoke-direct {v3, v0, v1}, Lea/v;-><init>(Lorg/bitspark/android/Spark;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 408
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 409
    invoke-virtual {v0, v2}, Lorg/bitspark/android/Spark;->e0(Landroid/os/Bundle;)V

    .line 410
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 411
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->Z(I)V

    goto/16 :goto_7

    .line 412
    :cond_30
    const-string v0, "JY5rpneA\n"

    const-string v1, "Z90mxx7u3l0=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5FNokD2/X/WJc02mEoxlmvlyWrcZh36A/nhXrB2cZZ3oYl4=\n"

    const-string v2, "qTYb41zYOs8=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 414
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v1}, Lorg/bitspark/android/Spark;->H(Lorg/bitspark/android/Spark;)Lorg/bitspark/android/Constants$VIDEO_TYPE;

    move-result-object v1

    sget-object v2, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    if-ne v1, v2, :cond_34

    .line 415
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v1, v0}, Lorg/bitspark/android/Spark;->n0(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 417
    :cond_31
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->G(Lorg/bitspark/android/Spark;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 418
    iget v1, v1, Lorg/bitspark/android/Spark;->e1:I

    .line 419
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 420
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 421
    iget-object v0, v0, Lorg/bitspark/android/Spark;->A1:Landroid/widget/SeekBar;

    .line 422
    iget-object v1, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 423
    iget v1, v1, Lorg/bitspark/android/Spark;->e1:I

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 425
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 426
    iget-object v0, v0, Lorg/bitspark/android/Spark;->y1:Landroid/widget/TextView;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 428
    iget v2, v2, Lorg/bitspark/android/Spark;->e1:I

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Ouj2Ww==\n"

    const-string v3, "FdnGa9qeCc8=\n"

    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    .line 431
    iget v1, v0, Lorg/bitspark/android/Spark;->g1:I

    int-to-long v1, v1

    .line 432
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->n0(Ljava/lang/String;)V

    goto :goto_7

    .line 434
    :cond_32
    const-string v0, "qcD7Ps6m\n"

    const-string v1, "65O2X6fIPes=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WBeWMNp088U1N7MG9UfJqkU2pBf+TNOtRw==\n"

    const-string v2, "FXLlQ7sTlv8=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->W:Lla/e;

    if-eqz v0, :cond_34

    .line 436
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->W:Lla/e;

    invoke-virtual {v0}, Lla/e;->Q()V

    goto :goto_7

    .line 437
    :cond_33
    const-string v0, "95rVSIkw\n"

    const-string v1, "tcmYKeBe6b4=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XbNieTGtDJMwk0dPHp42/ECSUF4VlS3mXpM=\n"

    const-string v2, "ENYRClDKaak=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->C(Lorg/bitspark/android/Spark;)V

    .line 439
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->W:Lla/e;

    if-eqz v0, :cond_34

    .line 440
    iget-object v0, p0, Lea/u;->a:Lorg/bitspark/android/Spark;

    invoke-static {v0}, Lorg/bitspark/android/Spark;->t(Lorg/bitspark/android/Spark;)Lka/z;

    move-result-object v0

    iget-object v0, v0, Lka/z;->W:Lla/e;

    invoke-virtual {v0}, Lla/e;->Q()V

    .line 441
    :cond_34
    :goto_7
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_c
        0x1e -> :sswitch_b
        0x20 -> :sswitch_a
        0x32 -> :sswitch_9
        0x4b -> :sswitch_8
        0x90 -> :sswitch_7
        0xfa -> :sswitch_6
        0x104 -> :sswitch_5
        0x10e -> :sswitch_4
        0x12d -> :sswitch_3
        0x28b -> :sswitch_2
        0x3e8 -> :sswitch_1
        0x2706 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x53
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x60
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x69
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x6e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
