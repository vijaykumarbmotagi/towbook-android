.class abstract Lorg/joda/time/chrono/BasicChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "BasicChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/BasicChronology$YearInfo;,
        Lorg/joda/time/chrono/BasicChronology$HalfdayField;
    }
.end annotation


# static fields
.field private static final CACHE_MASK:I = 0x3ff

.field private static final CACHE_SIZE:I = 0x400

.field private static final cClockhourOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cClockhourOfHalfdayField:Lorg/joda/time/DateTimeField;

.field private static final cDaysField:Lorg/joda/time/DurationField;

.field private static final cHalfdayOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cHalfdaysField:Lorg/joda/time/DurationField;

.field private static final cHourOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

.field private static final cHoursField:Lorg/joda/time/DurationField;

.field private static final cMillisField:Lorg/joda/time/DurationField;

.field private static final cMillisOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cMillisOfSecondField:Lorg/joda/time/DateTimeField;

.field private static final cMinuteOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cMinuteOfHourField:Lorg/joda/time/DateTimeField;

.field private static final cMinutesField:Lorg/joda/time/DurationField;

.field private static final cSecondOfDayField:Lorg/joda/time/DateTimeField;

.field private static final cSecondOfMinuteField:Lorg/joda/time/DateTimeField;

.field private static final cSecondsField:Lorg/joda/time/DurationField;

.field private static final cWeeksField:Lorg/joda/time/DurationField;

.field private static final serialVersionUID:J = 0x72f3ed8da0b42f1fL


# instance fields
.field private final iMinDaysInFirstWeek:I

