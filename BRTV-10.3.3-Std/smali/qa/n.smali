.class public final synthetic Lqa/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lqa/m;

.field public final synthetic b:Lia/b;

.field public final synthetic c:Lorg/bitspark/android/beans/SettingBean;


# direct methods
.method public synthetic constructor <init>(Lqa/m;Lia/b;Lorg/bitspark/android/beans/SettingBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqa/n;->a:Lqa/m;

    .line 5
    .line 6
    iput-object p2, p0, Lqa/n;->b:Lia/b;

    .line 7
    .line 8
    iput-object p3, p0, Lqa/n;->c:Lorg/bitspark/android/beans/SettingBean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lqa/n;->a:Lqa/m;

    .line 2
    .line 3
    iget-object p1, p1, Lqa/m;->b:Lqa/i;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lqa/n;->b:Lia/b;

    .line 8
    .line 9
    iget-object v0, v0, Lia/b;->b:Lw0/e;

    .line 10
    .line 11
    check-cast v0, Lja/c;

    .line 12
    .line 13
    iget-object v0, v0, Lw0/e;->d:Landroid/view/View;

    .line 14
    .line 15
    const-string v1, "FILC6UTIpnldyZiS\n"

    .line 16
    .line 17
    const-string v2, "c+e2uyun0lE=\n"

    .line 18
    .line 19
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object v1, p0, Lqa/n;->c:Lorg/bitspark/android/beans/SettingBean;

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2, v1}, Lqa/i;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
