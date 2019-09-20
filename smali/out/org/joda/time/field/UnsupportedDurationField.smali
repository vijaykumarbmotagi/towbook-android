.class public final Lorg/joda/time/field/UnsupportedDurationField;
.super Lorg/joda/time/DurationField;
.source "UnsupportedDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static cCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/joda/time/DurationFieldType;",
            "Lorg/joda/time/field/UnsupportedDurationField;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x58aee92d77607f2dL


# instance fields
.field private final iType:Lorg/joda/time/DurationFieldType;


# direct methods
.method private constructor <init>(Lorg/joda/time/DurationFieldType;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;
    .registers 4

    const-class v0, Lorg/joda/time/field/UnsupportedDurationField;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    if-nez v1, :cond_11

    .line 50
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    const/4 v1, 0x0

    goto :goto_19

    .line 53
    :cond_11
    sget-object v1, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/field/UnsupportedDurationField;

    :goto_19
    if-nez v1, :cond_25

    .line 56
    new-instance v1, Lorg/joda/time/field/UnsupportedDurationField;

    invoke-direct {v1, p0}, Lorg/joda/time/field/UnsupportedDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 57
    sget-object v2, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 59
    :cond_25
    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception p0

    .line 48
    monitor-exit v0

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method private unsupported()Ljava/lang/UnsupportedOperationException;
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .registers 4

    .line 182
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public add(JJ)J
    .registers 5

    .line 191
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/UnsupportedDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 240
    :cond_4
    instance-of v1, p1, Lorg/joda/time/field/UnsupportedDurationField;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 241
    check-cast p1, Lorg/joda/time/field/UnsupportedDurationField;

    .line 242
    invoke-virtual {p1}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 243
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    .line 245
    :cond_1a
    invoke-virtual {p1}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_27
    return v2
.end method

.method public getDifference(JJ)I
    .registers 5

    .line 200
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 5

    .line 209
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(I)J
    .registers 2

    .line 146
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(IJ)J
    .registers 4

    .line 164
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(J)J
    .registers 3

    .line 155
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(JJ)J
    .registers 5

    .line 173
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lorg/joda/time/DurationFieldType;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public getUnitMillis()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValue(J)I
    .registers 3

    .line 110
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getValue(JJ)I
    .registers 5

    .line 128
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getValueAsLong(J)J
    .registers 3

    .line 119
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getValueAsLong(JJ)J
    .registers 5

    .line 137
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public hashCode()I
    .registers 2

    .line 256
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPrecise()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedDurationField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
