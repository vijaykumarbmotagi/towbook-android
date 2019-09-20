.class Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fraction"
.end annotation


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected iMaxDigits:I

.field protected iMinDigits:I


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;II)V
    .registers 4

    .line 1783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1784
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    const/16 p1, 0x12

    if-le p3, p1, :cond_a

    goto :goto_b

    :cond_a
    move p1, p3

    .line 1789
    :goto_b
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1790
    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return-void
.end method

.method private getFractionData(JLorg/joda/time/DateTimeField;)[J
    .registers 11

    .line 1871
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    .line 1873
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    :goto_a
    packed-switch p3, :pswitch_data_7e

    const-wide/16 v2, 0x1

    goto :goto_65

    :pswitch_10
    const-wide v2, 0xde0b6b3a7640000L

    goto :goto_65

    :pswitch_16
    const-wide v2, 0x16345785d8a0000L

    goto :goto_65

    :pswitch_1c
    const-wide v2, 0x2386f26fc10000L

    goto :goto_65

    :pswitch_22
    const-wide v2, 0x38d7ea4c68000L

    goto :goto_65

    :pswitch_28
    const-wide v2, 0x5af3107a4000L

    goto :goto_65

    :pswitch_2e
    const-wide v2, 0x9184e72a000L

    goto :goto_65

    :pswitch_34
    const-wide v2, 0xe8d4a51000L

    goto :goto_65

    :pswitch_3a
    const-wide v2, 0x174876e800L

    goto :goto_65

    :pswitch_40
    const-wide v2, 0x2540be400L

    goto :goto_65

    :pswitch_46
    const-wide/32 v2, 0x3b9aca00

    goto :goto_65

    :pswitch_4a
    const-wide/32 v2, 0x5f5e100

    goto :goto_65

    :pswitch_4e
    const-wide/32 v2, 0x989680

    goto :goto_65

    :pswitch_52
    const-wide/32 v2, 0xf4240

    goto :goto_65

    :pswitch_56
    const-wide/32 v2, 0x186a0

    goto :goto_65

    :pswitch_5a
    const-wide/16 v2, 0x2710

    goto :goto_65

    :pswitch_5d
    const-wide/16 v2, 0x3e8

    goto :goto_65

    :pswitch_60
    const-wide/16 v2, 0x64

    goto :goto_65

    :pswitch_63
    const-wide/16 v2, 0xa

    :goto_65
    mul-long v4, v0, v2

    .line 1896
    div-long/2addr v4, v2

    cmp-long v6, v4, v0

    if-nez v6, :cond_7a

    const/4 v4, 0x2

    .line 1903
    new-array v4, v4, [J

    const/4 v5, 0x0

    mul-long p1, p1, v2

    div-long/2addr p1, v0

    aput-wide p1, v4, v5

    const/4 p1, 0x1

    int-to-long p2, p3

    aput-wide p2, v4, p1

    return-object v4

    :cond_7a
    add-int/lit8 p3, p3, -0x1

    goto :goto_a

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .line 1907
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public estimatePrintedLength()I
    .registers 2

    .line 1794
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .registers 21

    move-object/from16 v0, p0

    .line 1911
    iget-object v2, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual/range {p1 .. p1}, Lorg/joda/time/format/DateTimeParserBucket;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v2

    .line 1913
    iget v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1916
    invoke-virtual {v2}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long v4, v4, v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_27
    if-ge v10, v3, :cond_46

    add-int v11, p3, v10

    move-object/from16 v12, p2

    .line 1919
    invoke-interface {v12, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v13, 0x30

    if-lt v11, v13, :cond_46

    const/16 v13, 0x39

    if-le v11, v13, :cond_3a

    goto :goto_46

    :cond_3a
    add-int/lit8 v10, v10, 0x1

    .line 1924
    div-long/2addr v4, v6

    add-int/lit8 v11, v11, -0x30

    int-to-long v13, v11

    mul-long v13, v13, v4

    add-long v15, v8, v13

    move-wide v8, v15

    goto :goto_27

    .line 1929
    :cond_46
    :goto_46
    div-long/2addr v8, v6

    if-nez v10, :cond_4c

    xor-int/lit8 v1, p3, -0x1

    return v1

    :cond_4c
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v8, v3

    if-lez v5, :cond_56

    xor-int/lit8 v1, p3, -0x1

    return v1

    .line 1939
    :cond_56
    new-instance v3, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    sget-object v5, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    invoke-virtual {v2}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    long-to-int v2, v8

    move-object/from16 v4, p1

    .line 1944
    invoke-virtual {v4, v3, v2}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeField;I)V

    add-int v1, p3, v10

    return v1
.end method

.method protected printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1813
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p4

    .line 1814
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1818
    :try_start_8
    invoke-virtual {p4, p2, p3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_74

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/16 v1, 0x30

    if-nez v3, :cond_1d

    :goto_14
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 1826
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_14

    :cond_1c
    return-void

    .line 1832
    :cond_1d
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->getFractionData(JLorg/joda/time/DateTimeField;)[J

    move-result-object p2

    const/4 p3, 0x0

    .line 1833
    aget-wide v2, p2, p3

    const/4 p4, 0x1

    .line 1834
    aget-wide v4, p2, p4

    long-to-int p2, v4

    const-wide/32 v4, 0x7fffffff

    and-long v6, v2, v4

    cmp-long v4, v6, v2

    if-nez v4, :cond_37

    long-to-int v2, v2

    .line 1837
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 1839
    :cond_37
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1842
    :goto_3b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3f
    if-ge v3, p2, :cond_49

    .line 1845
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_3f

    :cond_49
    if-ge v0, p2, :cond_70

    :goto_4b
    if-ge v0, p2, :cond_5d

    if-le v3, p4, :cond_5d

    add-int/lit8 v4, v3, -0x1

    .line 1853
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_58

    goto :goto_5d

    :cond_58
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_4b

    .line 1859
    :cond_5d
    :goto_5d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v3, p2, :cond_70

    :goto_63
    if-ge p3, v3, :cond_6f

    .line 1861
    invoke-virtual {v2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, 0x1

    goto :goto_63

    :cond_6f
    return-void

    .line 1867
    :cond_70
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 1820
    :catch_74
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1800
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1806
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p2, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 1807
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    return-void
.end method
