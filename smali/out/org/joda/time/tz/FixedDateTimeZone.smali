.class public final Lorg/joda/time/tz/FixedDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "FixedDateTimeZone.java"


# static fields
.field private static final serialVersionUID:J = -0x30c0b99837523604L


# instance fields
.field private final iNameKey:Ljava/lang/String;

.field private final iStandardOffset:I

.field private final iWallOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 38
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iNameKey:Ljava/lang/String;

    .line 40
    iput p3, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    .line 41
    iput p4, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 91
    :cond_4
    instance-of v1, p1, Lorg/joda/time/tz/FixedDateTimeZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 92
    check-cast p1, Lorg/joda/time/tz/FixedDateTimeZone;

    .line 93
    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    iget v3, p1, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    iget p1, p1, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    if-ne v1, p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :cond_28
    return v2
.end method

.method public getNameKey(J)Ljava/lang/String;
    .registers 3

    .line 45
    iget-object p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iNameKey:Ljava/lang/String;

    return-object p1
.end method

.method public getOffset(J)I
    .registers 3

    .line 49
    iget p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    return p1
.end method

.method public getOffsetFromLocal(J)I
    .registers 3

    .line 57
    iget p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    return p1
.end method

.method public getStandardOffset(J)I
    .registers 3

    .line 53
    iget p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 102
    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isFixed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public nextTransition(J)J
    .registers 3

    return-wide p1
.end method

.method public previousTransition(J)J
    .registers 3

    return-wide p1
.end method

.method public toTimeZone()Ljava/util/TimeZone;
    .registers 4

    .line 77
    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_35

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 81
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 84
    :cond_35
    new-instance v0, Ljava/util/SimpleTimeZone;

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
