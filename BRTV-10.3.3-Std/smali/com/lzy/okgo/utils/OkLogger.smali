.class public Lcom/lzy/okgo/utils/OkLogger;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field private static isLogEnable:Z = true

.field private static tag:Ljava/lang/String; = "OkGo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    sput-object p0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    .line 3
    sput-boolean p1, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    return-void
.end method

.method public static debug(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->debug(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/lzy/okgo/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
