.class public final Lorg/bitspark/android/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Lr2/i;


# static fields
.field public static volatile b:Lorg/bitspark/android/utils/b;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/bitspark/android/utils/b;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method public static native c()Lorg/bitspark/android/utils/b;
.end method


# virtual methods
.method public native a(Ln2/h;)Z
.end method

.method public native b()Z
.end method
