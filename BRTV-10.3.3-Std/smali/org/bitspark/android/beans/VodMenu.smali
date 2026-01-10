.class public final Lorg/bitspark/android/beans/VodMenu;
.super Lorg/bitspark/android/beans/Menu;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private isEnable:Z

.field private isSelected:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    const-string v0, "AOVRig==\n"

    .line 2
    .line 3
    const-string v1, "boQ8719/lc8=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lorg/bitspark/android/beans/Menu;-><init>(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/bitspark/android/beans/VodMenu;->name:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p2, p0, Lorg/bitspark/android/beans/VodMenu;->isSelected:Z

    .line 18
    .line 19
    iput-boolean p3, p0, Lorg/bitspark/android/beans/VodMenu;->isEnable:Z

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lorg/bitspark/android/beans/VodMenu;Ljava/lang/String;ZZILjava/lang/Object;)Lorg/bitspark/android/beans/VodMenu;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/bitspark/android/beans/VodMenu;->name:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lorg/bitspark/android/beans/VodMenu;->isSelected:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lorg/bitspark/android/beans/VodMenu;->isEnable:Z

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitspark/android/beans/VodMenu;->copy(Ljava/lang/String;ZZ)Lorg/bitspark/android/beans/VodMenu;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final native component1()Ljava/lang/String;
.end method

.method public final native component2()Z
.end method

.method public final native component3()Z
.end method

.method public final native copy(Ljava/lang/String;ZZ)Lorg/bitspark/android/beans/VodMenu;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public final native isEnable()Z
.end method

.method public native isSelected()Z
.end method

.method public final native setEnable(Z)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setSelected(Z)V
.end method

.method public native toString()Ljava/lang/String;
.end method
