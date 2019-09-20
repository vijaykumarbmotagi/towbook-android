.class Lorg/joda/time/chrono/GJCacheKey;
.super Ljava/lang/Object;
.source "GJCacheKey.java"


# instance fields
.field private final cutoverInstant:Lorg/joda/time/Instant;

.field private final minDaysInFirstWeek:I

.field private final zone:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;Lorg/joda/time/Instant;I)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    .line 31
    iput-object p2, p0, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    .line 32
    iput p3, p0, Lorg/joda/time/chrono/GJCacheKey;->minDaysInFirstWeek:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 53
    :cond_8
    instance-of v2, p1, Lorg/joda/time/chrono/GJCacheKey;

    if-nez v2, :cond_d

    return v1

    .line 56
    :cond_d
    check-cast p1, Lorg/joda/time/chrono/GJCacheKey;

    .line 57
    iget-object v2, p0, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    if-nez v2, :cond_18

    .line 58
    iget-object v2, p1, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    if-eqz v2, :cond_23

    return v1

    .line 61
    :cond_18
    iget-object v2, p0, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    iget-object v3, p1, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {v2, v3}, Lorg/joda/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 64
    :cond_23
    iget v2, p0, Lorg/joda/time/chrono/GJCacheKey;->minDaysInFirstWeek:I

    iget v3, p1, Lorg/joda/time/chrono/GJCacheKey;->minDaysInFirstWeek:I

    if-eq v2, v3, :cond_2a

    return v1

    .line 67
    :cond_2a
    iget-object v2, p0, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    if-nez v2, :cond_33

    .line 68
    iget-object p1, p1, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    if-eqz p1, :cond_3e

    return v1

    .line 71
    :cond_33
    iget-object v2, p0, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    iget-object p1, p1, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    return v1

    :cond_3e
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 39
    iget-object v0, p0, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lorg/joda/time/chrono/GJCacheKey;->cutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->hashCode()I

    move-result v0

    :goto_d
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget v3, p0, Lorg/joda/time/chrono/GJCacheKey;->minDaysInFirstWeek:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v2, p0, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    if-nez v2, :cond_1c

    goto :goto_22

    :cond_1c
    iget-object v1, p0, Lorg/joda/time/chrono/GJCacheKey;->zone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    :goto_22
    add-int/2addr v0, v1

    return v0
.end method
