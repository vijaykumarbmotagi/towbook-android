.class Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;
.super Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnpaddedNumber"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .registers 4

    .line 1376
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    return-void
.end method


# virtual methods
.method public estimatePrintedLength()I
    .registers 2

    .line 1380
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iMaxParsedDigits:I

    return v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1387
    :try_start_0
    iget-object p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p5, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p4

    .line 1388
    invoke-virtual {p4, p2, p3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p2

    invoke-static {p1, p2}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    const p2, 0xfffd

    .line 1390
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_14
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1395
    iget-object p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, p3}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result p3

    const v0, 0xfffd

    if-eqz p3, :cond_19

    .line 1397
    :try_start_b
    iget-object p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, p3}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_1c

    .line 1399
    :catch_15
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1c

    .line 1402
    :cond_19
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1c
    return-void
.end method
