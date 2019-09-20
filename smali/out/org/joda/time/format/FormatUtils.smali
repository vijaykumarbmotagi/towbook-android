.class public Lorg/joda/time/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field private static final LOG_10:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/Appendable;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x30

    if-gez p1, :cond_1f

    const/16 v2, 0x2d

    .line 70
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_11

    neg-int p1, p1

    goto :goto_1f

    :cond_11
    :goto_11
    if-le p2, v0, :cond_19

    .line 75
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_19
    const-string p1, "2147483648"

    .line 77
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    if-ge p1, v0, :cond_30

    :goto_22
    if-le p2, v2, :cond_2a

    .line 83
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_22

    :cond_2a
    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 85
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_7c

    :cond_30
    const/16 v0, 0x64

    if-ge p1, v0, :cond_57

    :goto_34
    const/4 v0, 0x2

    if-le p2, v0, :cond_3d

    .line 88
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_34

    :cond_3d
    add-int/lit8 p2, p1, 0x1

    const v0, 0xcccccc

    mul-int p2, p2, v0

    shr-int/lit8 p2, p2, 0x1b

    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    .line 94
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shl-int/lit8 v0, p2, 0x3

    sub-int/2addr p1, v0

    shl-int/2addr p2, v2

    sub-int/2addr p1, p2

    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 96
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_7c

    :cond_57
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_5d

    const/4 v0, 0x3

    goto :goto_6d

    :cond_5d
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_63

    const/4 v0, 0x4

    goto :goto_6d

    :cond_63
    int-to-double v3, p1

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    add-int/2addr v0, v2

    :goto_6d
    if-le p2, v0, :cond_75

    .line 107
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_6d

    .line 109
    :cond_75
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_7c
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/Appendable;JI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_a

    .line 145
    invoke-static {p0, v0, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    goto :goto_53

    :cond_a
    const/16 v0, 0x13

    if-gt p3, v0, :cond_16

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_53

    :cond_16
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/16 v1, 0x30

    if-gez v3, :cond_39

    const/16 v2, 0x2d

    .line 150
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2b

    neg-long p1, p1

    goto :goto_39

    :cond_2b
    :goto_2b
    if-le p3, v0, :cond_33

    .line 155
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2b

    :cond_33
    const-string p1, "9223372036854775808"

    .line 157
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_39
    :goto_39
    long-to-double v2, p1

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v4, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_44
    if-le p3, v0, :cond_4c

    .line 163
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, -0x1

    goto :goto_44

    .line 165
    :cond_4c
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_53
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/StringBuffer;II)V
    .registers 3

    .line 51
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/StringBuffer;JI)V
    .registers 4

    .line 125
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;JI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_13

    const/16 v0, 0x2d

    .line 292
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_d

    neg-int p1, p1

    goto :goto_13

    :cond_d
    const-string p1, "2147483648"

    .line 296
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_13
    :goto_13
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1e

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 301
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_45

    :cond_1e
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3e

    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x1b

    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 307
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 309
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_45

    .line 311
    :cond_3e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_45
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/Appendable;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_a

    .line 342
    invoke-static {p0, v0}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V

    goto :goto_11

    .line 344
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_11
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/StringBuffer;I)V
    .registers 2

    .line 275
    :try_start_0
    invoke-static {p0, p1}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/StringBuffer;J)V
    .registers 3

    .line 325
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static calculateDigitCount(J)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v0, 0x1

    if-gez v2, :cond_17

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p0, v1

    if-eqz v3, :cond_14

    neg-long p0, p0

    .line 409
    invoke-static {p0, p1}, Lorg/joda/time/format/FormatUtils;->calculateDigitCount(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_14
    const/16 p0, 0x14

    return p0

    :cond_17
    const-wide/16 v1, 0xa

    cmp-long v3, p0, v1

    if-gez v3, :cond_1e

    goto :goto_40

    :cond_1e
    const-wide/16 v1, 0x64

    cmp-long v3, p0, v1

    if-gez v3, :cond_26

    const/4 v0, 0x2

    goto :goto_40

    :cond_26
    const-wide/16 v1, 0x3e8

    cmp-long v3, p0, v1

    if-gez v3, :cond_2e

    const/4 v0, 0x3

    goto :goto_40

    :cond_2e
    const-wide/16 v1, 0x2710

    cmp-long v3, p0, v1

    if-gez v3, :cond_36

    const/4 v0, 0x4

    goto :goto_40

    :cond_36
    long-to-double p0, p0

    .line 414
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v1, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr p0, v1

    double-to-int p0, p0

    add-int/2addr v0, p0

    :goto_40
    return v0
.end method

.method static createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    add-int/lit8 v0, p1, 0x20

    .line 430
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x3

    if-gt v1, v2, :cond_c

    move-object v0, p0

    goto :goto_17

    :cond_c
    const/4 v1, 0x0

    .line 433
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    const/16 v1, 0x22

    if-gtz p1, :cond_30

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid format: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 440
    :cond_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p1, p0, :cond_4d

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid format: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is too short"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 444
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is malformed at \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseTwoDigits(Ljava/lang/CharSequence;I)I
    .registers 4

    .line 423
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x1

    .line 424
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/2addr v1, p0

    add-int/lit8 v1, v1, -0x30

    return v1
.end method

.method public static writePaddedInteger(Ljava/io/Writer;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x30

    if-gez p1, :cond_1f

    const/16 v2, 0x2d

    .line 183
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_11

    neg-int p1, p1

    goto :goto_1f

    :cond_11
    :goto_11
    if-le p2, v0, :cond_19

    .line 188
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_19
    const-string p1, "2147483648"

    .line 190
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    if-ge p1, v0, :cond_2f

    :goto_22
    if-le p2, v2, :cond_2a

    .line 196
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_22

    :cond_2a
    add-int/2addr p1, v1

    .line 198
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_79

    :cond_2f
    const/16 v0, 0x64

    if-ge p1, v0, :cond_54

    :goto_33
    const/4 v0, 0x2

    if-le p2, v0, :cond_3c

    .line 201
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_33

    :cond_3c
    add-int/lit8 p2, p1, 0x1

    const v0, 0xcccccc

    mul-int p2, p2, v0

    shr-int/lit8 p2, p2, 0x1b

    add-int/lit8 v0, p2, 0x30

    .line 207
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    shl-int/lit8 v0, p2, 0x3

    sub-int/2addr p1, v0

    shl-int/2addr p2, v2

    sub-int/2addr p1, p2

    add-int/2addr p1, v1

    .line 209
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_79

    :cond_54
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_5a

    const/4 v0, 0x3

    goto :goto_6a

    :cond_5a
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_60

    const/4 v0, 0x4

    goto :goto_6a

    :cond_60
    int-to-double v3, p1

    .line 217
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    add-int/2addr v0, v2

    :goto_6a
    if-le p2, v0, :cond_72

    .line 220
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_6a

    .line 222
    :cond_72
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_79
    return-void
.end method

.method public static writePaddedInteger(Ljava/io/Writer;JI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_a

    .line 241
    invoke-static {p0, v0, p3}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    goto :goto_53

    :cond_a
    const/16 v0, 0x13

    if-gt p3, v0, :cond_16

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_53

    :cond_16
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/16 v1, 0x30

    if-gez v3, :cond_39

    const/16 v2, 0x2d

    .line 246
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2b

    neg-long p1, p1

    goto :goto_39

    :cond_2b
    :goto_2b
    if-le p3, v0, :cond_33

    .line 251
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_2b

    :cond_33
    const-string p1, "9223372036854775808"

    .line 253
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_39
    :goto_39
    long-to-double v2, p1

    .line 257
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v4, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_44
    if-le p3, v0, :cond_4c

    .line 259
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_44

    .line 261
    :cond_4c
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method public static writeUnpaddedInteger(Ljava/io/Writer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_13

    const/16 v0, 0x2d

    .line 360
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_d

    neg-int p1, p1

    goto :goto_13

    :cond_d
    const-string p1, "2147483648"

    .line 364
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_13
    :goto_13
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1d

    add-int/lit8 p1, p1, 0x30

    .line 369
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_42

    :cond_1d
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3b

    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x1b

    add-int/lit8 v1, v0, 0x30

    .line 375
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x30

    .line 377
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_42

    .line 379
    :cond_3b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method public static writeUnpaddedInteger(Ljava/io/Writer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_a

    .line 396
    invoke-static {p0, v0}, Lorg/joda/time/format/FormatUtils;->writeUnpaddedInteger(Ljava/io/Writer;I)V

    goto :goto_11

    .line 398
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_11
    return-void
.end method