.field private final transient iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 76
    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    .line 77
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    .line 79
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    .line 81
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    .line 83
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x2932e00

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    .line 85
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    .line 87
    new-instance v0, Lorg/joda/time/field/PreciseDurationField;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cWeeksField:Lorg/joda/time/DurationField;

    .line 90
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfSecondField:Lorg/joda/time/DateTimeField;

    .line 93
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfDayField:Lorg/joda/time/DateTimeField;

    .line 96
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfMinuteField:Lorg/joda/time/DateTimeField;

    .line 99
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfDayField:Lorg/joda/time/DateTimeField;

    .line 102
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfHourField:Lorg/joda/time/DateTimeField;

    .line 105
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfDayField:Lorg/joda/time/DateTimeField;

    .line 108
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfDayField:Lorg/joda/time/DateTimeField;

    .line 111
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    sget-object v3, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

    .line 114
    new-instance v0, Lorg/joda/time/field/ZeroIsMaxDateTimeField;

    sget-object v1, Lorg/joda/time/chrono/BasicChronology;->cHourOfDayField:Lorg/joda/time/DateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfDayField:Lorg/joda/time/DateTimeField;

    .line 117
    new-instance v0, Lorg/joda/time/field/ZeroIsMaxDateTimeField;

    sget-object v1, Lorg/joda/time/chrono/BasicChronology;->cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfHalfdayField:Lorg/joda/time/DateTimeField;

    .line 120
    new-instance v0, Lorg/joda/time/chrono/BasicChronology$HalfdayField;

    invoke-direct {v0}, Lorg/joda/time/chrono/BasicChronology$HalfdayField;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdayOfDayField:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .registers 5

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    const/16 p1, 0x400

    .line 126
    new-array p1, p1, [Lorg/joda/time/chrono/BasicChronology$YearInfo;

    iput-object p1, p0, Lorg/joda/time/chrono/BasicChronology;->iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    const/4 p1, 0x1

    if-lt p3, p1, :cond_13

    const/4 p1, 0x7

    if-le p3, p1, :cond_10

    goto :goto_13

    .line 138
    :cond_10
    iput p3, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    return-void

    .line 134
    :cond_13
    :goto_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid min days in first week: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lorg/joda/time/DurationField;
    .registers 1

    .line 50
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method static synthetic access$100()Lorg/joda/time/DurationField;
    .registers 1

    .line 50
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method private getDateTimeMillis0(IIII)J
    .registers 10

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDateMidnightMillis(III)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    add-int/lit8 p3, p3, 0x1

    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDateMidnightMillis(III)J

    move-result-wide v0

    const p1, 0x5265c00

    sub-int/2addr p4, p1

    :cond_14
    int-to-long p1, p4

    add-long p3, v0, p1

    const-wide/16 p1, 0x0

    cmp-long v4, p3, p1

    if-gez v4, :cond_27

    cmp-long v4, v0, p1

    if-lez v4, :cond_27

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    :cond_27
    cmp-long v4, p3, p1

    if-lez v4, :cond_30

    cmp-long v4, v0, p1

    if-gez v4, :cond_30

    return-wide v2

    :cond_30
    return-wide p3
.end method

.method private getYearInfo(I)Lorg/joda/time/chrono/BasicChronology$YearInfo;
    .registers 6

    .line 782
    iget-object v0, p0, Lorg/joda/time/chrono/BasicChronology;->iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    and-int/lit16 v1, p1, 0x3ff

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    .line 783
    iget v2, v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;->iYear:I

    if-eq v2, p1, :cond_19

    .line 784
    :cond_c
    new-instance v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->calculateFirstDayOfYearMillis(I)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lorg/joda/time/chrono/BasicChronology$YearInfo;-><init>(IJ)V

    .line 785
    iget-object p1, p0, Lorg/joda/time/chrono/BasicChronology;->iYearInfoCache:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    aput-object v0, p1, v1

    :cond_19
    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .registers 8

    .line 269
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millis:Lorg/joda/time/DurationField;

    .line 270
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondsField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->seconds:Lorg/joda/time/DurationField;

    .line 271
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinutesField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minutes:Lorg/joda/time/DurationField;

    .line 272
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHoursField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hours:Lorg/joda/time/DurationField;

    .line 273
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdaysField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdays:Lorg/joda/time/DurationField;

    .line 274
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cDaysField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    .line 275
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cWeeksField:Lorg/joda/time/DurationField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    .line 277
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfSecondField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 278
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMillisOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 279
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfMinuteField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 280
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cSecondOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 281
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfHourField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 282
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cMinuteOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 283
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 284
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHourOfHalfdayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 285
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 286
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cClockhourOfHalfdayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 287
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->cHalfdayOfDayField:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    .line 292
    new-instance v0, Lorg/joda/time/chrono/BasicYearDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/BasicYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 293
    new-instance v0, Lorg/joda/time/chrono/GJYearOfEraDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, v1, p0}, Lorg/joda/time/chrono/GJYearOfEraDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 296
    new-instance v0, Lorg/joda/time/field/OffsetDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;I)V

    .line 298
    new-instance v1, Lorg/joda/time/field/DividedDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/field/DividedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 300
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    .line 302
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    check-cast v1, Lorg/joda/time/field/DividedDateTimeField;

    invoke-direct {v0, v1}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/field/DividedDateTimeField;)V

    .line 304
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 307
    new-instance v0, Lorg/joda/time/chrono/GJEraDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/GJEraDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 308
    new-instance v0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    .line 309
    new-instance v0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    .line 310
    new-instance v0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 311
    new-instance v0, Lorg/joda/time/chrono/GJMonthOfYearDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/GJMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 312
    new-instance v0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 313
    new-instance v0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 315
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    iget-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 317
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 322
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    .line 323
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 324
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    return-void
.end method

.method abstract calculateFirstDayOfYearMillis(I)J
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2e

    .line 220
    check-cast p1, Lorg/joda/time/chrono/BasicChronology;

    .line 221
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_2c

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0

    :cond_2e
    return v1
.end method

.method abstract getApproxMillisAtEpochDividedByTwo()J
.end method

.method abstract getAverageMillisPerMonth()J
.end method

.method abstract getAverageMillisPerYear()J
.end method

.method abstract getAverageMillisPerYearDividedByTwo()J
.end method

