.class public final Lorg/joda/time/chrono/GregorianChronology;
.super Lorg/joda/time/chrono/BasicGJChronology;
.source "GregorianChronology.java"


# static fields
.field private static final DAYS_0000_TO_1970:I = 0xafaa7

.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/GregorianChronology;

.field private static final MAX_YEAR:I = 0x116bd2d1

.field private static final MILLIS_PER_MONTH:J = 0x9cbebd50L

.field private static final MILLIS_PER_YEAR:J = 0x758f0dfc0L

.field private static final MIN_YEAR:I = -0x116bc36e

.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/GregorianChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0xbf4557381e8943aL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/GregorianChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/GregorianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/GregorianChronology;

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .registers 4

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicGJChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/GregorianChronology;
    .registers 2

    .line 89
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;
    .registers 2

    const/4 v0, 0x4

    .line 99
    invoke-static {p0, v0}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;
    .registers 7

    if-nez p0, :cond_6

    .line 111
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 114
    :cond_6
    sget-object v0, Lorg/joda/time/chrono/GregorianChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/GregorianChronology;

    if-nez v0, :cond_1e

    const/4 v0, 0x7

    .line 116
    new-array v0, v0, [Lorg/joda/time/chrono/GregorianChronology;

    .line 117
    sget-object v1, Lorg/joda/time/chrono/GregorianChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/joda/time/chrono/GregorianChronology;

    if-eqz v1, :cond_1e

    move-object v0, v1

    :cond_1e
    add-int/lit8 v1, p1, -0x1

    .line 123
    :try_start_20
    aget-object v2, v0, v1
    :try_end_22
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_20 .. :try_end_22} :catch_4d

    if-nez v2, :cond_4c

    .line 129
    monitor-enter v0

    .line 130
    :try_start_25
    aget-object v2, v0, v1

    if-nez v2, :cond_47

    .line 132
    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    if-ne p0, v2, :cond_34

    .line 133
    new-instance p0, Lorg/joda/time/chrono/GregorianChronology;

    invoke-direct {p0, v3, v3, p1}, Lorg/joda/time/chrono/GregorianChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    goto :goto_44

    .line 135
    :cond_34
    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v2, p1}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v2

    .line 136
    new-instance v4, Lorg/joda/time/chrono/GregorianChronology;

    invoke-static {v2, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object p0

    invoke-direct {v4, p0, v3, p1}, Lorg/joda/time/chrono/GregorianChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    move-object p0, v4

    .line 139
    :goto_44
    aput-object p0, v0, v1

    move-object v2, p0

    .line 141
    :cond_47
    monitor-exit v0

    goto :goto_4c

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    :goto_4c
    return-object v2

    .line 125
    :catch_4d
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

.method public static getInstanceUTC()Lorg/joda/time/chrono/GregorianChronology;
    .registers 1

    .line 80
    sget-object v0, Lorg/joda/time/chrono/GregorianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/GregorianChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .line 160
    invoke-virtual {p0}, Lorg/joda/time/chrono/GregorianChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x4

    :cond_b
    if-nez v0, :cond_14

    .line 163
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    :goto_f
    invoke-static {v0, v1}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

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
    .registers 3

    .line 196
    invoke-virtual {p0}, Lorg/joda/time/chrono/GregorianChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_9

    .line 197
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    :cond_9
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .registers 8

    .line 207
    div-int/lit8 v0, p1, 0x64

    if-gez p1, :cond_11

    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_11
    shr-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, v0

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 217
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/GregorianChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    add-int/lit8 v1, v1, -0x1

    :cond_1f
    :goto_1f
    int-to-long v2, p1

    const-wide/16 v4, 0x16d

    mul-long v2, v2, v4

    const p1, 0xafaa7

    sub-int/2addr v1, p1

    int-to-long v0, v1

    add-long v4, v2, v0

    const-wide/32 v0, 0x5265c00

    mul-long v4, v4, v0

    return-wide v4
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .registers 3

    const-wide v0, 0x1c4536cce9c0L

    return-wide v0
.end method

.method getAverageMillisPerMonth()J
    .registers 3

    const-wide v0, 0x9cbebd50L

    return-wide v0
.end method

.method getAverageMillisPerYear()J
    .registers 3

    const-wide v0, 0x758f0dfc0L

    return-wide v0
.end method

.method getAverageMillisPerYearDividedByTwo()J
    .registers 3

    const-wide v0, 0x3ac786fe0L

    return-wide v0
.end method

.method getMaxYear()I
    .registers 2

    const v0, 0x116bd2d1

    return v0
.end method

.method getMinYear()I
    .registers 2

    const v0, -0x116bc36e

    return v0
.end method

.method isLeapYear(I)Z
    .registers 3

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_e

    .line 202
    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .registers 2

    .line 176
    sget-object v0, Lorg/joda/time/chrono/GregorianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/GregorianChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .registers 3

    if-nez p1, :cond_6

    .line 187
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 189
    :cond_6
    invoke-virtual {p0}, Lorg/joda/time/chrono/GregorianChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p0

    .line 192
    :cond_d
    invoke-static {p1}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object p1

    return-object p1
.end method
