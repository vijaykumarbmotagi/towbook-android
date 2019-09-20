.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;
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
    name = "TimeZoneOffset"
.end annotation


# instance fields
.field private final iMaxFields:I

.field private final iMinFields:I

.field private final iShowSeparators:Z

.field private final iZeroOffsetParseText:Ljava/lang/String;

.field private final iZeroOffsetPrintText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 6

    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1965
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    .line 1966
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    .line 1967
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-lez p4, :cond_19

    if-ge p5, p4, :cond_e

    goto :goto_19

    :cond_e
    const/4 p1, 0x4

    if-le p4, p1, :cond_13

    const/4 p5, 0x4

    goto :goto_14

    :cond_13
    move p1, p4

    .line 1975
    :goto_14
    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    .line 1976
    iput p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    return-void

    .line 1969
    :cond_19
    :goto_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private digitCount(Ljava/lang/CharSequence;II)I
    .registers 7

    .line 2233
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_a
    if-lez p3, :cond_20

    add-int v1, p2, v0

    .line 2236
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_20

    const/16 v2, 0x39

    if-le v1, v2, :cond_1b

    goto :goto_20

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_a

    :cond_20
    :goto_20
    return v0
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .line 2054
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .registers 3

    .line 1980
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 1981
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v1, :cond_f

    .line 1982
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 1984
    :cond_f
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_21

    .line 1985
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_21
    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .registers 15

    .line 2058
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 2061
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x0

    if-eqz v1, :cond_40

    .line 2062
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_29

    if-lez v0, :cond_21

    .line 2065
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_40

    if-ne v1, v2, :cond_21

    goto :goto_40

    .line 2070
    :cond_21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    return p3

    .line 2073
    :cond_29
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-static {p2, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2074
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2075
    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    :cond_40
    :goto_40
    const/4 v1, 0x1

    if-gt v0, v1, :cond_46

    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2086
    :cond_46
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_4e

    const/4 v2, 0x1

    goto :goto_51

    :cond_4e
    if-ne v5, v2, :cond_134

    const/4 v2, 0x0

    :goto_51
    add-int/lit8 v0, v0, -0x1

    add-int/2addr p3, v1

    const/4 v3, 0x2

    .line 2110
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ge v5, v3, :cond_5e

    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2117
    :cond_5e
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v5

    const/16 v6, 0x17

    if-le v5, v6, :cond_69

    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_69
    const v6, 0x36ee80

    mul-int v5, v5, v6

    add-int/lit8 v0, v0, -0x2

    add-int/2addr p3, v3

    if-gtz v0, :cond_75

    goto/16 :goto_129

    .line 2134
    :cond_75
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    const/16 v8, 0x30

    if-ne v6, v7, :cond_85

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p3, p3, 0x1

    const/4 v4, 0x1

    goto :goto_8b

    :cond_85
    if-lt v6, v8, :cond_129

    const/16 v9, 0x39

    if-gt v6, v9, :cond_129

    .line 2147
    :goto_8b
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v6

    if-nez v6, :cond_95

    if-nez v4, :cond_95

    goto/16 :goto_129

    :cond_95
    if-ge v6, v3, :cond_9a

    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2155
    :cond_9a
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v6

    const/16 v9, 0x3b

    if-le v6, v9, :cond_a5

    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_a5
    const v10, 0xea60

    mul-int v6, v6, v10

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 p3, p3, 0x2

    if-gtz v0, :cond_b3

    goto/16 :goto_129

    :cond_b3
    if-eqz v4, :cond_c1

    .line 2170
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_bd

    goto/16 :goto_129

    :cond_bd
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p3, p3, 0x1

    .line 2177
    :cond_c1
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v6

    if-nez v6, :cond_ca

    if-nez v4, :cond_ca

    goto :goto_129

    :cond_ca
    if-ge v6, v3, :cond_cf

    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2185
    :cond_cf
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v6

    if-le v6, v9, :cond_d8

    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_d8
    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 p3, p3, 0x2

    if-gtz v0, :cond_e2

    goto :goto_129

    :cond_e2
    if-eqz v4, :cond_f7

    .line 2200
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_f5

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x2c

    if-eq v0, v6, :cond_f5

    goto :goto_129

    :cond_f5
    add-int/lit8 p3, p3, 0x1

    :cond_f7
    const/4 v0, 0x3

    .line 2207
    invoke-direct {p0, p2, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v0

    if-nez v0, :cond_101

    if-nez v4, :cond_101

    goto :goto_129

    :cond_101
    if-ge v0, v1, :cond_106

    xor-int/lit8 p1, p3, -0x1

    return p1

    :cond_106
    add-int/lit8 v4, p3, 0x1

    .line 2215
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    sub-int/2addr p3, v8

    mul-int/lit8 p3, p3, 0x64

    add-int/2addr v5, p3

    if-le v0, v1, :cond_128

    add-int/lit8 p3, v4, 0x1

    .line 2217
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v5, v1

    if-le v0, v3, :cond_129

    add-int/lit8 v0, p3, 0x1

    .line 2219
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    sub-int/2addr p2, v8

    add-int/2addr v5, p2

    move p3, v0

    goto :goto_129

    :cond_128
    move p3, v4

    :cond_129
    :goto_129
    if-eqz v2, :cond_12c

    neg-int v5, v5

    .line 2224
    :cond_12c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    return p3

    :cond_134
    xor-int/lit8 p1, p3, -0x1

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p6, :cond_3

    return-void

    :cond_3
    if-nez p5, :cond_f

    .line 1996
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 1997
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_f
    if-ltz p5, :cond_17

    const/16 p2, 0x2b

    .line 2001
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1d

    :cond_17
    const/16 p2, 0x2d

    .line 2003
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    neg-int p5, p5

    :goto_1d
    const p2, 0x36ee80

    .line 2007
    div-int p3, p5, p2

    const/4 p4, 0x2

    .line 2008
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2009
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p7, 0x1

    if-ne p6, p7, :cond_2c

    return-void

    :cond_2c
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_36

    .line 2013
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p7, :cond_36

    return-void

    :cond_36
    const p2, 0xea60

    .line 2017
    div-int p3, p5, p2

    .line 2018
    iget-boolean p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    const/16 p7, 0x3a

    if-eqz p6, :cond_44

    .line 2019
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2021
    :cond_44
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2022
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-ne p6, p4, :cond_4c

    return-void

    :cond_4c
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_56

    .line 2026
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_56

    return-void

    .line 2030
    :cond_56
    div-int/lit16 p2, p5, 0x3e8

    .line 2031
    iget-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p3, :cond_5f

    .line 2032
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2034
    :cond_5f
    invoke-static {p1, p2, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2035
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_68

    return-void

    :cond_68
    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p5, p2

    if-nez p5, :cond_72

    .line 2039
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_72

    return-void

    .line 2043
    :cond_72
    iget-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p2, :cond_7b

    const/16 p2, 0x2e

    .line 2044
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2046
    :cond_7b
    invoke-static {p1, p5, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
