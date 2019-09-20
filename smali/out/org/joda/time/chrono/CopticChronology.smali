.class public final Lorg/joda/time/chrono/CopticChronology;
.super Lorg/joda/time/chrono/BasicFixedMonthChronology;
.source "CopticChronology.java"


# static fields
.field public static final AM:I = 0x1

.field private static final ERA_FIELD:Lorg/joda/time/DateTimeField;

.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

.field private static final MAX_YEAR:I = 0x116bba44

.field private static final MIN_YEAR:I = -0x116bad19

.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/CopticChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x52e3a9d3f80ef876L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;

    const-string v1, "AM"

    invoke-direct {v0, v1}, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .registers 4

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/CopticChronology;
    .registers 2

    .line 97
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;
    .registers 2

    const/4 v0, 0x4

    .line 107
    invoke-static {p0, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;
    .registers 15

    if-nez p0, :cond_6

    .line 119
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 122
    :cond_6
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/CopticChronology;

    if-nez v0, :cond_1e

    const/4 v0, 0x7

    .line 124
    new-array v0, v0, [Lorg/joda/time/chrono/CopticChronology;

    .line 125
    sget-object v1, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/joda/time/chrono/CopticChronology;

    if-eqz v1, :cond_1e

    move-object v0, v1

    :cond_1e
    add-int/lit8 v1, p1, -0x1

    .line 131
    :try_start_20
    aget-object v2, v0, v1
    :try_end_22
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_20 .. :try_end_22} :catch_63

    if-nez v2, :cond_62

    .line 137
    monitor-enter v0

    .line 138
    :try_start_25
    aget-object v2, v0, v1

    if-nez v2, :cond_5d

    .line 140
    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    if-ne p0, v2, :cond_4b

    .line 142
    new-instance p0, Lorg/joda/time/chrono/CopticChronology;

    invoke-direct {p0, v3, v3, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 144
    new-instance v2, Lorg/joda/time/DateTime;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    move-object v12, p0

    invoke-direct/range {v4 .. v12}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 145
    new-instance v4, Lorg/joda/time/chrono/CopticChronology;

    invoke-static {p0, v2, v3}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object p0

    invoke-direct {v4, p0, v3, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    goto :goto_5a

    .line 149
    :cond_4b
    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v2, p1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v2

    .line 150
    new-instance v4, Lorg/joda/time/chrono/CopticChronology;

    invoke-static {v2, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object p0

    invoke-direct {v4, p0, v3, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 153
    :goto_5a
    aput-object v4, v0, v1

    move-object v2, v4

    .line 155
    :cond_5d
    monitor-exit v0

    goto :goto_62

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    :goto_62
    return-object v2

    .line 133
    :catch_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid min days in first week: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/CopticChronology;
    .registers 1

    .line 88
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .line 173
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x4

    :cond_b
    if-nez v0, :cond_14

    .line 176
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    :goto_f
    invoke-static {v0, v1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    goto :goto_19

    :cond_14
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_f

    :goto_19
    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .registers 4

    .line 259
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_30

    .line 260
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 263
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 264
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 266
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 267
    new-instance v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 268
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    :cond_30
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .registers 8

    add-int/lit16 v0, p1, -0x697

    if-gtz v0, :cond_9

    add-int/lit8 p1, v0, 0x3

    shr-int/lit8 p1, p1, 0x2

    goto :goto_15

    :cond_9
    shr-int/lit8 v1, v0, 0x2

    .line 229
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/CopticChronology;->isLeapYear(I)Z

    move-result p1

    if-nez p1, :cond_14

    add-int/lit8 p1, v1, 0x1

    goto :goto_15

    :cond_14
    move p1, v1

    :goto_15
    int-to-long v0, v0

    const-wide/16 v2, 0x16d

    mul-long v0, v0, v2

    int-to-long v2, p1

    add-long v4, v0, v2

    const-wide/32 v0, 0x5265c00

    mul-long v4, v4, v0

    const-wide v0, 0x516e8ec00L

    add-long v2, v4, v0

    return-wide v2
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .registers 3

    const-wide v0, 0x183322244100L

    return-wide v0
.end method

.method getMaxYear()I
    .registers 2

    const v0, 0x116bba44

    return v0
.end method

.method getMinYear()I
    .registers 2

    const v0, -0x116bad19

    return v0
.end method

.method isLeapDay(J)Z
    .registers 5

    .line 211
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .registers 2

    .line 189
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .registers 3

    if-nez p1, :cond_6

    .line 200
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 202
    :cond_6
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p0

    .line 205
    :cond_d
    invoke-static {p1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;

    move-result-object p1

    return-object p1
.end method
