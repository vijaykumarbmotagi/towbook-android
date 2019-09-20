.class abstract Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;
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
    accessFlags = 0x408
    name = "NumberFormatter"
.end annotation


# instance fields
.field protected final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected final iMaxParsedDigits:I

.field protected final iSigned:Z


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .registers 4

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1295
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    .line 1296
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iSigned:Z

    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .line 1300
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1304
    iget v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_16
    const/16 v8, 0x30

    if-ge v3, v5, :cond_61

    add-int v9, v2, v3

    .line 1310
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-nez v3, :cond_59

    const/16 v12, 0x2b

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_2c

    if-ne v10, v12, :cond_59

    .line 1311
    :cond_2c
    iget-boolean v14, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iSigned:Z

    if-eqz v14, :cond_59

    const/4 v6, 0x1

    if-ne v10, v13, :cond_35

    const/4 v7, 0x1

    goto :goto_36

    :cond_35
    const/4 v7, 0x0

    :goto_36
    if-ne v10, v12, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    add-int/lit8 v10, v3, 0x1

    if-ge v10, v5, :cond_64

    add-int/lit8 v9, v9, 0x1

    .line 1316
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_64

    if-le v9, v11, :cond_49

    goto :goto_64

    :cond_49
    add-int/lit8 v5, v5, 0x1

    .line 1323
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v10

    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_16

    :cond_59
    if-lt v10, v8, :cond_61

    if-le v10, v11, :cond_5e

    goto :goto_61

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_61
    :goto_61
    move v15, v7

    move v7, v6

    move v6, v15

    :cond_64
    :goto_64
    if-nez v3, :cond_69

    xor-int/lit8 v1, v2, -0x1

    return v1

    :cond_69
    const/16 v4, 0x9

    if-lt v3, v4, :cond_8e

    if-eqz v6, :cond_7f

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v3

    .line 1341
    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_b6

    :cond_7f
    add-int/2addr v3, v2

    .line 1343
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v2, v3

    goto :goto_b6

    :cond_8e
    if-nez v7, :cond_95

    if-eqz v6, :cond_93

    goto :goto_95

    :cond_93
    move v4, v2

    goto :goto_97

    :cond_95
    :goto_95
    add-int/lit8 v4, v2, 0x1

    :goto_97
    add-int/lit8 v5, v4, 0x1

    .line 1352
    :try_start_99
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4
    :try_end_9d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_99 .. :try_end_9d} :catch_be

    sub-int/2addr v4, v8

    add-int/2addr v2, v3

    :goto_9f
    if-ge v5, v2, :cond_b1

    shl-int/lit8 v3, v4, 0x3

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    .line 1358
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v8

    move v5, v4

    move v4, v3

    goto :goto_9f

    :cond_b1
    if-eqz v7, :cond_b5

    neg-int v1, v4

    goto :goto_b6

    :cond_b5
    move v1, v4

    .line 1365
    :goto_b6
    iget-object v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v1}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    return v2

    :catch_be
    xor-int/lit8 v1, v2, -0x1

    return v1
.end method
