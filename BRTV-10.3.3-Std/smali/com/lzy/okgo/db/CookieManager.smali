.class public Lcom/lzy/okgo/db/CookieManager;
.super Lcom/lzy/okgo/db/BaseDao;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/db/BaseDao<",
        "Lcom/lzy/okgo/cookie/SerializableCookie;",
        ">;"
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;

.field private static volatile instance:Lcom/lzy/okgo/db/CookieManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/lzy/okgo/db/DBHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/lzy/okgo/db/CookieManager;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/lzy/okgo/db/DBHelper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/BaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/lzy/okgo/db/CookieManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/lzy/okgo/db/CookieManager;->instance:Lcom/lzy/okgo/db/CookieManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/lzy/okgo/db/CookieManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/lzy/okgo/db/CookieManager;->instance:Lcom/lzy/okgo/db/CookieManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/lzy/okgo/db/CookieManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/lzy/okgo/db/CookieManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/lzy/okgo/db/CookieManager;->instance:Lcom/lzy/okgo/db/CookieManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/lzy/okgo/db/CookieManager;->instance:Lcom/lzy/okgo/db/CookieManager;

    .line 27
    .line 28
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/lzy/okgo/db/CookieManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getContentValues(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/lzy/okgo/cookie/SerializableCookie;->getContentValues(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    check-cast p1, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CookieManager;->getContentValues(Lcom/lzy/okgo/cookie/SerializableCookie;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "cookie"

    .line 2
    .line 3
    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/lzy/okgo/cookie/SerializableCookie;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CookieManager;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cookie/SerializableCookie;

    move-result-object p1

    return-object p1
.end method

.method public unInit()V
    .locals 0

    .line 1
    return-void
.end method
