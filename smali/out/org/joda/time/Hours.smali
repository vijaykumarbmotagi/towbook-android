.class public final Lorg/joda/time/Hours;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Hours.java"


# static fields
.field public static final EIGHT:Lorg/joda/time/Hours;

.field public static final FIVE:Lorg/joda/time/Hours;

.field public static final FOUR:Lorg/joda/time/Hours;

.field public static final MAX_VALUE:Lorg/joda/time/Hours;

.field public static final MIN_VALUE:Lorg/joda/time/Hours;

.field public static final ONE:Lorg/joda/time/Hours;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final SEVEN:Lorg/joda/time/Hours;

.field public static final SIX:Lorg/joda/time/Hours;

.field public static final THREE:Lorg/joda/time/Hours;

.field public static final TWO:Lorg/joda/time/Hours;

.field public static final ZERO:Lorg/joda/time/Hours;

.field private static final serialVersionUID:J = 0x136f3c648994180L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    .line 47
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->ONE:Lorg/joda/time/Hours;

    .line 49
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->TWO:Lorg/joda/time/Hours;

    .line 51
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->THREE:Lorg/joda/time/Hours;

    .line 53
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->FOUR:Lorg/joda/time/Hours;

    .line 55
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->FIVE:Lorg/joda/time/Hours;

    .line 57
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->SIX:Lorg/joda/time/Hours;

    .line 59
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->SEVEN:Lorg/joda/time/Hours;

    .line 61
    new-instance v0, Lorg/joda/time/Hours;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->EIGHT:Lorg/joda/time/Hours;

    .line 63
    new-instance v0, Lorg/joda/time/Hours;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->MAX_VALUE:Lorg/joda/time/Hours;

    .line 65
    new-instance v0, Lorg/joda/time/Hours;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->MIN_VALUE:Lorg/joda/time/Hours;

    .line 68
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Hours;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 218
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    return-void
.end method

.method public static hours(I)Lorg/joda/time/Hours;
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_30

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_2d

    packed-switch p0, :pswitch_data_34

    .line 106
    new-instance v0, Lorg/joda/time/Hours;

    invoke-direct {v0, p0}, Lorg/joda/time/Hours;-><init>(I)V

    return-object v0

    .line 100
    :pswitch_12
    sget-object p0, Lorg/joda/time/Hours;->EIGHT:Lorg/joda/time/Hours;

    return-object p0

    .line 98
    :pswitch_15
    sget-object p0, Lorg/joda/time/Hours;->SEVEN:Lorg/joda/time/Hours;

    return-object p0

    .line 96
    :pswitch_18
    sget-object p0, Lorg/joda/time/Hours;->SIX:Lorg/joda/time/Hours;

    return-object p0

    .line 94
    :pswitch_1b
    sget-object p0, Lorg/joda/time/Hours;->FIVE:Lorg/joda/time/Hours;

    return-object p0

    .line 92
    :pswitch_1e
    sget-object p0, Lorg/joda/time/Hours;->FOUR:Lorg/joda/time/Hours;

    return-object p0

    .line 90
    :pswitch_21
    sget-object p0, Lorg/joda/time/Hours;->THREE:Lorg/joda/time/Hours;

    return-object p0

    .line 88
    :pswitch_24
    sget-object p0, Lorg/joda/time/Hours;->TWO:Lorg/joda/time/Hours;

    return-object p0

    .line 86
    :pswitch_27
    sget-object p0, Lorg/joda/time/Hours;->ONE:Lorg/joda/time/Hours;

    return-object p0

    .line 84
    :pswitch_2a
    sget-object p0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    return-object p0

    .line 102
    :cond_2d
    sget-object p0, Lorg/joda/time/Hours;->MAX_VALUE:Lorg/joda/time/Hours;

    return-object p0

    .line 104
    :cond_30
    sget-object p0, Lorg/joda/time/Hours;->MIN_VALUE:Lorg/joda/time/Hours;

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static hoursBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Hours;
    .registers 3

    .line 121
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result p0

    .line 122
    invoke-static {p0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    return-object p0
.end method

.method public static hoursBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Hours;
    .registers 5

    .line 138
    instance-of v0, p0, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_29

    instance-of v0, p1, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_29

    .line 139
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalTime;

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    check-cast p0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p0

    .line 142
    invoke-static {p0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    return-object p0

    .line 144
    :cond_29
    sget-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result p0

    .line 145
    invoke-static {p0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    return-object p0
.end method

.method public static hoursIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Hours;
    .registers 3

    if-nez p0, :cond_5

    .line 158
    sget-object p0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    return-object p0

    .line 160
    :cond_5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object p0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result p0

    .line 161
    invoke-static {p0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    return-object p0
.end method

.method public static parseHours(Ljava/lang/String;)Lorg/joda/time/Hours;
    .registers 2
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    if-nez p0, :cond_5

    .line 203
    sget-object p0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    return-object p0

    .line 205
    :cond_5
    sget-object v0, Lorg/joda/time/Hours;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lorg/joda/time/Period;->getHours()I

    move-result p0

    invoke-static {p0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 227
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public static standardHoursIn(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Hours;
    .registers 3

    const-wide/32 v0, 0x36ee80

    .line 185
    invoke-static {p0, v0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I

    move-result p0

    .line 186
    invoke-static {p0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Hours;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    .line 436
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p1

    return-object p1
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .registers 2

    .line 237
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getHours()I
    .registers 2

    .line 342
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    return v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .registers 2

    .line 246
    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Lorg/joda/time/Hours;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 459
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result p1

    if-lez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 461
    :cond_c
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result p1

    if-le v2, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public isLessThan(Lorg/joda/time/Hours;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 472
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result p1

    if-gez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 474
    :cond_c
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result p1

    if-ge v2, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public minus(I)Lorg/joda/time/Hours;
    .registers 2

    .line 389
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Hours;->plus(I)Lorg/joda/time/Hours;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/Hours;)Lorg/joda/time/Hours;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 405
    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Hours;->minus(I)Lorg/joda/time/Hours;

    move-result-object p1

    return-object p1
.end method

.method public multipliedBy(I)Lorg/joda/time/Hours;
    .registers 3

    .line 419
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result p1

    invoke-static {p1}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lorg/joda/time/Hours;
    .registers 2

    .line 447
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Hours;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 359
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result p1

    invoke-static {p1}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/Hours;)Lorg/joda/time/Hours;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 375
    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Hours;->plus(I)Lorg/joda/time/Hours;

    move-result-object p1

    return-object p1
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .registers 2

    .line 280
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .registers 6

    .line 331
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 332
    new-instance v2, Lorg/joda/time/Duration;

    const-wide/32 v3, 0x36ee80

    mul-long v0, v0, v3

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .registers 3

    .line 296
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .registers 3

    .line 313
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public toStandardWeeks()Lorg/joda/time/Weeks;
    .registers 2

    .line 264
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    div-int/lit16 v0, v0, 0xa8

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
