.class public Lorg/joda/time/field/PreciseDurationField;
.super Lorg/joda/time/field/BaseDurationField;
.source "PreciseDurationField.java"


# static fields
.field private static final serialVersionUID:J = -0x73d37d31e6aafa05L


# instance fields
.field private final iUnitMillis:J


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationFieldType;J)V
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Lorg/joda/time/field/BaseDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 44
    iput-wide p2, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    return-void
.end method


# virtual methods
.method public add(JI)J
    .registers 8

    int-to-long v0, p3

    .line 104
    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    mul-long v0, v0, v2

    .line 105
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .registers 7

    .line 109
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    invoke-static {p3, p4, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JJ)J

    move-result-wide p3

    .line 110
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 129
    :cond_4
    instance-of v1, p1, Lorg/joda/time/field/PreciseDurationField;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 130
    check-cast p1, Lorg/joda/time/field/PreciseDurationField;

    .line 131
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/PreciseDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    if-ne v1, v3, :cond_1e

    iget-wide v3, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    iget-wide v5, p1, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    return v2
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 5

    .line 114
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide p1

    .line 115
    iget-wide p3, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public getMillis(IJ)J
    .registers 6

    int-to-long p1, p1

    .line 88
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    mul-long p1, p1, v0

    return-wide p1
.end method

.method public getMillis(JJ)J
    .registers 5

    .line 100
    iget-wide p3, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getUnitMillis()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    return-wide v0
.end method

.method public getValueAsLong(JJ)J
    .registers 5

    .line 76
    iget-wide p3, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public hashCode()I
    .registers 7

    .line 142
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationField;->iUnitMillis:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    .line 144
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isPrecise()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
