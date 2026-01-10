.class public final Lra/e;
.super Landroid/os/CountDownTimer;
.source "MyApplication"


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lorg/bitspark/android/Spark;

.field public final synthetic c:Lsa/g;

.field public final synthetic d:Lra/f;


# direct methods
.method public constructor <init>(Lra/f;Landroid/widget/TextView;Lorg/bitspark/android/Spark;Lsa/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lra/e;->d:Lra/f;

    .line 2
    .line 3
    iput-object p2, p0, Lra/e;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    iput-object p3, p0, Lra/e;->b:Lorg/bitspark/android/Spark;

    .line 6
    .line 7
    iput-object p4, p0, Lra/e;->c:Lsa/g;

    .line 8
    .line 9
    const-wide/16 p1, 0x2710

    .line 10
    .line 11
    const-wide/16 p3, 0x3e8

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lra/e;->c:Lsa/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "psypuZdbHiqYx62y\n"

    .line 9
    .line 10
    const-string v1, "9qDIwPIpU0s=\n"

    .line 11
    .line 12
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "cYho9jc4Ea0kxg7PNTAboGyrT/E4Nge3MIFL6xA/EbF/iE36cXhMt3uWQv4gAg2wbIVLt3Bq\n"

    .line 17
    .line 18
    const-string v2, "HuYun1lRYsU=\n"

    .line 19
    .line 20
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lra/e;->d:Lra/f;

    .line 34
    .line 35
    iget-object v1, v1, Lra/f;->l:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v0, Lra/f;->g:Z

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v0, v2, v3, v4, v1}, Lra/f;->e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lra/e;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lra/e;->b:Lorg/bitspark/android/Spark;

    .line 11
    .line 12
    const v3, 0x7f1200a9

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    div-long/2addr p1, v2

    .line 25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
