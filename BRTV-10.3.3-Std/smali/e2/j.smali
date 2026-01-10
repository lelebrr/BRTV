.class public final Le2/j;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Le2/e;


# direct methods
.method public constructor <init>(Le2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le2/j;->a:Le2/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Le2/j;->a:Le2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Le2/e;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
