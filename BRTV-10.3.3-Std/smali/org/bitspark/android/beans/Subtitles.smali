.class public final Lorg/bitspark/android/beans/Subtitles;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lorg/bitspark/android/beans/Subtitles;-><init>(Ljava/lang/String;Ljava/lang/String;ILj9/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/bitspark/android/beans/Subtitles;->address:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/bitspark/android/beans/Subtitles;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILj9/f;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    .line 5
    const-string v0, ""

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/bitspark/android/beans/Subtitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/bitspark/android/beans/Subtitles;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/bitspark/android/beans/Subtitles;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/bitspark/android/beans/Subtitles;->address:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/bitspark/android/beans/Subtitles;->name:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/bitspark/android/beans/Subtitles;->copy(Ljava/lang/String;Ljava/lang/String;)Lorg/bitspark/android/beans/Subtitles;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final native component1()Ljava/lang/String;
.end method

.method public final native component2()Ljava/lang/String;
.end method

.method public final native copy(Ljava/lang/String;Ljava/lang/String;)Lorg/bitspark/android/beans/Subtitles;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getAddress()Ljava/lang/String;
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public native toString()Ljava/lang/String;
.end method
