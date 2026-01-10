.class public final synthetic Lv7/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lv7/d;

.field public final synthetic b:Ls2/c;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lv7/d;Ls2/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/c;->a:Lv7/d;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/c;->b:Ls2/c;

    .line 7
    .line 8
    iput-object p3, p0, Lv7/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lv7/c;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lv7/c;->b:Ls2/c;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/c;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/c;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lv7/c;->a:Lv7/d;

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v3, v0, v1, v2}, Lv7/d;->a(Ls2/c;Ljava/lang/String;Ljava/lang/String;)Lv7/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v2, Ljava/io/IOException;

    .line 16
    .line 17
    const-string v3, "resolver failed:"

    .line 18
    .line 19
    invoke-static {v3, v1}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw v2
.end method
