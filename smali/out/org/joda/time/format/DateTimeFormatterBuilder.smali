.class public Lorg/joda/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;
    }
.end annotation


# instance fields
.field private iElementPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iFormatter:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    return-void
.end method

.method private append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method static appendUnknownString(Ljava/lang/Appendable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_b

    const v0, 0xfffd

    .line 1190
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_b
    return-void
.end method

.method private checkParser(Lorg/joda/time/format/DateTimeParser;)V
    .registers 3

    if-nez p1, :cond_a

    .line 358
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No parser supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method private checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V
    .registers 3

    if-nez p1, :cond_a

    .line 369
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No printer supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method static csCompare(Ljava/lang/CharSequence;ILjava/lang/String;)I
    .registers 9

    .line 2621
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 2622
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2623
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_21

    .line 2625
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, p1, v3

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    sub-int/2addr v1, v0

    return v1
.end method

.method static csStartsWith(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .registers 8

    .line 2634
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2635
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_d

    return v2

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_20

    add-int v3, p1, v1

    .line 2639
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method static csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .registers 8

    .line 2647
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2648
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_d

    return v2

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_34

    add-int v3, p1, v1

    .line 2652
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2653
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_31

    .line 2655
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 2656
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_31

    .line 2657
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_31

    return v2

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_34
    const/4 p0, 0x1

    return p0
.end method

.method private getFormatter()Ljava/lang/Object;
    .registers 5

    .line 1138
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    if-nez v0, :cond_2f

    .line 1141
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 1142
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1143
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_23

    if-eq v1, v2, :cond_21

    if-nez v2, :cond_24

    :cond_21
    move-object v0, v1

    goto :goto_24

    :cond_23
    move-object v0, v2

    :cond_24
    :goto_24
    if-nez v0, :cond_2d

    .line 1155
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;-><init>(Ljava/util/List;)V

    .line 1158
    :cond_2d
    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    :cond_2f
    return-object v0
.end method

.method private isFormatter(Ljava/lang/Object;)Z
    .registers 3

    .line 1185
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isParser(Ljava/lang/Object;)Z
    .registers 3

    .line 1175
    instance-of v0, p1, Lorg/joda/time/format/InternalParser;

    if-eqz v0, :cond_11

    .line 1176
    instance-of v0, p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v0, :cond_f

    .line 1177
    check-cast p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->isParser()Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private isPrinter(Ljava/lang/Object;)Z
    .registers 3

    .line 1165
    instance-of v0, p1, Lorg/joda/time/format/InternalPrinter;

    if-eqz v0, :cond_11

    .line 1166
    instance-of v0, p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v0, :cond_f

    .line 1167
    check-cast p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->isPrinter()Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    if-nez p1, :cond_a

    .line 218
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No formatter supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_a
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getParser0()Lorg/joda/time/format/InternalParser;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 257
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    .line 258
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 238
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    .line 239
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 276
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    .line 277
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    .line 278
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 8

    if-eqz p1, :cond_5

    .line 306
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    :cond_5
    if-nez p2, :cond_f

    .line 309
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parsers supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_f
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 313
    aget-object v0, p2, v1

    if-nez v0, :cond_20

    .line 314
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parser supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_20
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 319
    :cond_2f
    new-array v3, v0, [Lorg/joda/time/format/InternalParser;

    :goto_31
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_4a

    .line 322
    aget-object v4, p2, v1

    invoke-static {v4}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v4

    aput-object v4, v3, v1

    if-nez v4, :cond_47

    .line 323
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incomplete parser array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 326
    :cond_4a
    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p2

    aput-object p2, v3, v1

    .line 328
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object p1

    new-instance p2, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;

    invoke-direct {p2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;-><init>([Lorg/joda/time/format/InternalParser;)V

    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendCenturyOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 945
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendClockhourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 735
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendClockhourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 755
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 775
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 765
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDayOfWeekShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 976
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfWeekText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 965
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 785
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 6

    if-nez p1, :cond_a

    .line 435
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-ge p3, p2, :cond_d

    move p3, p2

    :cond_d
    if-ltz p2, :cond_2a

    if-gtz p3, :cond_12

    goto :goto_2a

    :cond_12
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_20

    .line 444
    new-instance p2, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;

    invoke-direct {p2, p1, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 446
    :cond_20
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 441
    :cond_2a
    :goto_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public appendEraText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 1007
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 5

    if-nez p1, :cond_a

    .line 465
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-gtz p2, :cond_23

    .line 468
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal number of digits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 470
    :cond_23
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedSignedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 5

    if-nez p1, :cond_a

    .line 517
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-gtz p2, :cond_23

    .line 520
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal number of digits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_23
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 5

    if-nez p1, :cond_a

    .line 571
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-ge p3, p2, :cond_d

    move p3, p2

    :cond_d
    if-ltz p2, :cond_1c

    if-gtz p3, :cond_12

    goto :goto_1c

    .line 579
    :cond_12
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;

    invoke-direct {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;-><init>(Lorg/joda/time/DateTimeFieldType;II)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 577
    :cond_1c
    :goto_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public appendFractionOfDay(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 648
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFractionOfHour(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 631
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFractionOfMinute(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 614
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 597
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendHalfdayOfDayText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 955
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->halfdayOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 725
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendHourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 745
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 397
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    if-nez p1, :cond_a

    .line 409
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Literal must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 417
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 415
    :pswitch_1b
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    :pswitch_2a
    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_1b
    .end packed-switch
.end method

.method public appendMillisOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 675
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMillisOfSecond(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 665
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMinuteOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 715
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 705
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 817
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendMonthOfYearShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 997
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMonthOfYearText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 987
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 345
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    const/4 v0, 0x2

    .line 346
    new-array v0, v0, [Lorg/joda/time/format/InternalParser;

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 347
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;

    invoke-direct {v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;-><init>([Lorg/joda/time/format/InternalParser;)V

    invoke-direct {p0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 1132
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->appendPatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    return-object p0
.end method

.method public appendSecondOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 695
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 685
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    if-nez p1, :cond_a

    .line 550
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :cond_a
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 6

    if-nez p1, :cond_a

    .line 487
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-ge p3, p2, :cond_d

    move p3, p2

    :cond_d
    if-ltz p2, :cond_29

    if-gtz p3, :cond_12

    goto :goto_29

    :cond_12
    const/4 v0, 0x1

    if-gt p2, v0, :cond_1f

    .line 496
    new-instance p2, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;

    invoke-direct {p2, p1, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 498
    :cond_1f
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;

    invoke-direct {v1, p1, p3, v0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 493
    :cond_29
    :goto_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    if-nez p1, :cond_a

    .line 535
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 537
    :cond_a
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneId()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 1068
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneName()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1018
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1031
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    .line 1032
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 13

    .line 1118
    new-instance v6, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 12

    .line 1091
    new-instance v6, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTimeZoneShortName()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1043
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneShortName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1057
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    .line 1058
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 5

    .line 909
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 851
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 5

    .line 869
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 795
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 807
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 829
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendYearOfCentury(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 933
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendYearOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 921
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public canBuildFormatter()Z
    .registers 2

    .line 168
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isFormatter(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canBuildParser()Z
    .registers 2

    .line 188
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canBuildPrinter()Z
    .registers 2

    .line 178
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public toFormatter()Lorg/joda/time/format/DateTimeFormatter;
    .registers 5

    .line 103
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 106
    move-object v1, v0

    check-cast v1, Lorg/joda/time/format/InternalPrinter;

    goto :goto_10

    :cond_f
    move-object v1, v2

    .line 109
    :goto_10
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 110
    move-object v2, v0

    check-cast v2, Lorg/joda/time/format/InternalParser;

    :cond_19
    if-nez v1, :cond_26

    if-eqz v2, :cond_1e

    goto :goto_26

    .line 115
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_26
    :goto_26
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)V

    return-object v0
.end method

.method public toParser()Lorg/joda/time/format/DateTimeParser;
    .registers 3

    .line 152
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 154
    check-cast v0, Lorg/joda/time/format/InternalParser;

    .line 155
    invoke-static {v0}, Lorg/joda/time/format/InternalParserDateTimeParser;->of(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    return-object v0

    .line 157
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toPrinter()Lorg/joda/time/format/DateTimePrinter;
    .registers 3

    .line 131
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 133
    check-cast v0, Lorg/joda/time/format/InternalPrinter;

    .line 134
    invoke-static {v0}, Lorg/joda/time/format/InternalPrinterDateTimePrinter;->of(Lorg/joda/time/format/InternalPrinter;)Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    return-object v0

    .line 136
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
