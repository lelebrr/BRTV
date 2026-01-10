.class public final Lorg/bitspark/android/utils/o;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lorg/bitspark/android/utils/o;


# instance fields
.field public a:Lorg/bitspark/android/Spark;

.field public b:Lta/a;

.field public c:Lka/i0;

.field public d:Lka/b;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    .line 1
    .line 2
    new-instance v0, Lorg/bitspark/android/utils/o;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, v0, Lorg/bitspark/android/utils/o;->d:Lka/b;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput-boolean v1, v0, Lorg/bitspark/android/utils/o;->e:Z

    .line 12
    .line 13
    sput-object v0, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 14
    return-void
.end method

.method public static native b(Ljava/util/ArrayList;Ljava/lang/String;)I
.end method


# virtual methods
.method public final native a(Lka/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lka/i0;
.end method

.method public final native c(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V
.end method

.method public final native d()V
.end method

.method public final native e()V
.end method

.method public final native f()Z
.end method

.method public final native g()V
.end method
