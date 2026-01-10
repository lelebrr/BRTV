.class public final Landroidx/appcompat/widget/w1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/w1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/w1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/w1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget p4, p0, Landroidx/appcompat/widget/w1;->a:I

    .line 4
    .line 5
    packed-switch p4, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    check-cast p1, Lka/r;

    .line 11
    .line 12
    iput-object p2, p1, Lka/r;->h0:Landroid/view/View;

    .line 13
    .line 14
    const-string p3, "7kkksNBc\n"

    .line 15
    .line 16
    const-string p4, "rBpp1b4pCzo=\n"

    .line 17
    .line 18
    invoke-static {p3, p4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p5, "FSP+NqV0zQ4WKNQ2pX2+Bxs+wwSveusYPz3QFKl86VFa\n"

    .line 28
    .line 29
    const-string v0, "ek23QsAZnms=\n"

    .line 30
    .line 31
    invoke-static {p5, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, "X7UBF2CQ3vRftQEX\n"

    .line 42
    .line 43
    const-string p5, "Yog8Kl2t48k=\n"

    .line 44
    .line 45
    invoke-static {p2, p5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 68
    .line 69
    invoke-static {p3, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void

    .line 73
    :pswitch_0
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 74
    .line 75
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView;->q(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_1
    const/4 p2, -0x1

    .line 80
    if-eq p3, p2, :cond_1

    .line 81
    .line 82
    check-cast p1, Landroidx/appcompat/widget/ListPopupWindow;

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/s1;->setListSelectionHidden(Z)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/w1;->a:I

    .line 2
    .line 3
    return-void
.end method
