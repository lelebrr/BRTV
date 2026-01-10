.class public final Landroidx/media3/container/ObuParser$FrameHeader;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameHeader"
.end annotation


# static fields
.field private static final FRAME_TYPE_INTRA_ONLY_FRAME:I = 0x2

.field private static final FRAME_TYPE_KEY_FRAME:I = 0x0

.field private static final FRAME_TYPE_SWITCH_FRAME:I = 0x3

.field private static final PROBE_BYTES:I = 0x4


# instance fields
.field private final isDependedOn:Z


# direct methods
.method private constructor <init>(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Landroidx/media3/container/ObuParser$Obu;->type:I

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p2, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v0, v0, [B

    .line 33
    .line 34
    iget-object p2, p2, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    new-instance p2, Landroidx/media3/common/util/ParsableBitArray;

    .line 44
    .line 45
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 46
    .line 47
    .line 48
    iget-boolean v0, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/4 v0, 0x2

    .line 63
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget-boolean v6, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    .line 72
    .line 73
    invoke-static {v6}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 74
    .line 75
    .line 76
    if-nez v5, :cond_3

    .line 77
    .line 78
    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    if-eq v1, v3, :cond_5

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 92
    :goto_3
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 93
    .line 94
    .line 95
    iget-boolean v6, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    .line 96
    .line 97
    xor-int/2addr v6, v4

    .line 98
    invoke-static {v6}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_6

    .line 106
    .line 107
    iget-boolean v6, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    .line 108
    .line 109
    xor-int/2addr v6, v4

    .line 110
    invoke-static {v6}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-boolean v6, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    .line 117
    .line 118
    invoke-static {v6}, Landroidx/media3/container/ObuParser;->access$100(Z)V

    .line 119
    .line 120
    .line 121
    if-eq v1, v3, :cond_7

    .line 122
    .line 123
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 124
    .line 125
    .line 126
    :cond_7
    iget p1, p1, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 129
    .line 130
    .line 131
    if-eq v1, v0, :cond_8

    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    if-nez v5, :cond_8

    .line 136
    .line 137
    invoke-virtual {p2, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 138
    .line 139
    .line 140
    :cond_8
    if-eq v1, v3, :cond_a

    .line 141
    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    const/16 p1, 0x8

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    goto :goto_5

    .line 152
    :cond_a
    :goto_4
    const/16 p1, 0xff

    .line 153
    .line 154
    :goto_5
    if-eqz p1, :cond_b

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    :cond_b
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 158
    .line 159
    return-void
.end method

.method public static parse(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$FrameHeader;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/media3/container/ObuParser$FrameHeader;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/media3/container/ObuParser$FrameHeader;-><init>(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method


# virtual methods
.method public isDependedOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    .line 2
    .line 3
    return v0
.end method
