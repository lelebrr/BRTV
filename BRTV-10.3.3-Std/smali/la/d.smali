.class public Lla/d;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final m0:Ljava/lang/String;


# instance fields
.field public U:Landroid/widget/ImageView;

.field public V:Landroid/widget/Button;

.field public W:Landroid/widget/Button;

.field public X:Landroid/widget/RelativeLayout;

.field public Y:Landroid/widget/EditText;

.field public Z:Landroid/widget/EditText;

.field public b0:Landroid/widget/Button;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Landroid/widget/TextView;

.field public f0:Landroid/widget/CheckBox;

.field public g0:Z

.field public h0:Landroid/widget/ImageButton;

.field public final i0:Landroidx/appcompat/widget/s2;

.field public j0:Landroid/view/View;

.field public k0:Lsa/p;

.field public l0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Lz1Le/Y=\n"

    .line 2
    .line 3
    const-string v1, "Y1IsEpi7SGY=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lla/d;->m0:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lla/d;->g0:Z

    .line 6
    .line 7
    new-instance v1, Landroidx/appcompat/widget/s2;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/s2;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lla/d;->i0:Landroidx/appcompat/widget/s2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lla/d;->j0:Landroid/view/View;

    .line 17
    .line 18
    iput-boolean v0, p0, Lla/d;->l0:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    const-string v0, "y4wXakeiPw==\n"

    .line 2
    .line 3
    const-string v1, "pOJEHibQSyY=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lla/d;->m0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Le8/a;->B()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Q()V
    .locals 3

    .line 1
    sget-object v0, Lea/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    const v1, -0xffff

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x2

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object v0, v2

    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    const v0, 0x7f1201b5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    const v0, 0x7f1201ab

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    const v0, 0x7f1200b2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const v0, 0x7f1201cb

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const v0, 0x7f1201a9

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lla/d;->e0:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lla/d;->e0:Landroid/widget/TextView;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()V
    .locals 8

    .line 1
    const-string v0, "+oCwJR3xT6fAjKgh\n"

    .line 2
    .line 3
    const-string v1, "tOXEUnKDJPI=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "RekrKZZ0ERhO3ysImn0YDUqsb1TPMw==\n"

    .line 10
    .line 11
    const-string v2, "Ioxfev8Tf3k=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const v1, 0x7f1201a3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0}, Lorg/bitspark/android/utils/k;->b(Landroidx/fragment/app/FragmentActivity;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const v3, 0x7f0f004a

    .line 41
    .line 42
    .line 43
    const v4, 0x7f0f004b

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v6, "MmZ0YQ==\n"

    .line 54
    .line 55
    const-string v7, "RQ8SCPicIbc=\n"

    .line 56
    .line 57
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v6, 0x5

    .line 76
    invoke-static {v2, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eq v2, v5, :cond_3

    .line 81
    .line 82
    const/4 v6, 0x2

    .line 83
    if-eq v2, v6, :cond_2

    .line 84
    .line 85
    const/4 v6, 0x3

    .line 86
    if-eq v2, v6, :cond_1

    .line 87
    .line 88
    const/4 v6, 0x4

    .line 89
    if-eq v2, v6, :cond_4

    .line 90
    .line 91
    iput-boolean v5, p0, Lla/d;->l0:Z

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lla/d;->T(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const v3, 0x7f0f004b

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const v3, 0x7f0f0049

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const v3, 0x7f0f0048

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const v3, 0x7f0f0047

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_0
    iget-object v2, p0, Lla/d;->h0:Landroid/widget/ImageButton;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lorg/bitspark/android/utils/k;->a(Landroidx/fragment/app/FragmentActivity;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    iget-object v0, p0, Lla/d;->h0:Landroid/widget/ImageButton;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iput-boolean v5, p0, Lla/d;->l0:Z

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lla/d;->T(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    new-instance v0, Lla/a;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lla/a;-><init>(Lla/d;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v0}, Lorg/bitspark/android/utils/k;->e(Lorg/bitspark/android/utils/j;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lla/d;->U:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lla/d;->V:Landroid/widget/Button;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lla/d;->W:Landroid/widget/Button;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "WUUx9au/oWNpQnThqr25dQwH\n"

    .line 25
    .line 26
    const-string v1, "LDZUh8XezAY=\n"

    .line 27
    .line 28
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 33
    .line 34
    sget-object v1, Lla/d;->m0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lla/d;->k0:Lsa/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lsa/p;->s0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->O(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lsa/p;->q0:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v2, La3/c;

    .line 21
    .line 22
    const/16 v3, 0x1c

    .line 23
    .line 24
    invoke-direct {v2, v0, v3, p1}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v2, p0, Lla/d;->V:Landroid/widget/Button;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne p1, v2, :cond_0

    .line 14
    .line 15
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lla/d;->b0:Landroid/widget/Button;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne p1, v2, :cond_6

    .line 31
    .line 32
    iget-object p1, p0, Lla/d;->e0:Landroid/widget/TextView;

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lla/d;->d0:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 90
    .line 91
    .line 92
    const p1, 0x7f1201e4

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lorg/bitspark/android/Spark;->l0(I)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_1
    iget-object p1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ge p1, v2, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 116
    .line 117
    .line 118
    const p1, 0x7f1201e5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object v3, v0, v1

    .line 128
    .line 129
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v1, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_2
    iget-object p1, p0, Lla/d;->d0:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 154
    .line 155
    .line 156
    const p1, 0x7f1201b4

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lorg/bitspark/android/Spark;->l0(I)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_3
    iget-object p1, p0, Lla/d;->d0:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-ge p1, v2, :cond_4

    .line 171
    .line 172
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 180
    .line 181
    .line 182
    const p1, 0x7f1201b7

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-array v0, v0, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v3, v0, v1

    .line 192
    .line 193
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v1, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_4
    iget-object p1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 203
    .line 204
    const-string v1, "Mg==\n"

    .line 205
    .line 206
    const-string v2, "co16mNpKKwA=\n"

    .line 207
    .line 208
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_5

    .line 217
    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    iget-object v1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    sget-object v1, Lea/h;->d:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-object p1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 238
    .line 239
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v1, "ViD09t7nmXklOPrjw6nBNnAn8PbEpoBzP3Q=\n"

    .line 245
    .line 246
    const-string v2, "BVSVhKrH7RY=\n"

    .line 247
    .line 248
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lla/d;->c0:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, "JACNdKIspc9gSsw=\n"

    .line 261
    .line 262
    const-string v2, "BHDsB9Fbyr0=\n"

    .line 263
    .line 264
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lla/d;->d0:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 281
    .line 282
    sget-object v1, Lla/d;->m0:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    sget-object p1, Lea/g;->b:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v0, p1}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object p1, Lea/g;->e:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v0, p0, Lla/d;->c0:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {p1, v0}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object p1, Lea/g;->f:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v0, p0, Lla/d;->d0:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {p1, v0}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 307
    .line 308
    const/16 v0, 0xd

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_6
    iget-object v0, p0, Lla/d;->W:Landroid/widget/Button;

    .line 315
    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-ne p1, v0, :cond_7

    .line 321
    .line 322
    iget-object p1, p0, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 323
    .line 324
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lla/d;->S()V

    .line 328
    .line 329
    .line 330
    :cond_7
    :goto_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "M1v/dvtBTaA5TPd85h5X\n"

    .line 7
    .line 8
    const-string v2, "XDW0E4J7bcs=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "Ww8zTaL8iOkVVncP4es=\n"

    .line 21
    .line 22
    const-string v2, "diIeYI/Rpag=\n"

    .line 23
    .line 24
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 43
    .line 44
    sget-object v1, Lla/d;->m0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x1

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object v4, p0, Lla/d;->h0:Landroid/widget/ImageButton;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/16 v5, 0x13

    .line 77
    .line 78
    const/16 v6, 0x16

    .line 79
    .line 80
    const/16 v7, 0x15

    .line 81
    .line 82
    if-ne v0, v4, :cond_2

    .line 83
    .line 84
    if-eq p2, v7, :cond_1

    .line 85
    .line 86
    if-eq p2, v6, :cond_1

    .line 87
    .line 88
    if-ne p2, v5, :cond_2

    .line 89
    .line 90
    :cond_1
    return v3

    .line 91
    :cond_2
    iget-object v4, p0, Lla/d;->b0:Landroid/widget/Button;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-ne v0, v4, :cond_4

    .line 98
    .line 99
    if-eq p2, v7, :cond_3

    .line 100
    .line 101
    if-eq p2, v6, :cond_3

    .line 102
    .line 103
    const/16 v4, 0x14

    .line 104
    .line 105
    if-ne p2, v4, :cond_4

    .line 106
    .line 107
    :cond_3
    return v3

    .line 108
    :cond_4
    if-eqz v1, :cond_c

    .line 109
    .line 110
    const/4 v1, 0x4

    .line 111
    if-ne p2, v1, :cond_5

    .line 112
    .line 113
    iget-object v1, p0, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    iget-boolean v1, p0, Lla/d;->g0:Z

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    invoke-static {}, Lorg/bitspark/android/utils/m;->k()V

    .line 126
    .line 127
    .line 128
    return v3

    .line 129
    :cond_5
    iget-object v1, p0, Lla/d;->V:Landroid/widget/Button;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ne v0, v1, :cond_6

    .line 136
    .line 137
    if-ne p2, v5, :cond_6

    .line 138
    .line 139
    iget-object p1, p0, Lla/d;->V:Landroid/widget/Button;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lla/d;->V:Landroid/widget/Button;

    .line 145
    .line 146
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 147
    .line 148
    .line 149
    return v3

    .line 150
    :cond_6
    if-ne p2, v7, :cond_b

    .line 151
    .line 152
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-ne v0, p1, :cond_7

    .line 159
    .line 160
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-lez p1, :cond_7

    .line 171
    .line 172
    iget-object p1, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-lez p1, :cond_7

    .line 179
    .line 180
    return v2

    .line 181
    :cond_7
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-ne v0, p1, :cond_8

    .line 188
    .line 189
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-lez p1, :cond_8

    .line 200
    .line 201
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-lez p1, :cond_8

    .line 208
    .line 209
    return v2

    .line 210
    :cond_8
    iget-object p1, p0, Lla/d;->f0:Landroid/widget/CheckBox;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-ne v0, p1, :cond_9

    .line 217
    .line 218
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 234
    .line 235
    .line 236
    return v3

    .line 237
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lorg/bitspark/android/Spark;

    .line 242
    .line 243
    iget-object p2, p1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 244
    .line 245
    if-eqz p2, :cond_a

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-eqz p2, :cond_a

    .line 252
    .line 253
    iget-object p2, p1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 254
    .line 255
    invoke-static {p2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 256
    .line 257
    .line 258
    iget-object p1, p1, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 259
    .line 260
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 261
    .line 262
    .line 263
    :cond_a
    return v3

    .line 264
    :cond_b
    if-ne p2, v6, :cond_c

    .line 265
    .line 266
    iget-object v1, p0, Lla/d;->f0:Landroid/widget/CheckBox;

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-ne v0, v1, :cond_c

    .line 273
    .line 274
    return v3

    .line 275
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lka/b;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    return p1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    const p2, 0x7f0e011f

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0b0465

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/ImageView;

    .line 17
    .line 18
    iput-object p2, p0, Lla/d;->U:Landroid/widget/ImageView;

    .line 19
    .line 20
    const p2, 0x7f0b011e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/widget/Button;

    .line 28
    .line 29
    iput-object p2, p0, Lla/d;->V:Landroid/widget/Button;

    .line 30
    .line 31
    const p2, 0x7f0b0467

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/Button;

    .line 39
    .line 40
    iput-object p2, p0, Lla/d;->W:Landroid/widget/Button;

    .line 41
    .line 42
    const p2, 0x7f0b03c2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/widget/ImageButton;

    .line 50
    .line 51
    iput-object p2, p0, Lla/d;->h0:Landroid/widget/ImageButton;

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lla/d;->h0:Landroid/widget/ImageButton;

    .line 57
    .line 58
    new-instance p3, Landroidx/appcompat/app/a;

    .line 59
    .line 60
    const/16 v0, 0x10

    .line 61
    .line 62
    invoke-direct {p3, v0, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f0b0469

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    iput-object p2, p0, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 78
    .line 79
    const p2, 0x7f0b0468

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 87
    .line 88
    const p2, 0x7f0b0156

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Landroid/widget/EditText;

    .line 96
    .line 97
    iput-object p2, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 98
    .line 99
    const/4 p3, 0x1

    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 101
    .line 102
    .line 103
    const p2, 0x7f0b0325

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Landroid/widget/EditText;

    .line 111
    .line 112
    iput-object p2, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 113
    .line 114
    const p2, 0x7f0b046a

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/Button;

    .line 122
    .line 123
    iput-object p2, p0, Lla/d;->b0:Landroid/widget/Button;

    .line 124
    .line 125
    const p2, 0x7f0b0278

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object p2, p0, Lla/d;->e0:Landroid/widget/TextView;

    .line 135
    .line 136
    const p2, 0x7f0b0193

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, Landroid/widget/CheckBox;

    .line 144
    .line 145
    iput-object p2, p0, Lla/d;->f0:Landroid/widget/CheckBox;

    .line 146
    .line 147
    iget-object p2, p0, Lla/d;->e0:Landroid/widget/TextView;

    .line 148
    .line 149
    const/4 p3, 0x4

    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lla/d;->V:Landroid/widget/Button;

    .line 154
    .line 155
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lla/d;->W:Landroid/widget/Button;

    .line 159
    .line 160
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p0, Lla/d;->b0:Landroid/widget/Button;

    .line 164
    .line 165
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lla/d;->V:Landroid/widget/Button;

    .line 169
    .line 170
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lla/d;->W:Landroid/widget/Button;

    .line 174
    .line 175
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p2, p0, Lla/d;->f0:Landroid/widget/CheckBox;

    .line 179
    .line 180
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lla/d;->b0:Landroid/widget/Button;

    .line 184
    .line 185
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lla/d;->f0:Landroid/widget/CheckBox;

    .line 189
    .line 190
    new-instance p3, Le6/a;

    .line 191
    .line 192
    const/4 v0, 0x1

    .line 193
    invoke-direct {p3, v0, p0}, Le6/a;-><init>(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lla/d;->f0:Landroid/widget/CheckBox;

    .line 200
    .line 201
    sget p3, Lorg/bitspark/android/R$drawable;->shape_eye_checkbox_select_border:I

    .line 202
    .line 203
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 207
    .line 208
    new-instance p3, Lla/c;

    .line 209
    .line 210
    const/4 v0, 0x0

    .line 211
    invoke-direct {p3, p0, v0}, Lla/c;-><init>(Lla/d;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 218
    .line 219
    new-instance p3, Lla/c;

    .line 220
    .line 221
    const/4 v0, 0x1

    .line 222
    invoke-direct {p3, p0, v0}, Lla/c;-><init>(Lla/d;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 226
    .line 227
    .line 228
    iget-object p2, p0, Lla/d;->W:Landroid/widget/Button;

    .line 229
    .line 230
    new-instance p3, Landroidx/appcompat/widget/c2;

    .line 231
    .line 232
    invoke-direct {p3, v0, p0}, Landroidx/appcompat/widget/c2;-><init>(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    .line 237
    .line 238
    sget-object p2, Lea/g;->e:Ljava/lang/String;

    .line 239
    .line 240
    const-string p3, ""

    .line 241
    .line 242
    invoke-static {p2, p3}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    sget-object v0, Lea/h;->d:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    sget-object v0, Lea/g;->b:Ljava/lang/String;

    .line 253
    .line 254
    const/4 v1, 0x0

    .line 255
    invoke-static {v1, v0}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    const/4 v2, 0x2

    .line 264
    if-ne v0, v2, :cond_0

    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    const/4 v2, 0x6

    .line 271
    if-le v0, v2, :cond_0

    .line 272
    .line 273
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    :cond_0
    iget-object v0, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 278
    .line 279
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lla/d;->Y:Landroid/widget/EditText;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 293
    .line 294
    .line 295
    sget-object v0, Lea/g;->f:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v0, p3}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p3

    .line 301
    iget-object v0, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 302
    .line 303
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    iget-object p3, p0, Lla/d;->Z:Landroid/widget/EditText;

    .line 307
    .line 308
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 317
    .line 318
    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_1

    .line 324
    .line 325
    invoke-virtual {p0}, Lla/d;->S()V

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_1
    iget-object p2, p0, Lla/d;->U:Landroid/widget/ImageView;

    .line 330
    .line 331
    const/16 p3, 0x8

    .line 332
    .line 333
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    iget-object p2, p0, Lla/d;->V:Landroid/widget/Button;

    .line 337
    .line 338
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    iget-object p2, p0, Lla/d;->W:Landroid/widget/Button;

    .line 342
    .line 343
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    iget-object p2, p0, Lla/d;->X:Landroid/widget/RelativeLayout;

    .line 347
    .line 348
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    iget-object p2, p0, Lla/d;->b0:Landroid/widget/Button;

    .line 352
    .line 353
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 354
    .line 355
    .line 356
    :goto_0
    invoke-virtual {p0}, Lla/d;->R()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    iput-object p2, p0, Lla/d;->j0:Landroid/view/View;

    .line 364
    .line 365
    iget-object p3, p0, Lla/d;->i0:Landroidx/appcompat/widget/s2;

    .line 366
    .line 367
    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 368
    .line 369
    .line 370
    return-object p1
.end method

.method public final u()V
    .locals 2

    .line 1
    invoke-super {p0}, Le8/a;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lla/d;->j0:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lla/d;->i0:Landroidx/appcompat/widget/s2;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    const-string v0, "F5aFU+A+tNA=\n"

    .line 2
    .line 3
    const-string v1, "ePjXNpNL2bU=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lla/d;->m0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Le8/a;->z()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
