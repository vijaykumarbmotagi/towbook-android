.class public abstract Lorg/joda/time/field/ImpreciseDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "ImpreciseDateTimeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63caa39367f81d54L


# instance fields
.field private final iDurationField:Lorg/joda/time/DurationField;

.field final iUnitMillis:J


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;J)V
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 57
    iput-wide p2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iUnitMillis:J

    .line 58
    new-instance p2, Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;-><init>(Lorg/joda/time/field/ImpreciseDateTimeField;Lorg/joda/time/DurationFieldType;)V

    iput-object p2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-void
.end method


# virtual methods
.method public abstract add(JI)J
.end method

.method public abstract add(JJ)J
.end method

.method public abstract get(J)I
.end method

.method public getDifference(JJ)I
    .registers 5

    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 12

    cmp-long v0, p1, p3

    if-gez v0, :cond_a

    .line 120
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    :cond_a
    const/4 v0, 0x0

    sub-long v0, p1, p3

    .line 123
    iget-wide v2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iUnitMillis:J

    div-long/2addr v0, v2

    .line 124
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v2

    cmp-long v4, v2, p1

    const-wide/16 v2, 0x1

    if-gez v4, :cond_2a

    :goto_1a
    const/4 v4, 0x0

    add-long v4, v0, v2

    .line 127
    invoke-virtual {p0, p3, p4, v4, v5}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v0

    cmp-long v6, v0, p1

    if-lez v6, :cond_28

    sub-long v0, v4, v2

    goto :goto_41

    :cond_28
    move-wide v0, v4

    goto :goto_1a

    .line 129
    :cond_2a
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-lez v6, :cond_41

    :goto_32
    const/4 v4, 0x0

    sub-long v4, v0, v2

    .line 132
    invoke-virtual {p0, p3, p4, v4, v5}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v0

    cmp-long v6, v0, p1

    if-gtz v6, :cond_3f

    move-wide v0, v4

    goto :goto_41

    :cond_3f
    move-wide v0, v4

    goto :goto_32

    :cond_41
    :goto_41
    return-wide v0
.end method

.method public final getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method protected final getDurationUnitMillis()J
    .registers 3

    .line 146
    iget-wide v0, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iUnitMillis:J

    return-wide v0
.end method

.method public abstract getRangeDurationField()Lorg/joda/time/DurationField;
.end method

.method public abstract roundFloor(J)J
.end method

.method public abstract set(JI)J
.end method
