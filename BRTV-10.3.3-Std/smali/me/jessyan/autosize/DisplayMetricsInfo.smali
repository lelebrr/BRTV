.class public Lme/jessyan/autosize/DisplayMetricsInfo;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lme/jessyan/autosize/DisplayMetricsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private density:F

.field private densityDpi:I

.field private scaledDensity:F

.field private screenHeightDp:I

.field private screenWidthDp:I

.field private xdpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lme/jessyan/autosize/DisplayMetricsInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lme/jessyan/autosize/DisplayMetricsInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lme/jessyan/autosize/DisplayMetricsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(FIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 3
    iput p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 4
    iput p3, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 5
    iput p4, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    return-void
.end method

.method public constructor <init>(FIFFII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 8
    iput p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 9
    iput p3, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 10
    iput p4, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    .line 11
    iput p5, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenWidthDp:I

    .line 12
    iput p6, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenHeightDp:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenWidthDp:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenHeightDp:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 2
    .line 3
    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 2
    .line 3
    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 2
    .line 3
    return v0
.end method

.method public getScreenHeightDp()I
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenHeightDp:I

    .line 2
    .line 3
    return v0
.end method

.method public getScreenWidthDp()I
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenWidthDp:I

    .line 2
    .line 3
    return v0
.end method

.method public getXdpi()F
    .locals 1

    .line 1
    iget v0, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    .line 2
    .line 3
    return v0
.end method

.method public setDensity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 2
    .line 3
    return-void
.end method

.method public setDensityDpi(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 2
    .line 3
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 2
    .line 3
    return-void
.end method

.method public setScreenHeightDp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenHeightDp:I

    .line 2
    .line 3
    return-void
.end method

.method public setScreenWidthDp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenWidthDp:I

    .line 2
    .line 3
    return-void
.end method

.method public setXdpi(F)V
    .locals 0

    .line 1
    iput p1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisplayMetricsInfo{density="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", densityDpi="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", scaledDensity="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", xdpi="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", screenWidthDp="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenWidthDp:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", screenHeightDp="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenHeightDp:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x7d

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->density:F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->densityDpi:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->scaledDensity:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->xdpi:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenWidthDp:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lme/jessyan/autosize/DisplayMetricsInfo;->screenHeightDp:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
