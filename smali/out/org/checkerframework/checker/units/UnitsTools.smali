.class public Lorg/checkerframework/checker/units/UnitsTools;
.super Ljava/lang/Object;
.source "UnitsTools.java"


# static fields
.field public static final A:I = 0x1

.field public static final C:I = 0x1

.field public static final K:I = 0x1

.field public static final cd:I = 0x1

.field public static final deg:D = 1.0

.field public static final g:I = 0x1

.field public static final h:I = 0x1

.field public static final kg:I = 0x1

.field public static final km:I = 0x1

.field public static final km2:I = 0x1

.field public static final kmPERh:I = 0x1

.field public static final m:I = 0x1

.field public static final m2:I = 0x1

.field public static final mPERs:I = 0x1

.field public static final mPERs2:I = 0x1

.field public static final min:I = 0x1

.field public static final mm:I = 0x1

.field public static final mm2:I = 0x1

.field public static final mol:I = 0x1

.field public static final rad:D = 1.0

.field public static final s:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCelsiusToKelvin(I)I
    .registers 1

    add-int/lit16 p0, p0, 0x111

    return p0
.end method

.method public static fromGramToKiloGram(I)I
    .registers 1

    .line 67
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromHourToMinute(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static fromKelvinToCelsius(I)I
    .registers 1

    add-int/lit16 p0, p0, -0x111

    return p0
.end method

.method public static fromKiloGramToGram(I)I
    .registers 1

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromKiloMeterPerHourToMeterPerSecond(D)D
    .registers 4

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static fromKiloMeterToMeter(I)I
    .registers 1

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMeterPerSecondToKiloMeterPerHour(D)D
    .registers 4

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static fromMeterToKiloMeter(I)I
    .registers 1

    .line 60
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMeterToMilliMeter(I)I
    .registers 1

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMilliMeterToMeter(I)I
    .registers 1

    .line 58
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMinuteToHour(I)I
    .registers 1

    .line 94
    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static fromMinuteToSecond(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static fromSecondToMinute(I)I
    .registers 1

    .line 92
    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static toDegrees(D)D
    .registers 2

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static toRadians(D)D
    .registers 2

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    return-wide p0
.end method
