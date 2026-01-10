.class public interface abstract Lb3/l;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lb3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb3/m;

    .line 2
    .line 3
    sget-object v0, Lb3/m;->a:Ljava/util/Map;

    .line 4
    .line 5
    new-instance v1, Lb3/o;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lb3/o;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lb3/l;->a:Lb3/o;

    .line 11
    .line 12
    return-void
.end method
