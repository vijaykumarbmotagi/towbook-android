.class public final Lorg/joda/time/field/SkipDateTimeField;
.super Lorg/joda/time/field/DelegatedDateTimeField;
.source "SkipDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x7b158b898ffc2946L


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private transient iMinValue:I

.field private final iSkip:I


# direct methods
.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V
    .registers 4

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;I)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p2}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    .line 66
    iput-object p1, p0, Lorg/joda/time/field/SkipDateTimeField;->iChronology:Lorg/joda/time/Chronology;

    .line 67
    invoke-super {p0}, Lorg/joda/time/field/DelegatedDateTimeField;->getMinimumValue()I

    move-result p1

    if-ge p1, p3, :cond_10

    add-int/lit8 p1, p1, -0x1

    .line 69
    iput p1, p0, Lorg/joda/time/field/SkipDateTimeField;->iMinValue:I

    goto :goto_19

    :cond_10
    if-ne p1, p3, :cond_17

    add-int/lit8 p1, p3, 0x1

    .line 71
    iput p1, p0, Lorg/joda/time/field/SkipDateTimeField;->iMinValue:I

    goto :goto_19

    .line 73
    :cond_17
    iput p1, p0, Lorg/joda/time/field/SkipDateTimeField;->iMinValue:I

    .line 75
    :goto_19
    iput p3, p0, Lorg/joda/time/field/SkipDateTimeField;->iSkip:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .line 104
    invoke-virtual {p0}, Lorg/joda/time/field/SkipDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/field/SkipDateTimeField;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .registers 3

    .line 80
    invoke-super {p0, p1, p2}, Lorg/joda/time/field/DelegatedDateTimeField;->get(J)I

    move-result p1

    .line 81
    iget p2, p0, Lorg/joda/time/field/SkipDateTimeField;->iSkip:I

    if-gt p1, p2, :cond_a

    add-int/lit8 p1, p1, -0x1

    :cond_a
    return p1
.end method

.method public getMinimumValue()I
    .registers 2

    .line 100
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->iMinValue:I

    return v0
.end method

.method public set(JI)J
    .registers 6

    .line 88
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->iMinValue:I

    invoke-virtual {p0}, Lorg/joda/time/field/SkipDateTimeField;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 89
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->iSkip:I

    if-gt p3, v0, :cond_22

    .line 90
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->iSkip:I

    if-ne p3, v0, :cond_20

    .line 91
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v0}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_20
    add-int/lit8 p3, p3, 0x1

    .line 96
    :cond_22
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/DelegatedDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
