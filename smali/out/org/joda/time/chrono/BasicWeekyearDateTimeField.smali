.class final Lorg/joda/time/chrono/BasicWeekyearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "BasicWeekyearDateTimeField.java"


# static fields
.field private static final WEEK_53:J = 0x7528ad000L

.field private static final serialVersionUID:J = 0x56405a6e978d8324L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .registers 5

    .line 45
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYear()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    .line 46
    iput-object p1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 251
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .registers 5

    if-nez p3, :cond_3

    return-wide p1

    .line 76
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .registers 5

    .line 80
    invoke-static {p3, p4}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public addWrapField(JI)J
    .registers 4

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(J)I
    .registers 4

    .line 61
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 11

    cmp-long v0, p1, p3

    if-gez v0, :cond_b

    .line 98
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->getDifference(JJ)I

    move-result p1

    neg-int p1, p1

    int-to-long p1, p1

    return-wide p1

    .line 101
    :cond_b
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    .line 102
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v1

    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->remainder(J)J

    move-result-wide p1

    .line 105
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->remainder(J)J

    move-result-wide p3

    const-wide v2, 0x7528ad000L

    cmp-long v4, p3, v2

    if-ltz v4, :cond_34

    .line 108
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v2

    const/16 v3, 0x34

    if-gt v2, v3, :cond_34

    const-wide/32 v2, 0x240c8400

    sub-long v4, p3, v2

    move-wide p3, v4

    :cond_34
    sub-int/2addr v0, v1

    cmp-long v1, p1, p3

    if-gez v1, :cond_3b

    add-int/lit8 v0, v0, -0x1

    :cond_3b
    int-to-long p1, v0

    return-wide p1
.end method

.method public getLeapAmount(J)I
    .registers 5

    .line 217
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x34

    return p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 221
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .registers 2

    .line 229
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .line 225
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeap(J)Z
    .registers 5

    .line 213
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    const/16 p2, 0x34

    if-le p1, p2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public isLenient()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .registers 7

    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long v2, p1, v0

    return-wide v2
.end method

.method public roundFloor(J)J
    .registers 7

    .line 235
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    .line 236
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    const-wide/32 v2, 0x240c8400

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long v0, v0, v2

    sub-long v2, p1, v0

    move-wide p1, v2

    :cond_1d
    return-wide p1
.end method

.method public set(JI)J
    .registers 11

    .line 129
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    if-ne v0, p3, :cond_1a

    return-wide p1

    .line 141
    :cond_1a
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    move-result v1

    .line 145
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v0

    .line 146
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p3}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v2

    if-ge v2, v0, :cond_2f

    move v0, v2

    .line 155
    :cond_2f
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v2

    if-le v2, v0, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    .line 169
    :goto_39
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v2

    const-wide/32 v3, 0x240c8400

    if-ge v2, p3, :cond_4b

    add-long v5, p1, v3

    goto :goto_51

    :cond_4b
    if-le v2, p3, :cond_50

    sub-long v5, p1, v3

    goto :goto_51

    :cond_50
    move-wide v5, p1

    .line 190
    :goto_51
    iget-object p1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p1, v5, v6}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long p1, v0

    mul-long p1, p1, v3

    add-long v2, v5, p1

    .line 201
    iget-object p1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
