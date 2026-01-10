.class Lcom/lzy/okgo/db/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MyApplication"


# static fields
.field private static final DB_CACHE_NAME:Ljava/lang/String; = "okgo.db"

.field private static final DB_CACHE_VERSION:I = 0x1

.field static final TABLE_CACHE:Ljava/lang/String; = "cache"

.field static final TABLE_COOKIE:Ljava/lang/String; = "cookie"

.field static final TABLE_DOWNLOAD:Ljava/lang/String; = "download"

.field static final TABLE_UPLOAD:Ljava/lang/String; = "upload"

.field static final lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/lzy/okgo/db/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/DBHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    .line 2
    const-string v1, "okgo.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "cache"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 4
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "cookie"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 5
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v4, "download"

    invoke-direct {v1, v4}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 6
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v4, "upload"

    invoke-direct {v1, v4}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 7
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "key"

    const-string v6, "VARCHAR"

    invoke-direct {v4, v5, v6, v3, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    const-string v4, "localExpire"

    const-string v5, "INTEGER"

    .line 8
    invoke-static {v4, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 9
    const-string v4, "head"

    const-string v7, "BLOB"

    .line 10
    invoke-static {v4, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 11
    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v8, "data"

    invoke-direct {v4, v8, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 13
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    const-string v4, "host"

    .line 14
    invoke-static {v4, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 15
    const-string v8, "name"

    .line 16
    invoke-static {v8, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 17
    const-string v9, "domain"

    .line 18
    invoke-static {v9, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 19
    invoke-static {v2, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    filled-new-array {v4, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>([Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 22
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v4, "tag"

    invoke-direct {v2, v4, v6, v3, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    const-string v2, "url"

    .line 23
    invoke-static {v2, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 24
    const-string v8, "folder"

    .line 25
    invoke-static {v8, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 26
    const-string v9, "filePath"

    .line 27
    invoke-static {v9, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 28
    const-string v10, "fileName"

    .line 29
    invoke-static {v10, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 30
    const-string v11, "fraction"

    .line 31
    invoke-static {v11, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 32
    const-string v12, "totalSize"

    .line 33
    invoke-static {v12, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 34
    const-string v13, "currentSize"

    .line 35
    invoke-static {v13, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 36
    const-string v14, "status"

    .line 37
    invoke-static {v14, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 38
    const-string v15, "priority"

    .line 39
    invoke-static {v15, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 40
    const-string v3, "date"

    .line 41
    invoke-static {v3, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 p1, v3

    .line 42
    const-string v3, "request"

    .line 43
    invoke-static {v3, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v16, v3

    .line 44
    const-string v3, "extra1"

    .line 45
    invoke-static {v3, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v17, v3

    .line 46
    const-string v3, "extra2"

    .line 47
    invoke-static {v3, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v18, v3

    .line 48
    new-instance v3, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v19, v15

    const-string v15, "extra3"

    invoke-direct {v3, v15, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v3}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 50
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v3, Lcom/lzy/okgo/db/ColumnEntity;

    const/4 v15, 0x1

    invoke-direct {v3, v4, v6, v15, v15}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 51
    invoke-static {v2, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 52
    invoke-static {v8, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 53
    invoke-static {v9, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 54
    invoke-static {v10, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 55
    invoke-static {v11, v6, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 56
    invoke-static {v12, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 57
    invoke-static {v13, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 58
    invoke-static {v14, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v2, v19

    .line 59
    invoke-static {v2, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v2, p1

    .line 60
    invoke-static {v2, v5, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v2, v16

    .line 61
    invoke-static {v2, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v2, v17

    .line 62
    invoke-static {v2, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    move-object/from16 v2, v18

    .line 63
    invoke-static {v2, v7, v1}, La/e;->j(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/db/TableEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "extra3"

    invoke-direct {v2, v3, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/db/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string p2, "DROP TABLE IF EXISTS cache"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string p2, "DROP TABLE IF EXISTS cookie"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    const-string p2, "DROP TABLE IF EXISTS download"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    const-string p2, "DROP TABLE IF EXISTS upload"

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
