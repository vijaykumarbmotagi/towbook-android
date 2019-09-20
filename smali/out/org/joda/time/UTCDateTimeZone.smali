.class final Lorg/joda/time/UTCDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "UTCDateTimeZone.java"


# static fields
.field static final INSTANCE:Lorg/joda/time/DateTimeZone;

.field private static final serialVersionUID:J = -0x30c0b99837523604L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lorg/joda/time/UTCDateTimeZone;

    invoke-direct {v0}, Lorg/joda/time/UTCDateTimeZone;-><init>()V

    sput-object v0, Lorg/joda/time/UTCDateTimeZone;->INSTANCE:Lorg/joda/time/DateTimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "UTC"

    .line 30
    invoke-direct {p0, v0}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 75
    instance-of p1, p1, Lorg/joda/time/UTCDateTimeZone;

    return p1
.end method

.method public getNameKey(J)Ljava/lang/String;
    .registers 3

    const-string p1, "UTC"

    return-object p1
.end method

.method public getOffset(J)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getOffsetFromLocal(J)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getStandardOffset(J)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 80
    invoke-virtual {p0}, Lorg/joda/time/UTCDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

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

    .line 70
    new-instance v0, Ljava/util/SimpleTimeZone;

    invoke-virtual {p0}, Lorg/joda/time/UTCDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
