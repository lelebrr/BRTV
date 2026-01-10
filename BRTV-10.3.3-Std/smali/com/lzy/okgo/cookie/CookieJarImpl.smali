.class public Lcom/lzy/okgo/cookie/CookieJarImpl;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lokhttp3/CookieJar;


# instance fields
.field private cookieStore:Lcom/lzy/okgo/cookie/store/CookieStore;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/cookie/store/CookieStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okgo/cookie/store/CookieStore;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "cookieStore can not be null!"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public getCookieStore()Lcom/lzy/okgo/cookie/store/CookieStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okgo/cookie/store/CookieStore;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okgo/cookie/store/CookieStore;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Lcom/lzy/okgo/cookie/store/CookieStore;->loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okgo/cookie/store/CookieStore;

    .line 3
    .line 4
    invoke-interface {v0, p1, p2}, Lcom/lzy/okgo/cookie/store/CookieStore;->saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method
