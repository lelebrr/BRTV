.class public final Lga/e;
.super Lcom/lzy/okgo/callback/FileCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lga/h;


# direct methods
.method public constructor <init>(Lga/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lga/e;->a:Lga/h;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/lzy/okgo/callback/FileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 1
    const-string p1, "JI3PtUI=\n"

    .line 2
    .line 3
    const-string v0, "Zt6K5QVHv4Y=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "ikfNCQ/VRX2LUNZEStZHL5tHywkMxEsxwQLLTAvBAjufTdQJCcRBNYg=\n"

    .line 10
    .line 11
    const-string v1, "7SK5KWqlIl0=\n"

    .line 12
    .line 13
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 23
    .line 24
    const/16 v0, 0x1e

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/io/File;

    .line 6
    .line 7
    iget-object v0, p0, Lga/e;->a:Lga/h;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lga/g;

    .line 13
    .line 14
    invoke-direct {v1, v0, p1}, Lga/g;-><init>(Lga/h;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
