.class public abstract Lorg/joda/time/field/DecoratedDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "DecoratedDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x2d19cbaa9b9c69dL


# instance fields
.field private final iField:Lorg/joda/time/DateTimeField;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .registers 3

    .line 55
    invoke-direct {p0, p2}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    if-nez p1, :cond_d

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_d
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must be supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1b
    iput-object p1, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    return-void
.end method


# virtual methods
.method public get(J)I
    .registers 4

    .line 79
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public final getWrappedField()Lorg/joda/time/DateTimeField;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public isLenient()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isLenient()Z

    move-result v0

    return v0
.end method

.method public roundFloor(J)J
    .registers 4

    .line 103
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .registers 5

    .line 83
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