.method getDateMidnightMillis(III)J
    .registers 8

    .line 630
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, p1, v1, v3}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 631
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth(I)I

    move-result v1

    invoke-static {v0, p2, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 632
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v1

    invoke-static {v0, p3, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v3, p2, v0

    if-gez v3, :cond_3f

    .line 635
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v3

    add-int/2addr v3, v2

    if-ne p1, v3, :cond_3f

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    :cond_3f
    cmp-long v3, p2, v0

    if-lez v3, :cond_4d

    .line 637
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_4d

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_4d
    return-wide p2
.end method

.method public getDateTimeMillis(IIII)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    return-wide p1

    .line 158
    :cond_b
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x5265bff

    invoke-static {v0, p4, v1, v2}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getDateTimeMillis0(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDateTimeMillis(IIIIIII)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_12

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 170
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p1

    return-wide p1

    .line 174
    :cond_12
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-static {v0, p4, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 175
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, p5, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 176
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {v0, p6, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    .line 177
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v0, p7, v2, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V

    const v0, 0x36ee80

    mul-int p4, p4, v0

    const v0, 0xea60

    mul-int p5, p5, v0

    add-int/2addr p4, p5

    mul-int/lit16 p6, p6, 0x3e8

    add-int/2addr p4, p6

    add-int/2addr p4, p7

    int-to-long p4, p4

    long-to-int p4, p4

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getDateTimeMillis0(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method getDayOfMonth(J)I
    .registers 5

    .line 475
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 476
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v1

    .line 477
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result p1

    return p1
.end method

.method getDayOfMonth(JI)I
    .registers 5

    .line 485
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v0

    .line 486
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result p1

    return p1
.end method

.method getDayOfMonth(JII)I
    .registers 9

    .line 495
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 496
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide p3

    add-long v2, v0, p3

    sub-long p3, p1, v2

    const-wide/32 p1, 0x5265c00

    .line 497
    div-long/2addr p3, p1

    long-to-int p1, p3

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getDayOfWeek(J)I
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x7

    const-wide/32 v3, 0x5265c00

    if-ltz v2, :cond_d

    .line 562
    div-long/2addr p1, v3

    goto :goto_23

    :cond_d
    const-wide/32 v5, 0x5265bff

    sub-long v7, p1, v5

    .line 564
    div-long p1, v7, v3

    const-wide/16 v2, -0x3

    cmp-long v4, p1, v2

    if-gez v4, :cond_23

    const-wide/16 v2, 0x4

    add-long v4, p1, v2

    .line 567
    rem-long/2addr v4, v0

    long-to-int p1, v4

    add-int/lit8 p1, p1, 0x7

    return p1

    :cond_23
    :goto_23
    const-wide/16 v2, 0x3

    add-long v4, p1, v2

    .line 571
    rem-long/2addr v4, v0

    long-to-int p1, v4

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getDayOfYear(J)I
    .registers 4

    .line 504
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfYear(JI)I

    move-result p1

    return p1
.end method

.method getDayOfYear(JI)I
    .registers 8

    .line 512
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long v2, p1, v0

    const-wide/32 p1, 0x5265c00

    .line 513
    div-long/2addr v2, p1

    long-to-int p1, v2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getDaysInMonthMax()I
    .registers 2

    const/16 v0, 0x1f

    return v0
.end method

.method abstract getDaysInMonthMax(I)I
.end method

.method getDaysInMonthMax(J)I
    .registers 4

    .line 602
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 603
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result p1

    .line 604
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result p1

    return p1
.end method

.method getDaysInMonthMaxForSet(JI)I
    .registers 4

    .line 617
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(J)I

    move-result p1

    return p1
.end method

.method getDaysInYear(I)I
    .registers 2

    .line 344
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x16e

    goto :goto_b

    :cond_9
    const/16 p1, 0x16d

    :goto_b
    return p1
.end method

.method getDaysInYearMax()I
    .registers 2

    const/16 v0, 0x16e

    return v0
.end method

.method abstract getDaysInYearMonth(II)I
.end method

.method getFirstWeekOfYearMillis(I)J
    .registers 9

    .line 366
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 367
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    move-result p1

    .line 369
    iget v2, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    rsub-int/lit8 v2, v2, 0x8

    const-wide/32 v3, 0x5265c00

    if-le p1, v2, :cond_19

    rsub-int/lit8 p1, p1, 0x8

    int-to-long v5, p1

    mul-long v5, v5, v3

    add-long v2, v0, v5

    return-wide v2

    :cond_19
    add-int/lit8 p1, p1, -0x1

    int-to-long v5, p1

    mul-long v5, v5, v3

    sub-long v2, v0, v5

    return-wide v2
.end method

.method getMaxMonth()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method getMaxMonth(I)I
    .registers 2

    .line 726
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth()I

    move-result p1

    return p1
.end method

.method abstract getMaxYear()I
.end method

.method getMillisOfDay(J)I
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/32 v0, 0x5265c00

    if-ltz v2, :cond_c

    .line 579
    rem-long/2addr p1, v0

    long-to-int p1, p1

    return p1

    :cond_c
    const v2, 0x5265bff

    const-wide/16 v3, 0x1

    add-long v5, p1, v3

    .line 581
    rem-long/2addr v5, v0

    long-to-int p1, v5

    add-int/2addr p1, v2

    return p1
.end method

.method abstract getMinYear()I
.end method

.method public getMinimumDaysInFirstWeek()I
    .registers 2

    .line 204
    iget v0, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    return v0
.end method

.method getMonthOfYear(J)I
    .registers 4

    .line 462
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result p1

    return p1
.end method

.method abstract getMonthOfYear(JI)I
.end method

.method abstract getTotalMillisByYearMonth(II)J
.end method

.method getWeekOfWeekyear(J)I
    .registers 4

    .line 535
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(JI)I

    move-result p1

    return p1
.end method

.method getWeekOfWeekyear(JI)I
    .registers 10

    .line 543
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-gez v2, :cond_f

    sub-int/2addr p3, v3

    .line 545
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1

    :cond_f
    add-int/2addr p3, v3

    .line 547
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v4

    cmp-long p3, p1, v4

    if-ltz p3, :cond_19

    return v3

    :cond_19
    const/4 p3, 0x0

    sub-long v4, p1, v0

    const-wide/32 p1, 0x240c8400

    .line 551
    div-long/2addr v4, p1

    long-to-int p1, v4

    add-int/2addr p1, v3

    return p1
.end method

.method getWeeksInYear(I)I
    .registers 8

    .line 354
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x1

    .line 355
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v0, 0x240c8400

    .line 356
    div-long/2addr v4, v0

    long-to-int p1, v4

    return p1
.end method

.method getWeekyear(J)I
    .registers 7

    .line 520
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 521
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(JI)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-wide/32 v0, 0x240c8400

    add-long v2, p1, v0

    .line 523
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p1

    return p1

    :cond_15
    const/16 v2, 0x33

    if-le v1, v2, :cond_23

    const-wide/32 v0, 0x48190800

    sub-long v2, p1, v0

    .line 525
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p1

    return p1

    :cond_23
    return v0
.end method

.method getYear(J)I
    .registers 13

    .line 426
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYearDividedByTwo()J

    move-result-wide v0

    const/4 v2, 0x1

    shr-long v2, p1, v2

    .line 427
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getApproxMillisAtEpochDividedByTwo()J

    move-result-wide v4

    add-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-gez v4, :cond_1a

    sub-long v4, v6, v0

    const-wide/16 v6, 0x1

    add-long v8, v4, v6

    move-wide v6, v8

    .line 431
    :cond_1a
    div-long/2addr v6, v0

    long-to-int v0, v6

    .line 433
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v4

    sub-long v6, p1, v4

    cmp-long v1, v6, v2

    if-gez v1, :cond_29

    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_29
    const-wide v1, 0x757b12c00L

    cmp-long v3, v6, v1

    if-ltz v3, :cond_46

    .line 441
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-wide v1, 0x75cd78800L

    :cond_3d
    const/4 v3, 0x0

    add-long v6, v4, v1

    cmp-long v1, v6, p1

    if-gtz v1, :cond_46

    add-int/lit8 v0, v0, 0x1

    :cond_46
    :goto_46
    return v0
.end method

.method abstract getYearDifference(JJ)J
.end method

.method getYearMillis(I)J
    .registers 4

    .line 387
    invoke-direct {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearInfo(I)Lorg/joda/time/chrono/BasicChronology$YearInfo;

    move-result-object p1

    iget-wide v0, p1, Lorg/joda/time/chrono/BasicChronology$YearInfo;->iFirstDayMillis:J

    return-wide v0
.end method

.method getYearMonthDayMillis(III)J
    .registers 8

    .line 412
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 413
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide p1

    add-long v2, v0, p1

    add-int/lit8 p3, p3, -0x1

    int-to-long p1, p3

    const-wide/32 v0, 0x5265c00

    mul-long p1, p1, v0

    add-long v0, v2, p1

    return-wide v0
.end method

.method getYearMonthMillis(II)J
    .registers 7

    .line 398
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 399
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide p1

    add-long v2, v0, p1

    return-wide v2
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .registers 2

    .line 143
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 144
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0

    .line 146
    :cond_b
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isLeapDay(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method abstract isLeapYear(I)Z
.end method

.method abstract setYear(JI)J
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_1d

    add-int/lit8 v2, v2, 0x1

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 255
    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_32
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_45

    const-string v1, ",mdfw="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_45
    const/16 v1, 0x5d

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
