.class public Lorg/bitspark/android/beans/Menu;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bitspark/android/beans/ISeletor;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private isSelected:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "4JxvfA==\n"

    .line 2
    .line 3
    const-string v1, "jv0CGVEXZzE=\n"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/bitspark/android/beans/Menu;->name:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p2, p0, Lorg/bitspark/android/beans/Menu;->isSelected:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public native getName()Ljava/lang/String;
.end method

.method public native isSelected()Z
.end method

.method public native setSelected(Z)V
.end method
