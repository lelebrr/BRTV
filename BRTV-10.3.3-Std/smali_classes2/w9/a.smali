.class public abstract Lw9/a;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lu7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu7/b;

    .line 2
    .line 3
    const-string v1, "NULL"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lw9/a;->a:Lu7/b;

    .line 10
    .line 11
    return-void
.end method
