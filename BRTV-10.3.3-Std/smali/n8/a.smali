.class public abstract Ln8/a;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lb1/l;

.field public static final b:Lx4/e;

.field public static final c:Lu6/e;

.field public static final d:Lx4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb1/l;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lb1/l;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ln8/a;->a:Lb1/l;

    .line 8
    .line 9
    new-instance v0, Lx4/e;

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lx4/e;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ln8/a;->b:Lx4/e;

    .line 17
    .line 18
    new-instance v0, Lu6/e;

    .line 19
    .line 20
    const/16 v1, 0x1b

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Ln8/a;->c:Lu6/e;

    .line 26
    .line 27
    new-instance v0, Lx4/e;

    .line 28
    .line 29
    const/16 v1, 0x1b

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lx4/e;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Ln8/a;->d:Lx4/e;

    .line 35
    .line 36
    return-void
.end method
