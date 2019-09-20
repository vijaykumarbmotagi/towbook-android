.class public final Lcom/google/common/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final ACK:B = 0x6t

.field public static final BEL:B = 0x7t

.field public static final BS:B = 0x8t

.field public static final CAN:B = 0x18t

.field public static final CR:B = 0xdt

.field public static final DC1:B = 0x11t

.field public static final DC2:B = 0x12t

.field public static final DC3:B = 0x13t

.field public static final DC4:B = 0x14t

.field public static final DEL:B = 0x7ft

.field public static final DLE:B = 0x10t

.field public static final EM:B = 0x19t

.field public static final ENQ:B = 0x5t

.field public static final EOT:B = 0x4t

.field public static final ESC:B = 0x1bt

.field public static final ETB:B = 0x17t

.field public static final ETX:B = 0x3t

.field public static final FF:B = 0xct

.field public static final FS:B = 0x1ct

.field public static final GS:B = 0x1dt

.field public static final HT:B = 0x9t

.field public static final LF:B = 0xat

.field public static final MAX:C = '\u007f'

.field public static final MIN:C = '\u0000'

.field public static final NAK:B = 0x15t

.field public static final NL:B = 0xat

.field public static final NUL:B = 0x0t

.field public static final RS:B = 0x1et

.field public static final SI:B = 0xft

.field public static final SO:B = 0xet

.field public static final SOH:B = 0x1t

.field public static final SP:B = 0x20t

.field public static final SPACE:B = 0x20t

.field public static final STX:B = 0x2t

.field public static final SUB:B = 0x1at

.field public static final SYN:B = 0x16t

.field public static final US:B = 0x1ft

.field public static final VT:B = 0xbt

.field public static final XOFF:B = 0x13t

.field public static final XON:B = 0x11t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9

    .line 596
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 600
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    return v3

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_30

    .line 604
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 605
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1e

    goto :goto_2c

    .line 609
    :cond_1e
    invoke-static {v4}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v4

    const/16 v6, 0x1a

    if-ge v4, v6, :cond_2f

    .line 612
    invoke-static {v5}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v5

    if-ne v4, v5, :cond_2f

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2f
    return v3

    :cond_30
    return v1
.end method

.method private static getAlphaIndex(C)I
    .registers 1

    or-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x61

    int-to-char p0, p0

    return p0
.end method

.method public static isLowerCase(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isUpperCase(C)Z
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static toLowerCase(C)C
    .registers 2

    .line 442
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    xor-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_9
    return p0
.end method

.method public static toLowerCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 427
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 428
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 430
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 431
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 432
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 434
    :cond_22
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2f

    .line 405
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_15
    if-ge v1, v0, :cond_27

    .line 408
    aget-char v2, p0, v1

    .line 409
    invoke-static {v2}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_24

    xor-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 410
    aput-char v2, p0, v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 413
    :cond_27
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-object p0
.end method

.method public static toUpperCase(C)C
    .registers 2

    .line 490
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    and-int/lit8 p0, p0, 0x5f

    int-to-char p0, p0

    :cond_9
    return p0
.end method

.method public static toUpperCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 475
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 476
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 479
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 480
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 482
    :cond_22
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2f

    .line 453
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_15
    if-ge v1, v0, :cond_27

    .line 456
    aget-char v2, p0, v1

    .line 457
    invoke-static {v2}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_24

    and-int/lit8 v2, v2, 0x5f

    int-to-char v2, v2

    .line 458
    aput-char v2, p0, v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 461
    :cond_27
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-object p0
.end method

.method public static truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 546
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const-string v3, "maxLength (%s) must be >= length of the truncation indicator (%s)"

    .line 557
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 553
    invoke-static {v2, v3, p1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 559
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, p1, :cond_29

    .line 560
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, p1, :cond_29

    return-object p0

    .line 568
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
