.class public Lorg/joda/time/tz/CachedDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "CachedDateTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/CachedDateTimeZone$Info;
    }
.end annotation


# static fields
.field private static final cInfoCacheMask:I

.field private static final serialVersionUID:J = 0x4bf18272d9b4ccbdL


# instance fields
.field private final transient iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private final iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x1

    if-nez v0, :cond_e

    const/16 v0, 0x200

    goto :goto_1e

    .line 50
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_15
    if-lez v0, :cond_1c

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1c
    shl-int v0, v1, v2

    :goto_1e
    sub-int/2addr v0, v1

    .line 61
    sput v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .registers 3

    .line 87
    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 84
    sget v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iput-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 88
    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    return-void
.end method

.method private createInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;
    .registers 10

    const-wide v0, -0x100000000L

    and-long v2, p1, v0

    .line 153
    new-instance p1, Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-object p2, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-direct {p1, p2, v2, v3}, Lorg/joda/time/tz/CachedDateTimeZone$Info;-><init>(Lorg/joda/time/DateTimeZone;J)V

    const-wide v0, 0xffffffffL

    or-long v4, v2, v0

    move-object p2, p1

    .line 158
    :goto_16
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_31

    cmp-long v2, v0, v4

    if-lez v2, :cond_25

    goto :goto_31

    .line 163
    :cond_25
    new-instance v2, Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-object v3, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-direct {v2, v3, v0, v1}, Lorg/joda/time/tz/CachedDateTimeZone$Info;-><init>(Lorg/joda/time/DateTimeZone;J)V

    iput-object v2, p2, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-object p2, v2

    move-wide v2, v0

    goto :goto_16

    :cond_31
    :goto_31
    return-object p1
.end method

.method public static forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;
    .registers 2

    .line 68
    instance-of v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_7

    .line 69
    check-cast p0, Lorg/joda/time/tz/CachedDateTimeZone;

    return-object p0

    .line 71
    :cond_7
    new-instance v0, Lorg/joda/time/tz/CachedDateTimeZone;

    invoke-direct {v0, p0}, Lorg/joda/time/tz/CachedDateTimeZone;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method private getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;
    .registers 10

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    .line 141
    iget-object v2, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 142
    sget v3, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    and-int/2addr v3, v1

    .line 143
    aget-object v4, v2, v3

    if-eqz v4, :cond_14

    .line 144
    iget-wide v5, v4, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    shr-long/2addr v5, v0

    long-to-int v0, v5

    if-eq v0, v1, :cond_1a

    .line 145
    :cond_14
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->createInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v4

    .line 146
    aput-object v4, v2, v3

    :cond_1a
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_4
    instance-of v0, p1, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_13

    .line 131
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    check-cast p1, Lorg/joda/time/tz/CachedDateTimeZone;

    iget-object p1, p1, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getNameKey(J)Ljava/lang/String;
    .registers 4

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getNameKey(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(J)I
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getOffset(J)I

    move-result p1

    return p1
.end method

.method public getStandardOffset(J)I
    .registers 4

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getStandardOffset(J)I

    move-result p1

    return p1
.end method

.method public getUncachedZone()Lorg/joda/time/DateTimeZone;
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 123
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->isFixed()Z

    move-result v0

    return v0
.end method

.method public nextTransition(J)J
    .registers 4

    .line 115
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public previousTransition(J)J
    .registers 4

    .line 119
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide p1

    return-wide p1
.end method
