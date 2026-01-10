.class public interface abstract Lcom/lzy/okgo/cookie/store/CookieStore;
.super Ljava/lang/Object;
.source "MyApplication"


# virtual methods
.method public abstract getAllCookie()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract removeAllCookie()Z
.end method

.method public abstract removeCookie(Lokhttp3/HttpUrl;)Z
.end method

.method public abstract removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
.end method

.method public abstract saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
.end method
