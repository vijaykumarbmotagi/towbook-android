.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .registers 8

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 57
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_2a

    .line 63
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 67
    :cond_25
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2a
    if-ge v2, v0, :cond_4b

    .line 74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    return v2
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 81
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_36

    .line 84
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_33

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_33

    const v3, 0xdfff

    if-gt v2, v3, :cond_33

    .line 92
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v2, :cond_31

    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/google/common/base/Utf8;->unpairedSurrogateMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    add-int/lit8 p1, p1, 0x1

    :cond_33
    :goto_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_36
    return v1
.end method

.method public static isWellFormed([B)Z
    .registers 3

    .line 113
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result p0

    return p0
.end method

.method public static isWellFormed([BII)Z
    .registers 4

    add-int/2addr p2, p1

    .line 127
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    :goto_5
    if-ge p1, p2, :cond_13

    .line 130
    aget-byte v0, p0, p1

    if-gez v0, :cond_10

    .line 131
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result p0

    return p0

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private static isWellFormedSlowPath([BII)Z
    .registers 9

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    .line 147
    aget-byte p1, p0, p1

    if-gez p1, :cond_60

    const/16 v1, -0x20

    const/16 v2, -0x41

    const/4 v3, 0x0

    if-ge p1, v1, :cond_1f

    if-ne v0, p2, :cond_14

    return v3

    :cond_14
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_1e

    add-int/lit8 p1, v0, 0x1

    .line 156
    aget-byte v0, p0, v0

    if-le v0, v2, :cond_0

    :cond_1e
    return v3

    :cond_1f
    const/16 v4, -0x10

    if-ge p1, v4, :cond_3f

    add-int/lit8 v4, v0, 0x1

    if-lt v4, p2, :cond_28

    return v3

    .line 164
    :cond_28
    aget-byte v0, p0, v0

    if-gt v0, v2, :cond_3e

    const/16 v5, -0x60

    if-ne p1, v1, :cond_32

    if-lt v0, v5, :cond_3e

    :cond_32
    const/16 v1, -0x13

    if-ne p1, v1, :cond_38

    if-le v5, v0, :cond_3e

    :cond_38
    add-int/lit8 p1, v4, 0x1

    .line 165
    aget-byte v0, p0, v4

    if-le v0, v2, :cond_0

    :cond_3e
    return v3

    :cond_3f
    add-int/lit8 v1, v0, 0x2

    if-lt v1, p2, :cond_44

    return v3

    :cond_44
    add-int/lit8 v1, v0, 0x1

    .line 179
    aget-byte v0, p0, v0

    if-gt v0, v2, :cond_5f

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_5f

    add-int/lit8 p1, v1, 0x1

    .line 180
    aget-byte v0, p0, v1

    if-gt v0, v2, :cond_5f

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v2, :cond_60

    :cond_5f
    return v3

    :cond_60
    move p1, v0

    goto :goto_0
.end method

.method private static unpairedSurrogateMsg(I)Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
