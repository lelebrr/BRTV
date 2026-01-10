.class public final Lea/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/bitspark/android/Spark;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;I)V
    .locals 0

    .line 1
    iput p2, p0, Lea/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lea/l;->b:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lea/l;->b:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget v0, p0, Lea/l;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lorg/bitspark/android/Spark;->s(Lorg/bitspark/android/Spark;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "/6yFH8O0QIztp5UZxbND0bCVqD/pkWHxzZ2yKPiJbezZkQ==\n"

    .line 22
    .line 23
    const-string v2, "nsLhbazdJKI=\n"

    .line 24
    .line 25
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "m0GV4AId\n"

    .line 38
    .line 39
    const-string v2, "2RLYgWtzSgE=\n"

    .line 40
    .line 41
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
