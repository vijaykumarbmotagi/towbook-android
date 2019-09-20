.class final Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
.super Lorg/joda/time/DateTimeZone;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DSTZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x605522c6413e57d1L


# instance fields
.field final iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

.field final iStandardOffset:I

.field final iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V
    .registers 5

    .line 1179
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 1180
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1181
    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1182
    iput-object p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    return-void
.end method

.method private findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
    .registers 10

    .line 1307
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1308
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1309
    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1314
    :try_start_6
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v3

    invoke-virtual {v1, p1, p2, v0, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J

    move-result-wide v3
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-wide v3, p1

    .line 1325
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v5

    invoke-virtual {v2, p1, p2, v0, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J

    move-result-wide v5
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_18} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_18} :catch_19

    move-wide p1, v5

    :catch_19
    cmp-long v0, v3, p1

    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    return-object v1
.end method

.method static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1169
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1289
    :cond_4
    instance-of v1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 1290
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    .line 1291
    invoke-virtual {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    if-ne v1, v3, :cond_34

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v1, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object p1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v1, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0

    :cond_36
    return v2
.end method

.method public getNameKey(J)Ljava/lang/String;
    .registers 3

    .line 1186
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(J)I
    .registers 4

    .line 1190
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getStandardOffset(J)I
    .registers 3

    .line 1194
    iget p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    return p1
.end method

.method public isFixed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nextTransition(J)J
    .registers 11

    .line 1202
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1203
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1204
    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    const-wide/16 v3, 0x0

    .line 1209
    :try_start_8
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v5

    invoke-virtual {v1, p1, p2, v0, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J

    move-result-wide v5
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_18
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_10} :catch_18

    cmp-long v7, p1, v3

    if-lez v7, :cond_19

    cmp-long v7, v5, v3

    if-gez v7, :cond_19

    :catch_18
    move-wide v5, p1

    .line 1224
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v1

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J

    move-result-wide v0
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_21} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_21} :catch_2b

    cmp-long v2, p1, v3

    if-lez v2, :cond_2a

    cmp-long v2, v0, v3

    if-gez v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move-wide p1, v0

    :catch_2b
    :goto_2b
    cmp-long v0, v5, p1

    if-lez v0, :cond_30

    goto :goto_31

    :cond_30
    move-wide p1, v5

    :goto_31
    return-wide p1
.end method

.method public previousTransition(J)J
    .registers 13

    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    .line 1246
    iget p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1247
    iget-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1248
    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    const-wide/16 v5, 0x0

    .line 1253
    :try_start_c
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v7

    invoke-virtual {p2, v2, v3, p1, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->previous(JII)J

    move-result-wide v7
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_1c
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_14} :catch_1c

    cmp-long v9, v2, v5

    if-gez v9, :cond_1d

    cmp-long v9, v7, v5

    if-lez v9, :cond_1d

    :catch_1c
    move-wide v7, v2

    .line 1268
    :cond_1d
    :try_start_1d
    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result p2

    invoke-virtual {v4, v2, v3, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->previous(JII)J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_25} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_25} :catch_2f

    cmp-long v4, v2, v5

    if-gez v4, :cond_2e

    cmp-long v4, p1, v5

    if-lez v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move-wide v2, p1

    :catch_2f
    :goto_2f
    cmp-long p1, v7, v2

    if-lez p1, :cond_34

    move-wide v2, v7

    :cond_34
    const/4 p1, 0x0

    sub-long p1, v2, v0

    return-wide p1
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 1302
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->writeTo(Ljava/io/DataOutput;)V

    .line 1303
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->writeTo(Ljava/io/DataOutput;)V

    return-void
.end method
