.class public Lorg/joda/time/DateTimeComparator;
.super Ljava/lang/Object;
.source "DateTimeComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final serialVersionUID:J = -0x549e1a37ff9c2abcL


# instance fields
.field private final iLowerLimit:Lorg/joda/time/DateTimeFieldType;

.field private final iUpperLimit:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    .line 56
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    .line 58
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    .line 157
    iput-object p2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    return-void
.end method

.method public static getDateOnlyInstance()Lorg/joda/time/DateTimeComparator;
    .registers 1

    .line 130
    sget-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method public static getInstance()Lorg/joda/time/DateTimeComparator;
    .registers 1

    .line 72
    sget-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;
    .registers 2

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0}, Lorg/joda/time/DateTimeComparator;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;
    .registers 3

    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 107
    sget-object p0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object p0

    .line 109
    :cond_7
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    if-ne p0, v0, :cond_12

    if-nez p1, :cond_12

    .line 110
    sget-object p0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object p0

    :cond_12
    if-nez p0, :cond_1d

    .line 112
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    .line 113
    sget-object p0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object p0

    .line 115
    :cond_1d
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    return-object v0
.end method

.method public static getTimeOnlyInstance()Lorg/joda/time/DateTimeComparator;
    .registers 1

    .line 145
    sget-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .line 226
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-static {v0, v1}, Lorg/joda/time/DateTimeComparator;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    .line 192
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    check-cast v1, Lorg/joda/time/Chronology;

    invoke-interface {v0, p1, v1}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 194
    invoke-interface {v0, p1, v2}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v3

    .line 196
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object p1

    .line 197
    invoke-interface {p1, p2, v1}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 198
    invoke-interface {p1, p2, v0}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide p1

    .line 200
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v1, :cond_3b

    .line 201
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v3

    .line 202
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    .line 205
    :cond_3b
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v1, :cond_53

    .line 206
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v3

    .line 207
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide p1

    :cond_53
    cmp-long v0, v3, p1

    if-gez v0, :cond_59

    const/4 p1, -0x1

    return p1

    :cond_59
    cmp-long v0, v3, p1

    if-lez v0, :cond_5f

    const/4 p1, 0x1

    return p1

    :cond_5f
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 236
    instance-of v0, p1, Lorg/joda/time/DateTimeComparator;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 237
    check-cast p1, Lorg/joda/time/DateTimeComparator;

    .line 238
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getLowerLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getLowerLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_1f
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getUpperLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-eq v0, v2, :cond_37

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getUpperLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_37
    const/4 v1, 0x1

    :cond_38
    return v1

    :cond_39
    return v1
.end method

.method public getLowerLimit()Lorg/joda/time/DateTimeFieldType;
    .registers 2

    .line 167
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getUpperLimit()Lorg/joda/time/DateTimeFieldType;
    .registers 2

    .line 176
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 252
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_d
    iget-object v2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    mul-int/lit8 v1, v1, 0x7b

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 262
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-ne v0, v1, :cond_2a

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeComparator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v1, :cond_17

    const-string v1, ""

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeComparator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v1, :cond_3b

    const-string v1, ""

    goto :goto_41

    :cond_3b
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v1, :cond_50

    const-string v1, ""

    goto :goto_56

    :cond_50
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
