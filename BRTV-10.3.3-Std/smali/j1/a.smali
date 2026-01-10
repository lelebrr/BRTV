.class public final Lj1/a;
.super Ld7/c2;
.source "MyApplication"


# static fields
.field public static final b:Lj1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj1/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ld7/c2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lj1/a;->b:Lj1/a;

    .line 8
    .line 9
    return-void
.end method
