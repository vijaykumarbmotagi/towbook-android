.class Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchingParser"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/InternalParser;


# direct methods
.method constructor <init>([Lorg/joda/time/format/InternalParser;)V
    .registers 5

    .line 2543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2544
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2546
    array-length v0, p1

    const/4 v1, 0x0

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    .line 2547
    aget-object v2, p1, v0

    if-eqz v2, :cond_7

    .line 2549
    invoke-interface {v2}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    move-result v2

    if-le v2, v1, :cond_7

    move v1, v2

    goto :goto_7

    .line 2555
    :cond_17
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .line 2559
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .registers 13

    .line 2563
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2564
    array-length v1, v0

    .line 2566
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p3

    move v7, v5

    move-object v6, v4

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_44

    .line 2575
    aget-object v8, v0, v4

    if-nez v8, :cond_18

    if-gt v5, p3, :cond_16

    return p3

    :cond_16
    const/4 v3, 0x1

    goto :goto_44

    .line 2584
    :cond_18
    invoke-interface {v8, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v8

    if-lt v8, p3, :cond_37

    if-le v8, v5, :cond_3e

    .line 2587
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v8, v5, :cond_36

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v1, :cond_36

    aget-object v5, v0, v5

    if-nez v5, :cond_2f

    goto :goto_36

    .line 2595
    :cond_2f
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    move v5, v8

    goto :goto_3e

    :cond_36
    :goto_36
    return v8

    :cond_37
    if-gez v8, :cond_3e

    xor-int/lit8 v8, v8, -0x1

    if-le v8, v7, :cond_3e

    move v7, v8

    .line 2605
    :cond_3e
    :goto_3e
    invoke-virtual {p1, v2}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_44
    :goto_44
    if-gt v5, p3, :cond_4e

    if-ne v5, p3, :cond_4b

    if-eqz v3, :cond_4b

    goto :goto_4e

    :cond_4b
    xor-int/lit8 p1, v7, -0x1

    return p1

    :cond_4e
    :goto_4e
    if-eqz v6, :cond_53

    .line 2611
    invoke-virtual {p1, v6}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    :cond_53
    return v5
.end method
