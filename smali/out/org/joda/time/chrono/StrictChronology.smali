.class public final Lorg/joda/time/chrono/StrictChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "StrictChronology.java"


# static fields
.field private static final serialVersionUID:J = 0x5c0d2c62948a3798L


# instance fields
.field private transient iWithUTC:Lorg/joda/time/Chronology;


# direct methods
.method private constructor <init>(Lorg/joda/time/Chronology;)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    return-void
.end method

.method private static final convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;
    .registers 1

    .line 114
    invoke-static {p0}, Lorg/joda/time/field/StrictDateTimeField;->getInstance(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;
    .registers 2

    if-nez p0, :cond_a

    .line 46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must supply a chronology"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_a
    new-instance v0, Lorg/joda/time/chrono/StrictChronology;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/StrictChronology;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .registers 3

    .line 87
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 88
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 89
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 90
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 91
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 92
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    .line 93
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    .line 94
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 95
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 96
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 97
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 98
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 100
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 101
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 102
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 103
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 104
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 105
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 106
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 107
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 108
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 109
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 110
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_4
    instance-of v0, p1, Lorg/joda/time/chrono/StrictChronology;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_a
    check-cast p1, Lorg/joda/time/chrono/StrictChronology;

    .line 134
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 144
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    const v1, 0x1507c8d0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictChronology["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    if-nez v0, :cond_1d

    .line 64
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne v0, v1, :cond_f

    .line 65
    iput-object p0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    goto :goto_1d

    .line 67
    :cond_f
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    .line 70
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .registers 3

    if-nez p1, :cond_6

    .line 75
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 77
    :cond_6
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v0, :cond_f

    .line 78
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    return-object p1

    .line 80
    :cond_f
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_16

    return-object p0

    .line 83
    :cond_16
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/chrono/StrictChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;

    move-result-object p1

    return-object p1
.end method
