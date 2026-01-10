.class public final Lorg/bitspark/android/beans/SettingBean;
.super Ljava/lang/Object;


# instance fields
.field private icon:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "A4mPUQ==\n"

    .line 2
    .line 3
    const-string v1, "bejiNFKxO1o=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lorg/bitspark/android/beans/SettingBean;->icon:I

    .line 16
    .line 17
    iput-object p2, p0, Lorg/bitspark/android/beans/SettingBean;->name:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lorg/bitspark/android/beans/SettingBean;ILjava/lang/String;ILjava/lang/Object;)Lorg/bitspark/android/beans/SettingBean;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/bitspark/android/beans/SettingBean;->icon:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/bitspark/android/beans/SettingBean;->name:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/bitspark/android/beans/SettingBean;->copy(ILjava/lang/String;)Lorg/bitspark/android/beans/SettingBean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final native component1()I
.end method

.method public final native component2()Ljava/lang/String;
.end method

.method public final native copy(ILjava/lang/String;)Lorg/bitspark/android/beans/SettingBean;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getIcon()I
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public final native setIcon(I)V
.end method

.method public final native setName(Ljava/lang/String;)V
.end method

.method public native toString()Ljava/lang/String;
.end method
