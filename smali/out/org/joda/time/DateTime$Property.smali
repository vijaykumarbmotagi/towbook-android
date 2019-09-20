.class public final Lorg/joda/time/DateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60e9c001e8132406L


# instance fields
.field private iField:Lorg/joda/time/DateTimeField;

.field private iInstant:Lorg/joda/time/DateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V
    .registers 3

    .line 2095
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 2096
    iput-object p1, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    .line 2097
    iput-object p2, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2112
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTime;

    iput-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    .line 2113
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/joda/time/DateTimeFieldType;

    .line 2114
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2104
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2105
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/DateTime;
    .registers 6

    .line 2169
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public addToCopy(J)Lorg/joda/time/DateTime;
    .registers 7

    .line 2185
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/DateTime;
    .registers 6

    .line 2203
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .line 2143
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()Lorg/joda/time/DateTime;
    .registers 2

    .line 2152
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .registers 2

    .line 2124
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .registers 3

    .line 2133
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeilingCopy()Lorg/joda/time/DateTime;
    .registers 5

    .line 2337
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundFloorCopy()Lorg/joda/time/DateTime;
    .registers 5

    .line 2328
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfCeilingCopy()Lorg/joda/time/DateTime;
    .registers 5

    .line 2357
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfEvenCopy()Lorg/joda/time/DateTime;
    .registers 5

    .line 2368
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfFloorCopy()Lorg/joda/time/DateTime;
    .registers 5

    .line 2347
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/DateTime;
    .registers 6

    .line 2220
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .registers 3

    const/4 v0, 0x0

    .line 2253
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/DateTime;
    .registers 7

    .line 2237
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lorg/joda/time/DateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/DateTime$Property;->iInstant:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMaximumValue()Lorg/joda/time/DateTime;
    .registers 8

    .line 2281
    :try_start_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime$Property;->setCopy(I)Lorg/joda/time/DateTime;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 2283
    invoke-static {v0}, Lorg/joda/time/IllegalInstantException;->isIllegalInstant(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2285
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v0

    .line 2286
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2

    .line 2288
    :cond_2f
    throw v0
.end method

.method public withMinimumValue()Lorg/joda/time/DateTime;
    .registers 8

    .line 2310
    :try_start_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime$Property;->setCopy(I)Lorg/joda/time/DateTime;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 2312
    invoke-static {v0}, Lorg/joda/time/IllegalInstantException;->isIllegalInstant(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2314
    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    .line 2315
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime$Property;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2

    .line 2317
    :cond_2f
    throw v0
.end method