.class public Lcom/annimon/stream/operator/IntCodePoints;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntCodePoints.java"


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private current:I

.field private final isString:Z

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    .line 15
    instance-of p1, p1, Ljava/lang/String;

    iput-boolean p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->isString:Z

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    return-void
.end method

.method private ensureLength()I
    .registers 3

    .line 44
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->isString:Z

    if-eqz v0, :cond_14

    .line 45
    iget v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 46
    iget-object v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    .line 48
    :cond_11
    iget v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->length:I

    return v0

    .line 50
    :cond_14
    iget-object v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 22
    iget v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    invoke-direct {p0}, Lcom/annimon/stream/operator/IntCodePoints;->ensureLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public nextInt()I
    .registers 5

    .line 27
    invoke-direct {p0}, Lcom/annimon/stream/operator/IntCodePoints;->ensureLength()I

    move-result v0

    .line 28
    iget v1, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    if-lt v1, v0, :cond_e

    .line 29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 32
    :cond_e
    iget-object v1, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    if-ge v2, v0, :cond_3d

    .line 34
    iget-object v0, p0, Lcom/annimon/stream/operator/IntCodePoints;->charSequence:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 36
    iget v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/annimon/stream/operator/IntCodePoints;->current:I

    .line 37
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_3d
    return v1
.end method
