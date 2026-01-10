.class public final Lka/v;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/e0;
.implements Lorg/bitspark/android/utils/j;


# instance fields
.field public final synthetic a:Lka/y;


# direct methods
.method public synthetic constructor <init>(Lka/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/v;->a:Lka/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "LeJotZmZb/IX7nCx\n"

    .line 2
    .line 3
    const-string v1, "Y4ccwvbrBKc=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "B+B31UW/I8sy5m3CAKgy0TCvas5DvzLRN7U5\n"

    .line 10
    .line 11
    const-string v2, "RI8ZuyDcV6I=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "lpePTkUMrLGsm5dK\n"

    .line 2
    .line 3
    const-string v1, "2PL7OSp+x+Q=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "JDbEtNMUhZ4RMN6jlgOUhBN5zLvfG5STXXk=\n"

    .line 10
    .line 11
    const-string v2, "Z1mq2rZ38fc=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lka/v;->a:Lka/y;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Lka/y;->q1:Z

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lka/y;->Q(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lka/y;->k1:Landroid/widget/ImageButton;

    .line 38
    .line 39
    const v0, 0x7f0f004b

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lka/v;->a:Lka/y;

    .line 4
    .line 5
    iget-object v0, v0, Lka/y;->q0:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
