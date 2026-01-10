.class public final Lfa/b0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/d0;


# direct methods
.method public constructor <init>(Lfa/d0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/b0;->b:Lfa/d0;

    .line 5
    .line 6
    iput p2, p0, Lfa/b0;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lfa/b0;->b:Lfa/d0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lfa/d0;->h:Z

    .line 5
    .line 6
    iget-object v0, v0, Lfa/d0;->f:Lka/n;

    .line 7
    .line 8
    iget v2, p0, Lfa/b0;->a:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v3, "xE4ooHB/\n"

    .line 14
    .line 15
    const-string v4, "hh1lxR4KaXM=\n"

    .line 16
    .line 17
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v5, "AjzN3EMQyuwCPM3cQxDK7AI8zpAOep2qTFOBkQdwhaZCdA==\n"

    .line 27
    .line 28
    const-string v6, "IR/u/2Az6c8=\n"

    .line 29
    .line 30
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lka/n;->b:Lka/r;

    .line 38
    .line 39
    iget v5, v0, Lka/r;->m0:I

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    sget-boolean v5, Lorg/bitspark/android/utils/m;->b:Z

    .line 49
    .line 50
    invoke-static {v3, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0, p1, v2}, Lka/r;->j0(Lorg/bitspark/android/beans/ChannelBean;I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return v1
.end method
