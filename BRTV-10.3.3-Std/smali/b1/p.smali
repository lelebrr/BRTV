.class public final Lb1/p;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final d:Lx4/e;


# instance fields
.field public final a:Lb1/h;

.field public b:I

.field public final c:Lb1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx4/e;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lx4/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lb1/p;->d:Lx4/e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lb1/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb1/p;->b:I

    .line 6
    .line 7
    new-instance v0, Lb1/d;

    .line 8
    .line 9
    invoke-direct {v0}, Lb1/d;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lb1/p;->c:Lb1/d;

    .line 13
    .line 14
    iput-object p1, p0, Lb1/p;->a:Lb1/h;

    .line 15
    .line 16
    return-void
.end method
