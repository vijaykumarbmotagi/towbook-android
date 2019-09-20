.class final Lcom/google/android/libraries/places/internal/la;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/lb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->c:Z

    if-eqz v0, :cond_a

    .line 47
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_19

    .line 49
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 50
    new-instance v0, Lcom/google/android/libraries/places/internal/le;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/le;-><init>()V

    goto :goto_1e

    .line 51
    :cond_19
    new-instance v0, Lcom/google/android/libraries/places/internal/lc;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/lc;-><init>()V

    :goto_1e
    sput-object v0, Lcom/google/android/libraries/places/internal/la;->a:Lcom/google/android/libraries/places/internal/lb;

    return-void
.end method

.method static a(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method static a(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method static a(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/CharSequence;)I
    .registers 9

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    .line 17
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    move v3, v0

    :goto_14
    if-ge v2, v0, :cond_58

    .line 20
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_26

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 24
    :cond_26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2a
    if-ge v2, v4, :cond_57

    .line 27
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_38

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_54

    :cond_38
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_54

    const v7, 0xdfff

    if-gt v6, v7, :cond_54

    .line 32
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_52

    .line 34
    new-instance p0, Lcom/google/android/libraries/places/internal/ld;

    invoke-direct {p0, v2, v4}, Lcom/google/android/libraries/places/internal/ld;-><init>(II)V

    throw p0

    :cond_52
    add-int/lit8 v2, v2, 0x1

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_57
    add-int/2addr v3, v1

    :cond_58
    if-ge v3, v0, :cond_7b

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v3

    const-wide v2, 0x100000000L

    add-long v4, v0, v2

    const/16 v0, 0x36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UTF-8 length does not fit in int: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    return v3
.end method

.method static a(Ljava/lang/CharSequence;[BII)I
    .registers 5

    .line 44
    sget-object v0, Lcom/google/android/libraries/places/internal/la;->a:Lcom/google/android/libraries/places/internal/lb;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/lb;->a(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method public static a([BII)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/la;->a:Lcom/google/android/libraries/places/internal/lb;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/lb;->a([BII)Z

    move-result p0

    return p0
.end method

.method static b([BII)I
    .registers 4

    add-int/lit8 v0, p1, -0x1

    .line 8
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    packed-switch p2, :pswitch_data_26

    .line 13
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :pswitch_e
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/google/android/libraries/places/internal/la;->a(III)I

    move-result p0

    return p0

    .line 11
    :pswitch_19
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/la;->a(II)I

    move-result p0

    return p0

    .line 10
    :pswitch_20
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/la;->a(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method
