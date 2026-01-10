.class public Lcom/lzy/okgo/exception/CacheException;
.super Ljava/lang/Exception;
.source "MyApplication"


# static fields
.field private static final serialVersionUID:J = 0xbbc464c55485475L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static NON_AND_304(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;
    .locals 3

    .line 1
    new-instance v0, Lcom/lzy/okgo/exception/CacheException;

    .line 2
    .line 3
    const-string v1, "the http response code is 304, but the cache with cacheKey = "

    .line 4
    .line 5
    const-string v2, " is null or expired!"

    .line 6
    .line 7
    invoke-static {v1, p0, v2}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/CacheException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static NON_OR_EXPIRE(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;
    .locals 3

    .line 1
    new-instance v0, Lcom/lzy/okgo/exception/CacheException;

    .line 2
    .line 3
    const-string v1, "cacheKey = "

    .line 4
    .line 5
    const-string v2, " ,can\'t find cache by cacheKey, or cache has expired!"

    .line 6
    .line 7
    invoke-static {v1, p0, v2}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/CacheException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
