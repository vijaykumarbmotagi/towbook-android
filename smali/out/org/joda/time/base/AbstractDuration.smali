.class public abstract Lorg/joda/time/base/AbstractDuration;
.super Ljava/lang/Object;
.source "AbstractDuration.java"

# interfaces
.implements Lorg/joda/time/ReadableDuration;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 38
    check-cast p1, Lorg/joda/time/ReadableDuration;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/ReadableDuration;)I
    .registers 6

    .line 93
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v0

    .line 94
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    cmp-long p1, v0, v2

    if-lez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 157
    :cond_4
    instance-of v1, p1, Lorg/joda/time/ReadableDuration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 160
    :cond_a
    check-cast p1, Lorg/joda/time/ReadableDuration;

    .line 161
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 171
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

.method public isEqual(Lorg/joda/time/ReadableDuration;)Z
    .registers 2

    if-nez p1, :cond_4

    .line 114
    sget-object p1, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 116
    :cond_4
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isLongerThan(Lorg/joda/time/ReadableDuration;)Z
    .registers 2

    if-nez p1, :cond_4

    .line 127
    sget-object p1, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 129
    :cond_4
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isShorterThan(Lorg/joda/time/ReadableDuration;)Z
    .registers 2

    if-nez p1, :cond_4

    .line 140
    sget-object p1, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 142
    :cond_4
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    if-gez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .registers 4

    .line 54
    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .registers 4

    .line 80
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Period;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 189
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v0

    .line 190
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PT"

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 193
    :goto_17
    invoke-static {v2, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/StringBuffer;J)V

    .line 194
    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v3, :cond_22

    const/4 v5, 0x7

    goto :goto_23

    :cond_22
    const/4 v5, 0x6

    :goto_23
    const/4 v6, 0x3

    if-ge v4, v5, :cond_30

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v6, 0x2

    :goto_2a
    const-string v4, "0"

    .line 195
    invoke-virtual {v2, v6, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_30
    const-wide/16 v3, 0x3e8

    .line 197
    div-long v7, v0, v3

    mul-long v7, v7, v3

    cmp-long v3, v7, v0

    if-nez v3, :cond_43

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4d

    .line 200
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v6

    const-string v1, "."

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4d
    const/16 v0, 0x53

    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
