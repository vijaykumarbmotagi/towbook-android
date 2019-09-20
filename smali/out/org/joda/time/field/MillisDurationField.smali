.class public final Lorg/joda/time/field/MillisDurationField;
.super Lorg/joda/time/DurationField;
.source "MillisDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/joda/time/DurationField;

.field private static final serialVersionUID:J = 0x24de85b89b81f517L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/joda/time/field/MillisDurationField;

    invoke-direct {v0}, Lorg/joda/time/field/MillisDurationField;-><init>()V

    sput-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 171
    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .registers 6

    int-to-long v0, p3

    .line 117
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .registers 5

    .line 121
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/MillisDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .registers 6

    .line 134
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    .line 135
    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    cmp-long p1, v2, v0

    if-gez p1, :cond_14

    const/4 p1, -0x1

    return p1

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 148
    instance-of v0, p1, Lorg/joda/time/field/MillisDurationField;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 149
    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v2

    check-cast p1, Lorg/joda/time/field/MillisDurationField;

    invoke-virtual {p1}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    :cond_15
    return v1
.end method

.method public getDifference(JJ)I
    .registers 5

    .line 125
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 5

    .line 129
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMillis(IJ)J
    .registers 4

    int-to-long p1, p1

    return-wide p1
.end method

.method public getMillis(J)J
    .registers 3

    return-wide p1
.end method

.method public getMillis(JJ)J
    .registers 5

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "millis"

    return-object v0
.end method

.method public getType()Lorg/joda/time/DurationFieldType;
    .registers 2

    .line 49
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public final getUnitMillis()J
    .registers 3

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getValue(J)I
    .registers 3

    .line 85
    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getValue(JJ)I
    .registers 5

    .line 93
    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getValueAsLong(J)J
    .registers 3

    return-wide p1
.end method

.method public getValueAsLong(JJ)J
    .registers 5

    return-wide p1
.end method

.method public hashCode()I
    .registers 3

    .line 155
    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final isPrecise()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DurationField[millis]"

    return-object v0
.end method
