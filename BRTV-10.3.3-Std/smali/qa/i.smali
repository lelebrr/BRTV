.class public final synthetic Lqa/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Li9/q;


# instance fields
.field public final synthetic a:Lqa/l;


# direct methods
.method public synthetic constructor <init>(Lqa/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqa/i;->a:Lqa/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    check-cast p3, Lorg/bitspark/android/beans/SettingBean;

    .line 6
    .line 7
    const-string p2, "oA==\n"

    .line 8
    .line 9
    const-string v0, "1k0JXnvqQ54=\n"

    .line 10
    .line 11
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "hJ7O6XSqKdGSmtQ=\n"

    .line 19
    .line 20
    const-string p2, "9/u6nR3ETpM=\n"

    .line 21
    .line 22
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p3, p1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lqa/i;->a:Lqa/l;

    .line 30
    .line 31
    iget-object p2, p1, Lqa/l;->C:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-gez p2, :cond_0

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    :cond_0
    iput p2, p1, Lqa/l;->G:I

    .line 41
    .line 42
    return-void
.end method
