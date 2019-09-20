.class Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;
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
    name = "TwoDigitYear"
.end annotation


# instance fields
.field private final iLenientParse:Z

.field private final iPivot:I

.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .registers 4

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1492
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 1493
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1494
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    return-void
.end method

.method private getTwoDigitYear(JLorg/joda/time/Chronology;)I
    .registers 5

    .line 1618
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    if-gez p1, :cond_d

    neg-int p1, p1

    .line 1622
    :cond_d
    rem-int/lit8 p1, p1, 0x64
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    return p1

    :catch_10
    const/4 p1, -0x1

    return p1
.end method

.method private getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I
    .registers 3

    .line 1639
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1641
    :try_start_8
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    if-gez p1, :cond_11

    neg-int p1, p1

    .line 1645
    :cond_11
    rem-int/lit8 p1, p1, 0x64
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_13} :catch_14

    return p1

    :catch_14
    :cond_14
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .line 1498
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    return v0
.end method

.method public estimatePrintedLength()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .registers 16

    .line 1502
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 1504
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    const/16 v2, 0x39

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-nez v1, :cond_19

    .line 1505
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v3, :cond_52

    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_19
    move v1, p3

    const/4 p3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1d
    if-ge p3, v0, :cond_47

    add-int v9, v1, p3

    .line 1514
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-nez p3, :cond_3f

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_2f

    const/16 v11, 0x2b

    if-ne v9, v11, :cond_3f

    :cond_2f
    if-ne v9, v10, :cond_33

    const/4 v8, 0x1

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    :goto_34
    if-eqz v8, :cond_3a

    add-int/lit8 p3, p3, 0x1

    :goto_38
    const/4 v7, 0x1

    goto :goto_1d

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    :cond_3f
    if-lt v9, v5, :cond_47

    if-le v9, v2, :cond_44

    goto :goto_47

    :cond_44
    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_47
    :goto_47
    if-nez p3, :cond_4c

    xor-int/lit8 p1, v1, -0x1

    return p1

    :cond_4c
    if-nez v7, :cond_9f

    if-eq p3, v3, :cond_51

    goto :goto_9f

    :cond_51
    move p3, v1

    .line 1568
    :cond_52
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_9c

    if-le v0, v2, :cond_5b

    goto :goto_9c

    :cond_5b
    sub-int/2addr v0, v5

    add-int/lit8 v1, p3, 0x1

    .line 1573
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-lt p2, v5, :cond_99

    if-le p2, v2, :cond_67

    goto :goto_99

    :cond_67
    shl-int/lit8 v1, v0, 0x3

    shl-int/2addr v0, v6

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    sub-int/2addr v1, v5

    .line 1579
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1581
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 1582
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_7d
    add-int/lit8 p2, p2, -0x32

    const/16 v0, 0x64

    if-ltz p2, :cond_86

    .line 1589
    rem-int/lit8 v2, p2, 0x64

    goto :goto_8b

    :cond_86
    add-int/lit8 v2, p2, 0x1

    .line 1591
    rem-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x63

    :goto_8b
    if-ge v1, v2, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    add-int/2addr p2, v0

    sub-int/2addr p2, v2

    add-int/2addr v1, p2

    .line 1596
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, p2, v1}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    add-int/2addr p3, v3

    return p3

    :cond_99
    :goto_99
    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_9c
    :goto_9c
    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_9f
    :goto_9f
    const/16 v0, 0x9

    if-lt p3, v0, :cond_b1

    add-int/2addr p3, v1

    .line 1542
    invoke-interface {p2, v1, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_d6

    :cond_b1
    if-eqz v8, :cond_b6

    add-int/lit8 v0, v1, 0x1

    goto :goto_b7

    :cond_b6
    move v0, v1

    :goto_b7
    add-int/lit8 v2, v0, 0x1

    .line 1549
    :try_start_b9
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_bd
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b9 .. :try_end_bd} :catch_dc

    sub-int/2addr v0, v5

    add-int/2addr p3, v1

    :goto_bf
    if-ge v2, p3, :cond_d1

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 1555
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    move v2, v0

    move v0, v1

    goto :goto_bf

    :cond_d1
    if-eqz v8, :cond_d5

    neg-int p2, v0

    goto :goto_d6

    :cond_d5
    move p2, v0

    .line 1562
    :goto_d6
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v0, p2}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    return p3

    :catch_dc
    xor-int/lit8 p1, v1, -0x1

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(JLorg/joda/time/Chronology;)I

    move-result p2

    if-gez p2, :cond_10

    const p2, 0xfffd

    .line 1609
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1610
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_14

    :cond_10
    const/4 p3, 0x2

    .line 1612
    invoke-static {p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    :goto_14
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1629
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I

    move-result p2

    if-gez p2, :cond_10

    const p2, 0xfffd

    .line 1631
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1632
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_14

    :cond_10
    const/4 p3, 0x2

    .line 1634
    invoke-static {p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    :goto_14
    return-void
.end method
